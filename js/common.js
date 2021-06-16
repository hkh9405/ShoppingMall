(function($) {
$(function(){
  
$('.catein').hover(function(){
    $(this).find('> .catebox').fadeIn('fast');
   }, function(){
    $(this).find('> .catebox').fadeOut('fast');
  });

});
 })(jQuery);

