//region DOCUMENT READY
$(document).ready(function () {
  
  /** START TAG SEARCH */
  
  var tagSearchFilters = [];
  
/**
 * @description determine if an array contains one or more items from another array.
 * @param {array} haystack the array to search.
 * @param {array} arr the array providing items to check for in the haystack.
 * @return {boolean} true|false if haystack contains at least one item from arr.
 */
  var findOne = function (haystack, arr) {
      return arr.some(function (v) {
          return haystack.indexOf(v) >= 0;
      });
  };
  
  // a search tag was clicked
  $('#tag-search #tags-list .tag').click(function() {
    
    var clicked = $(this);
    var filter = clicked.text();
    
    if(clicked.hasClass('label-default')) {
      
      clicked.removeClass('label-default');
      clicked.addClass('label-info');
      tagSearchFilters.push(filter);
            
      //
      $('#posts-list .post').each(function() {
        var tags = $(this).find('.tags').text().replace(/^\s+|\s+$/g,'').split(/\s+/);
        if(findOne(tagSearchFilters, tags)) {
          $(this).show();
        } else {
          $(this).hide();
        }
      });
      
    } else {
      
      clicked.addClass('label-default');
      clicked.removeClass('label-info');
      
      var index = tagSearchFilters.indexOf(filter);
      if(index > -1) {
        tagSearchFilters.splice(index, 1);
      }
      
      //
      $('#posts-list .post').each(function() {
        var tags = $(this).find('.tags').text().replace(/^\s+|\s+$/g,'').split(/\s+/);
        if(findOne(tagSearchFilters, tags)) {
          $(this).show();
        } else {
          $(this).hide();
        }
      });
    }
  });
  
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
