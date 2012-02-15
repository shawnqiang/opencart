$(document).ready(function(){

/* Ajax miniCart */

	$('#cart > .head #cart_total').click(function() {
		$('#cart').addClass('active');
		$('#cart > .content').fadeIn('medium');
		
		$.ajax({
			url: 'index.php?route=checkout/cart/update',
			dataType: 'json',
			success: function(json) {
				if (json['output']) {
					$('#cart .content').html(json['output']);
				}
			}
		});         
		
		$('#cart').bind('mouseleave', function() {
			$('#cart > .content').fadeOut('medium');
			$(this).removeClass('active');
		});
	});


/* Dropdowns for language and currency */

$('.dropd').click(function() {
	$(this).find('.options').slideDown('fast');
	$(this).addClass('active');

	$(this).bind('mouseleave', function() {
		$(this).find('.options').slideUp('fast');
		$(this).removeClass('active');
	});
});

/*`Scroll to top */

$('.backtotop').click(function(){
  $('html, body').animate({scrollTop:0}, 'slow');
});


/*Menu for mobile devices*/

	/*Top Menu*/

	$('h3.menuarrow').click(function () {
	  $(this).toggleClass("active");
	  $('ul.menumob').slideToggle('medium');
	});

	/*Footer Menu*/

	$(".column .header").click(function () {
		$(this).toggleClass("active");  
		$(this).parent().find(".content").slideToggle('medium');
	});

});