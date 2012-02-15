<?php echo $header; ?>

	<?php echo $content_top; ?>

	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>

	<div class="heading grid_12">
	
		<h1><?php echo $heading_title; ?>
			<?php if ($weight) { ?>
			<span class="weight">(<?php echo $weight; ?>)</span>
			<?php } ?>
		</h1>

		<?php if ($attention) { ?>
		<div class="attention"><?php echo $attention; ?></div>
		<?php } ?>    
		<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

	</div>

	<div class="cart-info grid_10 push_1 clearfix">
		
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="basket">
			
			<table>
				
				<thead>
					<tr>
						<td class="remove"><img src="catalog/view/theme/sellegance/images/trash.png" alt="<?php echo $column_remove; ?>" title="<?php echo $column_remove; ?>" /></td>
						<td class="image"><?php echo $column_image; ?></td>
						<td class="name"><?php echo $column_name; ?></td>
						<td class="model"><?php echo $column_model; ?></td>
						<td class="quantity"><?php echo $column_quantity; ?></td>
						<td class="price"><?php echo $column_price; ?></td>
						<td class="total"><?php echo $column_total; ?></td>
					</tr>
				</thead>

				<tbody>
					
					<?php foreach ($products as $product) { ?>
					<tr>
						<td class="remove"><input type="checkbox" name="remove[]" value="<?php echo $product['key']; ?>" /></td>
						<td class="image">
							<?php if ($product['thumb']) { ?>
							<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
							<?php } ?>
							<div class="subname" style="display:none">
								<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
								<?php if (!$product['stock']) { ?>
								<span class="stock">***</span>
								<?php } ?>
								<div>
									<?php foreach ($product['option'] as $option) { ?>
									- <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
									<?php } ?>
								</div>
								<?php if ($product['reward']) { ?>
								<small><?php echo $product['reward']; ?></small>
								<?php } ?>
							</div>
						</td>
						<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
							<?php if (!$product['stock']) { ?>
							<span class="stock">***</span>
							<?php } ?>
							<div>
								<?php foreach ($product['option'] as $option) { ?>
								- <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
								<?php } ?>
							</div>
							<?php if ($product['reward']) { ?>
							<small><?php echo $product['reward']; ?></small>
							<?php } ?></td>
						<td class="model"><?php echo $product['model']; ?></td>
						<td class="quantity"><input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="3" /></td>
						<td class="price"><?php echo $product['price']; ?></td>
						<td class="total"><?php echo $product['total']; ?></td>
					</tr>
					<?php } ?>

					<?php foreach ($vouchers as $voucher) { ?>
					<tr>
						<td class="remove"><input type="checkbox" name="voucher[]" value="<?php echo $voucher['key']; ?>" /></td>
						<td class="image"></td>
						<td class="name"><?php echo $voucher['description']; ?></td>
						<td class="model"></td>
						<td class="quantity">1</td>
						<td class="price"><?php echo $voucher['amount']; ?></td>
						<td class="total"><?php echo $voucher['amount']; ?></td>
					</tr>
					<?php } ?>

				</tbody>
				
			</table>
			
		</form>


	</div> <!-- .cart-info -->

	<div class="cart-total grid_4 push_7">

		<div class="inner">
		
			<table>

				<?php if ($totals) { $i = 0; $j = count($totals); } ?>

				<?php foreach ($totals as $total) { ?>
					<tr>
						<td colspan="4" class="price"><b><?php echo $total['title']; ?>:</b></td>
						<td class="total <?php if($i == $j-1) echo 'last'; ?>"><?php echo $total['text']; ?></td>
					</tr>
				<?php $i++; } ?>

			</table>

			<div class="buttons clearfix">
				<a href="<?php echo $checkout; ?>" class="button cart large" ><span><?php echo $button_checkout; ?></span></a>	
			</div>
		
		</div>

	</div> <!-- .cart-total -->

	<div class="cart-module grid_6 pull_3">

		<div class="buttons">
			<a onclick="$('#basket').submit();" class="button" id="button-update"><span><?php echo $button_update; ?></span></a>
			<a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_shopping; ?></span></a>
		</div>
		
		<?php foreach ($modules as $module) { ?>
		<?php echo $module; ?>
		<?php } ?>
	</div>

	<?php echo $content_bottom; ?>

	<script type="text/javascript"><!--
	$('.cart-module .cart-heading').bind('click', function() {
		if ($(this).hasClass('active')) {
			$(this).removeClass('active');
		} else {
			$(this).addClass('active');
		}
			
		$(this).parent().find('.cart-content').slideToggle('slow');
	});
	//--></script> 

<?php echo $footer; ?>