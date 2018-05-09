//region DOCUMENT READY
$(document).ready(function () {
  
    /* CALENDAR EVENTS */

    //VARIABLES
    var KEY = 'AIzaSyCTofNNUQKU4eBPZoJ4HcVsKN3fT_owPcE'; //get from jwclark@rockhursths.edu account, google developer api console
    var MINIMUM_EVENTS = 4;
    var DAYS_TO_SEARCH_FORWARD = 40;

    var CALENDARS = [ //these are the IDs of each calendar, found under calendar settings in a Google account's Calendar system
         'rockhursths.edu_9a0buoguac15bb5t8a3cnf96fg@group.calendar.google.com' // STEAM Events - https://calendar.google.com/calendar/embed?src=rockhursths.edu_9a0buoguac15bb5t8a3cnf96fg%40group.calendar.google.com&ctz=America%2FChicago
    ];

    var feedsProcessedCount = 0;
    var dailyEventsCount = 0;
    var entries = [];

    //putting today in the moment(today) constructor isn't necessary, but it allows for convenient testing such as
    //var today = moment('2013-11-24').format();
    //then the entire application shifts and operates around today as november 24th as in the example.
    var today = moment();
    var startMin = today.format('YYYY-MM-DD');
    var startMax = moment(today).add('days', DAYS_TO_SEARCH_FORWARD).format('YYYY-MM-DD');

    function getCalendarFeeds() {
        for (var i = 0; i < CALENDARS.length; i++) {
            var https = 'https://www.googleapis.com/calendar/v3/calendars/' + CALENDARS[i] + '/events?singleEvents=true&orderBy=startTime&sortOrder=ascending&timeMin=' + moment(startMin).format() + '&timeMax=' + moment(startMax).format() + '&key=' + KEY;
            console.log(https);
            $.ajax({
                url: https,
                dataType: 'jsonp',
                type: "GET",
                success: function (response) {
                    console.log(response);
                    processFeed(response);
                }
            });
        }
    }

    function processFeed(feed) {
        feedsProcessedCount++;

        //why? google automatically injects the max-results=25 parameter into the calendar query
        //so, if results = 46, you still only get 25 entries and the for loop hits null results
        //alternate: ?alt=json&max-results=100&orderby=starttime&sortorder=ascending&singleevents=true
        var numResults = feed.items.length;

        if (numResults > 25)
            numResults = 25;

        for (var i = 0; i < numResults; i++) { //process every entry in the feed
            processEntry(feed.items[i]);
        }
        if (feedsProcessedCount === CALENDARS.length && numResults > 0) { //the ajax requests are complete, sort and print
            printEntries();
        }
    }
    
    function processEntry(entry) {
        var e = getEntryBase(entry);
        entries.push(e);
    }
    
    //i had to change the right side of these equations for v3
    function getEntryBase(entry) {
        var e = {};
        e.id = entry.id;
        e.title = entry.summary;
        e.location = entry.location;
        e.description = entry.description;
        e.link = entry.htmlLink;
        var start = entry.start;
        var end = entry.end;
        if (start.hasOwnProperty('date')) {
            e.startTime = entry.start.date;
        } else {
            e.startTime = entry.start.dateTime; //assumption: has dateTime
        }
        if (end.hasOwnProperty('date')) {
            e.endTime = entry.end.date;
        } else {
            e.endTime = entry.end.dateTime; //assumption: has dateTime
        }
        return e;
    }
    
    function printEntries() {
        sortEntries(entries);
        var count = 0;
        //now is between the entry's start of day and end of day
        while (moment(today.endOf('day')).diff(moment(entries[count].startTime)) > 0) {
            writeHtml(entries[count++]);
        }
        if (count < MINIMUM_EVENTS) { //minimum count not satisifed, pull from the extra entries
            var deficit = MINIMUM_EVENTS - count;
            var length = entries.length - count;
            while (deficit-- > 0 && length-- !== 0) {
                writeHtml(entries[count++]);
            }
        }
        if(entries.length > 0) {
            $('#calendar-events-panel').show();
        }
    }
    
    function sortEntries(entries) {
        entries.sort(function (a, b) {
            var x = a.startTime;
            var y = b.startTime;
            return ((x < y) ? -1 : ((x > y) ? 1 : 0));
        });
    }
    
    function writeHtml(entry) {
        //this function writes HTML to the DOM on a per calendar entry basis
        //modify the object in the processEntry() method before pulling its properties here
        var html = '<tr><td><strong><a href="' + entry.link + '" target="_blank">' + entry.title + '</a></strong>'
            + '<br /><span style="color: #666">' + getTimeHtml(entry.startTime, entry.endTime) + '</span>';
        if (entry.description && entry.description.length > 0) { //has description and description length
            html += '<br />' + entry.description;
        }
        if (entry.location && entry.location.length > 0)
            html += '<br /><span style="font-color:black;">Location: </span><a href="https://maps.google.com/maps?q=' + entry.location + '&hl=en" target="_blank">' + entry.location + '</a>';
        html += '</td></tr><tr><td>&nbsp;</td></tr>';

        $('#calendar-events-list').append(html);
    }
    
    //start and finish will have one of two formats:
    //2013-11-16T13:32:22-06:00         ISO Format
    //2013-11-16                        YYYY-MM-DD
    function getTimeHtml(start, finish) {
        //check if ISO
        var sIndexT = start.indexOf('T');
        var fIndexT = finish.indexOf('T');
        var sMoment = moment(start);
        var fMoment = moment(finish);

        if (fMoment.diff(sMoment, 'days') === 1 && sIndexT === -1) { //single all day event, no times
            return sMoment.format('YYYY-MM-DD');
        } else if (fMoment.diff(sMoment, 'days') === 0 && sIndexT !== -1) { //single day, span of time
            if (sMoment.format('h:mm a') === fMoment.format('h:mm a')) //start and finish time are the same, no need to show twice (reader will treat this as event with start time only)
                return sMoment.format('YYYY-MM-DD') + ', ' + sMoment.format('h:mm a');
            else
                return sMoment.format('YYYY-MM-DD') + ', ' + sMoment.format('h:mm a') + ' to ' + fMoment.format('h:mm a');
        } else if (sMoment.format('YYYY-MM-DD') !== fMoment.format('YYYY-MM-DD') && sIndexT !== -1) { //span across dates + start and finish time
            return sMoment.format('YYYY-MM-DD') + ', ' + sMoment.format('h:mm a') + ' to ' + fMoment.format('YYYY-MM-DD') + ', ' + fMoment.format('h:mm a');
        } else //a span of 24-hour events, midnight to midnight (like School & Offices closed over a three day period)
            return sMoment.format('YYYY-MM-DD') + ' to ' + fMoment.format('YYYY-MM-DD');
    }
    
    //start and finish will have one of two formats:
    //2013-11-16T13:32:22-06:00         ISO Format
    //2013-11-16                        YYYY-MM-DD
    function getTimeHtml(start, finish) {
        var sIndexT = start.indexOf('T');
        var fIndexT = finish.indexOf('T');
        var sMoment = moment(start);
        var fMoment = moment(finish);
        var sDate = moment(start).format('dddd, MMMM D');
        var fDate = moment(finish).format('dddd, MMMM D');
        var sTime = moment(start).format('h:mm a');
        var fTime = moment(finish).format('h:mm a');

        //process the start time
        if (sIndexT !== -1) { //process as ISO Format
            sTimeString = moment(start).format('h:mm a');
        }
        //process the finish time
        if (fIndexT !== -1) { //process as ISO Format
            fTimeString = moment(finish).format('h:mm a');
        }

        var diff = fMoment.diff(sMoment, 'days'); //difference in days between start and finish
        if (diff === 1 && sIndexT === -1) { //single all day event, no times
            return sDate;
        } else if (diff === 0 && sIndexT !== -1) { //single day, span of time
            if (sTime === fTime) //start and finish time are the same, no need to show twice (reader will treat this as event with start time only)
              return sDate + ', ' + evalTBD(sTime);
            else
                return sDate + ', ' + sTime + ' to ' + fTime;
        } else if (sDate !== fDate && sIndexT !== -1) { //span across dates + start and finish time
            return sDate + ', ' + sTime + ' to ' + fDate + ', ' + fTime;
        } else //a span of 24-hour events, midnight to midnight (like School & Offices closed over a three day period)
            return sDate + ' to ' + fDate;
    }
    
    /** prints 5:55 pm as TBD */
    function evalTBD(time) {
        if (time === '5:55 pm')
            return 'TBD';
        else
            return time;
    }
    
    function log(msg) {
        if (window.console && console.log) {
            console.log(msg);
        }
    }
  
    getCalendarFeeds();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /* UTILITY */
  
  // gets query string params by name from url
  // http://stackoverflow.com/a/901144/1161948
  function getParameterByName(name, url) {
    if (!url) {
      url = window.location.href;
    }
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
      results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
  }
  
  /* END UTILITY */
  
  /* START TAG SEARCH */
  
  // the list of tags to filter by
  var tagSearchFilters = [];
  
  // if array one contains any element from array two
  // http://stackoverflow.com/a/25926600/1161948
  var findOne = function (haystack, arr) {
      return arr.some(function (v) {
          return haystack.indexOf(v) >= 0;
      });
  };
  
  // returns an array of tags from any given post
  function getTags(post) {
    var tags = [];
    post.find('.tags').children('span.label').each(function() {
      tags.push($(this).text());
    });
    return tags;
  }
  
  // updates UI and the array of filters to be applied
  function toggleFilters(tag) {
    if(tag.hasClass('label-default')) {
      tag.removeClass('label-default');
      tag.addClass('label-info');
      tagSearchFilters.push(tag.text());
    } else {
      tag.addClass('label-default');
      tag.removeClass('label-info');
      var index = tagSearchFilters.indexOf(tag.text());
      if(index > -1) {
        tagSearchFilters.splice(index, 1);
      }
    }    
  }

  // display posts with tags in the tagSearchFilters array
  function filterPosts(tag) {
    $('#posts-list .post').each(function() {
      var post = $(this);
      var tags = getTags(post);
      if(findOne(tagSearchFilters, tags)) {
        post.show();
      } else {
        post.hide();
      }
    });
  }
  
  // a search tag was clicked
  $('#tag-search #tags-list .tag').click(function() {
    var tag = $(this);
    toggleFilters(tag);
    filterPosts(tag);
  });
  
  // a post tag was clicked
  $('.post .tags .label').click(function() {
    window.location = '/tags/?q=' + $(this).text();
  });
  
  var q = getParameterByName('q');

  if(q && q.length > 0 && window.location.pathname === '/tags/') {
    var tag = $('#tags-list .label:contains("' + q + '")');
    toggleFilters(tag);
    filterPosts(tag);
  }
  
  /** END TAG SEARCH */
  
  $('.indicator .media').click(function() {
    var href = $(this).find('a').first().attr('href');
    window.location = href;
  });
  
  //wrap each image in magnific anchor
  $('.flex-wrapper img').each(function() {
    var source = this.src;
    var desc = $(this).attr('alt');
    if(desc !== 'undefined') {
      $(this).wrap('<a class="image-popup-vertical-fit" href="' + this.src + '" title="' + desc + '"></a>');
    } else {
      $(this).wrap('<a class="image-popup-vertical-fit" href="' + this.src + '"></a>');
    }
  });

  //activate magnific anchors
  //http://codepen.io/dimsemenov/pen/qGIlh
  $('a.image-popup-vertical-fit').magnificPopup({
    type: 'image',
    closeBtnInside: false,
    closeOnContentClick: true,

    image: {
      verticalFit: true,
      titleSrc: function (item) {
        var title = item.el.attr('title');
        if(title !== 'undefined') {
          return title + ' &middot; <a class="image-source-link" href="' + item.src + '" target="_blank">open original</a>';
        } else {
          return '<a class="image-source-link" href="' + item.src + '" target="_blank">open original</a>';
        }
      }
    }
  });
  
  $('table.indicators tr').click(function() {
    window.location = $(this).data("href");
  });
  
  // opens all offsite links in a new tab
  // https://stackoverflow.com/a/4425214/1161948
  $(document.links).filter(function() {
    return this.hostname != window.location.hostname;
  }).attr('target', '_blank');

});
//endregion

//region TRELLO STUFF
var trelloAppKey = '3ab362e6686c0f8e35e695ad94d4dcdc';

var login = function() {
  Trello.authorize({
    type: 'popup',
    success: setup
  });
};

var logout = function() {
  Trello.deauthorize();
  updateLogin();
};

var setup = function() {
  var isLoggedIn = updateLogin();
  $('#report-options').toggle(isLoggedIn);
  Trello.members.get("me", function(member){
    $('#member-name').text(member.fullName);
  });

  Trello.get("organizations/555f512347e116f185d698a4/boards", function(boards) {
    boards.forEach(function(board) {
      console.log(board);
    });
    $('#num-boards').text(boards.length);
  });
}

var updateLogin = function() {
  var isLoggedIn = Trello.authorized();
  $("#login-link").toggle(!isLoggedIn);
  $("#logout-link").toggle(isLoggedIn);
  return isLoggedIn;
};

$('#login-link').click(login);

$('#logout-link').click(logout);

//endregion
