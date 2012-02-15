<div>
	<div class="cart-heading"><?php echo $heading_title; ?></div>
	<div class="cart-content" id="voucher">
		<label for="voucher" class="lbl"><?php echo $entry_voucher; ?></label>
		<div class="fld">
			<input type="text" name="voucher" value="<?php echo $voucher; ?>" size="30" />
			&nbsp;<a id="button-voucher" class="button black small"><span><?php echo $button_voucher; ?></span></a>
		</div>
	</div>
</div>

<script type="text/javascript"><!--
$('#button-voucher').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=total/voucher/calculate',
		data: $('#voucher :input'),
		dataType: 'json',		
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-voucher').attr('disabled', true);
			$('#button-voucher').after('<span class="wait">&nbsp;<img src="catalog/view/theme/sellegance/images/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-voucher').attr('disabled', false);
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