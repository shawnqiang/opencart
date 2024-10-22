<div class="checkout-product grid_10 alpha push_1">
	
	<table>

		<thead>
			<tr>
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
				<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
					<?php foreach ($product['option'] as $option) { ?>
					<br />
					&nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
					<?php } ?></td>
				<td class="model"><?php echo $product['model']; ?></td>
				<td class="quantity"><?php echo $product['quantity']; ?></td>
				<td class="price"><?php echo $product['price']; ?></td>
				<td class="total"><?php echo $product['total']; ?></td>
			</tr>
			<?php } ?>
			<?php foreach ($vouchers as $voucher) { ?>
			<tr>
				<td class="name"><?php echo $voucher['description']; ?></td>
				<td class="model"></td>
				<td class="quantity">1</td>
				<td class="price"><?php echo $voucher['amount']; ?></td>
				<td class="total"><?php echo $voucher['amount']; ?></td>
			</tr>
			<?php } ?>
		</tbody>

		<tfoot>
			<?php if ($totals) { $i = 0; $j = count($totals); } ?>
			<?php foreach ($totals as $total) { ?>
			<tr>
				<td colspan="4" class="price"><b><?php echo $total['title']; ?>:</b></td>
				<td class="total <?php if($i == $j-1) echo 'last'; ?>"><?php echo $total['text']; ?></td>
			</tr>
			<?php $i++; } ?>
		</tfoot>

	</table>

</div>

<div class="payment grid_10 alpha push_1"><?php echo $payment; ?></div>