<?php echo $header; ?>

	<?php echo $content_top; ?>

	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>

	<div class="heading grid_12">
		<h1><?php echo $heading_title; ?></h1>
		<div id="notification"></div>
	</div>

	<div id="maincontent" class="grid_12">

		<?php if ($products) { ?>

		<div class="contentset center"><div class="inner"><span><?php echo $text_product; ?></span></div></div>
		
			<div id="compare-wrapper">
				<table class="compare-info" cellpadding="0" cellspacing="0">
					<thead>
						<tr>
							<th><?php echo $text_name; ?></th>
							<?php foreach ($products as $product) { ?>
							<th><a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a></th>
							<?php } ?>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><?php echo $text_image; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php if ($products[$product['product_id']]['thumb']) { ?>
								<img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" />
								<?php } ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_price; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php if ($products[$product['product_id']]['price']) { ?>
								<?php if (!$products[$product['product_id']]['special']) { ?>
								<?php echo $products[$product['product_id']]['price']; ?>
								<?php } else { ?>
								<span class="price-old"><?php echo $products[$product['product_id']]['price']; ?></span> <span class="price-new"><?php echo $products[$product['product_id']]['special']; ?></span>
								<?php } ?>
								<?php } ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_model; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $products[$product['product_id']]['model']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_manufacturer; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_availability; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $products[$product['product_id']]['availability']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_rating; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><img src="catalog/view/theme/sellegance/images/stars-<?php echo $products[$product['product_id']]['rating']; ?>.png" alt="<?php echo $products[$product['product_id']]['reviews']; ?>" /><br />
								<?php echo $products[$product['product_id']]['reviews']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_summary; ?></td>
							<?php foreach ($products as $product) { ?>
							<td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_weight; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $products[$product['product_id']]['weight']; ?></td>
							<?php } ?>
						</tr>
						<tr>
							<td><?php echo $text_dimension; ?></td>
							<?php foreach ($products as $product) { ?>
							<td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
							<?php } ?>
						</tr>
					<?php foreach ($attribute_groups as $attribute_group) { ?>
						<tr>
							<td>&nbsp;</td>
							<td colspan="<?php echo count($products); ?>">
								<div class="contentset center"><div class="inner"><span><?php echo $attribute_group['name']; ?></span></div></div>
							</td>
						</tr>
					<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
						<tr>
							<td><?php echo $attribute['name']; ?></td>
							<?php foreach ($products as $product) { ?>
								<?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
								<td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
								<?php } else { ?>
								<td></td>
								<?php } ?>
							<?php } ?>
						</tr>
					<?php } ?>
					<?php } ?>
					<tr>
						<td>&nbsp;</td>
						<?php foreach ($products as $product) { ?>
						<td><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button cart small"><span><?php echo $button_cart; ?></span></a></td>
						<?php } ?>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<?php foreach ($products as $product) { ?>
						<td><form id="remove_item" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
								<input type="hidden" name="remove" value="<?php echo $product['product_id']; ?>" />
								<div class="remove"><a onclick="$('#remove_item').submit();" ><?php echo $text_remove; ?></a></div>
							</form></td>
						<?php } ?>
					</tr>
					</tbody>
				</table>
			</div>
		


		<div class="buttons">
			<a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a>
		</div>

		<?php } else { ?>

		<div class="content"><?php echo $text_empty; ?></div>
		<div class="buttons">
			<a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a>
		</div>
		
		<?php } ?>

	</div> <!-- #maincontent -->

	<?php //echo $content_bottom; ?>

	<script type="text/javascript" src="catalog/view/theme/sellegance/js/jquery.fixedheadertable.js"></script>

	<script type="text/javascript"><!--
	$(document).ready(function(){
		$('html.range_0 .compare_info').fixedHeaderTable({ 
			footer: false, 
			cloneHeadToFoot: false, 
			fixedColumns: 1, 
			autoShow:true,
			autoResize:true,
			height: '400',
			/*width: '100%'*/
		});
	});
	//--></script> 
	
<?php echo $footer; ?>