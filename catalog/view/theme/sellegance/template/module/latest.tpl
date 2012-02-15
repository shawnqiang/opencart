<div class="box clearfix">
	<div class="contentset center"><div class="inner"><span><?php echo $heading_title; ?></span></div></div>
	<div class="box-content">
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
				<div class="inner">
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
					<div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button cart small"><span><?php echo $button_cart; ?></span></a></div>
				</div>
			</div>
			<?php $counter++; } ?>
		</div>
	</div>
</div>
