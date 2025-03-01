<?php echo $header; ?>

<?php echo $content_top; ?>
	<div class="breadcrumb product grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>

	<div class="grid_12">
		<div id="notification"></div>
	</div>

	<?php 
		
		if ($column_left) {
			$main = "9 push_3"; 
			$image = "4"; 
			$desc = "5";
			$revs = "";
			$revform = "";
		}
		else if ($column_right) {
			$main = "9"; 
			$image = "4"; 
			$desc = "5";
			$revs = "";
			$revform = "";
		} 
		else { 
			$main = "12"; 
			$image = "6"; 
			$desc = "6";
			$revs = "grid_6 alpha";
			$revform = "grid_6 omega";
			 } 
		?>


	<div class="product_info grid_<?php echo $main; ?>">

		<?php if ($thumb || $images) { ?>
		<div class="grid_<?php echo $image; ?> alpha">
			<?php if ($thumb) { ?>
			<div class="main_image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="fancybox" rel="fancybox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
			<?php } ?>
			<?php if ($images) { ?>
			<div class="additional_images">
				<?php foreach ($images as $image) { ?>
				<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="fancybox" rel="fancybox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
				<?php } ?>
			</div>
			<?php } ?>
		</div>
		<?php } ?>
		<div class="grid_<?php echo $desc; ?> omega">
			<div class="heading">
				<h1><?php echo $heading_title; ?></h1>
			</div>
			
			<?php if ($price) { ?>
			<div class="price">
				<?php echo $text_price; ?>
				<?php if (!$special) { ?>
				<span class="price-normal"><?php echo $price; ?></span>
				<?php } else { ?>
				<span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
				<?php } ?>
				<?php if ($tax) { ?>
				<div class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></div>
				<?php } ?>
				<?php if ($points) { ?>
				<div class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></div>
				<?php } ?>
				<?php if ($discounts) { ?>
				<div class="discount">
					<ul>
					<?php foreach ($discounts as $discount) { ?>
					<li><?php echo sprintf($text_discount, $discount['quantity'], "<span>".$discount['price']."</span>"); ?></li>
					<?php } ?>
					</ul>
				</div>
				<?php } ?>
			</div>
			<?php } ?>

			<div class="description">
				<?php if ($manufacturer) { ?>
				<span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
				<?php } ?>
				<span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
				<span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
				<span><?php echo $text_stock; ?></span> <?php echo $stock; ?>
			</div>

			<?php if ($options) { ?>
			<div class="options">
				<h2><?php echo $text_option; ?></h2>
				<br />
				<?php foreach ($options as $option) { ?>
				<?php if ($option['type'] == 'select') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<select name="option[<?php echo $option['product_option_id']; ?>]">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($option['option_value'] as $option_value) { ?>
						<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
						<?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
						</option>
						<?php } ?>
					</select>
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'radio') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<?php foreach ($option['option_value'] as $option_value) { ?>
					<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
					<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
						<?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
					</label>
					<br />
					<?php } ?>
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'checkbox') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<?php foreach ($option['option_value'] as $option_value) { ?>
					<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
					<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
						<?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
					</label>
					<br />
					<?php } ?>
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'image') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
						<table class="option-image">
							<?php foreach ($option['option_value'] as $option_value) { ?>
							<tr>
								<td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
								<td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
								<td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
										<?php if ($option_value['price']) { ?>
										(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
										<?php } ?>
									</label></td>
							</tr>
							<?php } ?>
						</table>
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'text') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'textarea') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'file') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<a id="button-option-<?php echo $option['product_option_id']; ?>" class="button small"><span><?php echo $button_upload; ?></span></a>
					<input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'date') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'datetime') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
				</div>
				<br />
				<?php } ?>
				<?php if ($option['type'] == 'time') { ?>
				<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
					<?php if ($option['required']) { ?>
					<span class="required">*</span>
					<?php } ?>
					<b><?php echo $option['name']; ?>:</b><br />
					<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
				</div>
				<br />
				<?php } ?>
				<?php } ?>
			</div>
			<?php } ?>
			<div class="cart">

				<div class="add_cart">
					<span class="quantity">
					<?php echo $text_qty; ?>
					<input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
					<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
					</span>
					<a class="button cart large" id="button-cart"><span><?php echo $button_cart; ?></span></a>
					<?php if ($minimum > 1) { ?>
					<div class="minimum"><span class="req_mark">*</span> <?php echo $text_minimum; ?></div>
					<?php } ?>

				</div>
				
				<!-- <div class="text_or"><?php echo $text_or; ?></div> -->

				<div class="more_actions">
					<div class="wishlist"><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a></div>
					<div class="compare"><a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></div>
				</div>

			</div>

					
			<?php if ($review_status) { ?>
			<div class="review">
				<div class="rate">
					<img src="catalog/view/theme/sellegance/images/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />
				</div>
				<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
			</div>
			<?php } ?>

			<div class="share"><!-- AddThis button BEGIN -->
				<div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
				<script type="text/javascript" src="https://s7.addthis.com/js/250/addthis_widget.js"></script> 
				<!-- AddThis button END --> 
			</div>

			<?php if ($tags) { ?>
			<div class="tags"><b><?php echo $text_tags; ?></b>
				<?php foreach ($tags as $tag) { ?>
				<a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a>
				<?php } ?>
			</div>
			<?php } ?>

		</div>

	<div class="clearboth"></div>
	
	<div class="full_info">

		<div id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
			<?php if ($attribute_groups) { ?>
			<a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
			<?php } ?>
			<?php if ($review_status) { ?>
			<a href="#tab-review"><?php echo $tab_review; ?></a>
			<?php } ?>
		</div>

		<div id="tab-description" class="tab-content"><?php echo $description; ?></div>
		
		<?php if ($attribute_groups) { ?>
		<div id="tab-attribute" class="tab-content">
			<table class="attribute">
				<?php foreach ($attribute_groups as $attribute_group) { ?>
				<thead>
					<tr>
						<td colspan="2"><?php echo $attribute_group['name']; ?></td>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
					<tr>
						<td><?php echo $attribute['name']; ?></td>
						<td><?php echo $attribute['text']; ?></td>
					</tr>
					<?php } ?>
				</tbody>
				<?php } ?>
			</table>
		</div>
		<?php } ?>

		<?php if ($review_status) { ?>
		<div id="tab-review" class="tab-content">
			
			<div id="review" class="<?php echo $revs; ?>"></div>
			
			<div id="add_review" class="<?php echo $revform; ?>">

				<div class="contentset center" id="review-title"><div class="inner"><span><?php echo $text_write; ?></span></div></div>

				<div class="reviewform">
					<label><strong><?php echo $entry_name; ?></strong></label><br />
					<input type="text" name="name" value="" size="50" /><br /><br />

					<label><strong><?php echo $entry_review; ?></strong></label>
					<br />
					<textarea name="text" cols="50" rows="8" ></textarea>
					<br />

					<span class="html_note"><?php echo $text_note; ?></span><br /><br />

					<label><strong><?php echo $entry_rating; ?></strong>&nbsp;&nbsp;</label> <span><?php echo $entry_bad; ?></span>&nbsp;
					<input type="radio" name="rating" value="1" />
					<input type="radio" name="rating" value="2" />
					<input type="radio" name="rating" value="3" />
					<input type="radio" name="rating" value="4" />
					<input type="radio" name="rating" value="5" />
					&nbsp;
					<span><?php echo $entry_good; ?></span><br /><br />
					<strong><?php echo $entry_captcha; ?></strong><br />
					<input type="text" name="captcha" id="captcha" value="" size="30" /><br />
					<img src="index.php?route=product/product/captcha" alt="" id="captcha" />
					
					<div class="buttons">
						<a id="button-review" class="button black"><span><?php echo $button_continue; ?></span></a>
					</div>
				</div>
			</div>
		</div>
		<?php } ?>

	</div>

	</div>

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php if ($products) { ?>
	<div id="related_products" class="grid_12">
		<div class="contentset center"><div class="inner"><span><?php echo $tab_related; ?></span></div></div>
		<div class="box-product">
			<?php 
		      $counter = 0;
		      foreach ($products as $product) { 

				if (($counter+4) % 4 == 0) $xclass="alpha";
				elseif (($counter+2) % 4 == 0) $xclass="pairleft";
				elseif (($counter+1) % 4 == 0) $xclass="omega";
				else $xclass="";

		      ?>
		      <div class="grid_box <?php echo $xclass; ?>">
				<?php if ($product['thumb']) { ?>
				<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
				<?php } ?>
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<?php if ($product['price']) { ?>
				<div class="price">
					<?php if (!$product['special']) { ?>
					<?php echo $product['price']; ?>
					<?php } else { ?>
					<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
					<?php } ?>
				</div>
				<?php } ?>
				<?php if ($product['rating']) { ?>
				<div class="rating"><img src="catalog/view/theme/sellegance/images/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
				<?php } ?>
				<div class="cart">
				<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button cart small" ><span><?php echo $button_cart; ?></span></a>
				</div>
				</div>
			<?php $counter++; } ?>
		</div>
	</div>
	<?php } ?>

	<?php echo $content_bottom; ?>

	<div id="backtop" class="grid_12 clearfix"><a href="javascript:void(0)" class="backtotop">top</a> </div>

<script type="text/javascript"><!--
$('.fancybox').fancybox({cyclic: true});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/update',
		type: 'post',
		data: $('.product_info input[type=\'text\'], .product_info input[type=\'hidden\'], .product_info input[type=\'radio\']:checked, .product_info input[type=\'checkbox\']:checked, .product_info select, .product_info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/sellegance/images/close.png" alt="" class="close" /></div>');
				
					$('.warning').fadeIn('slow');
				}
				
				for (i in json['error']) {
					$('#option-' + i).after('<span class="error">' + json['error'][i] + '</span>');
				}
			}	 
						
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/sellegance/images/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart_total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/sellegance/images/loading.gif" class="loading" style="padding-left: 5px;" />');
	},
	onComplete: function(file, json) {
		$('.error').remove();
		
		if (json.success) {
			alert(json.success);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
		}
		
		if (json.error) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
		
	$('#review').load(this.href);
	
	$('#review').slideDown('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/sellegance/images/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review-title').after('<div class="warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review-title').after('<div class="success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<?php echo $footer; ?>