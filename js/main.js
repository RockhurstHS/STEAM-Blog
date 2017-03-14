//region DOCUMENT READY
$(document).ready(function () {
  
  /* BEGIN INTERACTIVE GSHEET IFRAMES */
  
  // http://codepen.io/jwclark/pen/WpOWBR
  /* fork of http://codepen.io/chriscoyier/pen/VvRoWy */
  var master = $('.gsheet-interactive-frame').first();
  var replicas = $('.gsheet-interactive-frame');
  var masterHeight = master.outerHeight();
  var masterWidth = master.outerWidth();
  var gsheetRow = $('.gsheet-interactive-row');

  function doResize(event, ui) {

    var scale, origin;

    scale = Math.min(
      $('.gsheet-interactive-column').width() / masterWidth,    
      $('.gsheet-interactive-column').height() / masterHeight
    );

    replicas.css({
      transform: "translate(-50%, -50%) " + "scale(" + scale + ")"
    });

    // doesn't work - try this: http://stackoverflow.com/questions/8883503/getting-the-size-of-a-css3-transformed-element
    var frameHeight = $('.gsheet-interactive-frame').height();
    $('.gsheet-interactive-column').height(frameHeight);
  }

  var starterData = { 
    size: {
      width:  $('.gsheet-interactive-column').width(),
      height: $('.gsheet-interactive-column').height()
    }
  }

  doResize(gsheetRow, starterData);
  
  /* END INTERACTIVE GSHEET IFRAMES */
  
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
