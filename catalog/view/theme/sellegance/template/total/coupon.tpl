<div>
	<div class="cart-heading"><?php echo $heading_title; ?></div>
	<div class="cart-content" id="coupon">
		<label for="coupon" class="lbl"><?php echo $entry_coupon; ?></label>
		<div class="fld">
			<input type="text" name="coupon" value="<?php echo $coupon; ?>" size="30" />
			&nbsp;<a id="button-coupon" class="button black small"><span><?php echo $button_coupon; ?></span></a>
		</div>
	</div>
</div>
	
<script type="text/javascript"><!--
$('#button-coupon').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=total/coupon/calculate',
		data: $('#coupon :input'),
		dataType: 'json',		
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-coupon').attr('disabled', true);
			$('#button-coupon').after('<span class="wait">&nbsp;<img src="catalog/view/theme/sellegance/images/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-coupon').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			if (json['error']) {
				$('#basket').before('<div class="warning">' + json['error'] + '<img src="catalog/view/theme/sellegance/images/close.png" alt="" class="close" /></div>');
			}
			
			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script> 