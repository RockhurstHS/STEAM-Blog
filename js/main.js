$(document).ready(function () {

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

});
