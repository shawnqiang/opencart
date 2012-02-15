<?php echo $header; ?>

	<?php echo $content_top; ?>

	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	
	<div class="heading grid_12">
		<h1><?php echo $heading_title; ?></h1>
	</div>

	<?php ($column_left) ? $main = "push_3" : $main=""; ?>

	<div id="maincontent" class="grid_9 <?php echo $main; ?>">

		<p><?php echo $text_description; ?></p>
		<p><?php echo $text_code; ?><br />
			<textarea cols="40" rows="5"><?php echo $code; ?></textarea>
		</p>
		<p><?php echo $text_generator; ?><br />
			<input type="text" name="product" value="" size="30" />
		</p>
		<p><?php echo $text_link; ?><br />
			<textarea name="link" cols="40" rows="5"></textarea>
		</p>
		<div class="buttons">
			<a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
		</div>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>
	
	<?php echo $content_bottom; ?>
	
	<script type="text/javascript"><!--
	$('input[name=\'product\']').autocomplete({
		delay: 0,
		source: function(request, response) {
			$.ajax({
				url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request.term),
				dataType: 'json',
				success: function(json) {		
					response($.map(json, function(item) {
						return {
							label: item.name,
							value: item.link
						}
					}));
				}
			});
			
		},
		select: function(event, ui) {
			$('input[name=\'product\']').attr('value', ui.item.label);
			$('textarea[name=\'link\']').attr('value', ui.item.value);
							
			return false;
		}
	});
	//--></script>
	
<?php echo $footer; ?>