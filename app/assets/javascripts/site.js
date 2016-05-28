function initializeRaty() {
  $('#product-image').elevateZoom();
  $('.rating').raty({ path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
}

$(document).on('ready page:load', function(){
  initializeRaty();
});
