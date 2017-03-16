//region DOCUMENT READY
$(document).ready(function () {
  
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

  if(q.length > 0 && window.location.pathname === '/tags/') {
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
