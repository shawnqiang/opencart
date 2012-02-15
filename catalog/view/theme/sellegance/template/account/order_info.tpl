<?php echo $header; ?>
	
	<?php echo $content_top; ?>
	
	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	
	<div class="heading grid_12">
		
		<h1><?php echo $heading_title; ?></h1>
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

	</div>

	<?php ($column_left) ? $main = "push_3" : $main=""; ?>

	<div id="maincontent" class="grid_9 <?php echo $main; ?>">

		<table class="list order-info">
			<thead>
				<tr>
					<td class="center" colspan="2">
					<?php echo $text_order_detail; ?>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="left" style="width: 50%;"><?php if ($invoice_no) { ?>
						<b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
						<?php } ?>
						<b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
						<b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
					<td class="left"><b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
						<?php if ($shipping_method) { ?>
						<b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
						<?php } ?></td>
				</tr>
			</tbody>
		</table>

		<table class="list order-info">
			<thead>
				<tr>
					<td class="center">
					<?php echo $text_payment_address; ?>
					</td>
					<?php if ($shipping_address) { ?>
					<td class="center">
					<?php echo $text_shipping_address; ?>
					</td>
					<?php } ?>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="left"><?php echo $payment_address; ?></td>
					<?php if ($shipping_address) { ?>
					<td class="left"><?php echo $shipping_address; ?></td>
					<?php } ?>
				</tr>
			</tbody>
		</table>

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="order">
			<table class="list">
				<thead>
					<tr>
						<td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
						<td class="center"><?php echo $column_name; ?></td>
						<td><?php echo $column_model; ?></td>
						<td><?php echo $column_quantity; ?></td>
						<td><?php echo $column_price; ?></td>
						<td><?php echo $column_total; ?></td>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($products as $product) { ?>
					<tr>
						<td style="text-align: center; vertical-align: middle;"><?php if ($product['selected']) { ?>
							<input type="checkbox" name="selected[]" value="<?php echo $product['order_product_id']; ?>" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="selected[]" value="<?php echo $product['order_product_id']; ?>" />
							<?php } ?></td>
						<td class="left"><?php echo $product['name']; ?><input type="hidden" name="" value="" />
							<?php foreach ($product['option'] as $option) { ?>
							<br />
							&nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
							<?php } ?></td>
						<td class="left"><?php echo $product['model']; ?></td>
						<td class="right"><?php echo $product['quantity']; ?></td>
						<td class="right"><?php echo $product['price']; ?></td>
						<td class="right"><?php echo $product['total']; ?></td>
					</tr>
					<?php } ?>
				</tbody>
				<tfoot>
					<?php foreach ($totals as $total) { ?>
					<tr>
						<td colspan="4"></td>
						<td class="right"><b><?php echo $total['title']; ?>:</b></td>
						<td class="right"><?php echo $total['text']; ?></td>
					</tr>
					<?php } ?>
				</tfoot>
			</table>

			<div class="list_actions">
				<?php echo $text_action; ?>
				<select name="action" onchange="$('#order').submit();">
					<option value="" selected="selected"><?php echo $text_selected; ?></option>
					<option value="reorder"><?php echo $text_reorder; ?></option>
					<option value="return"><?php echo $text_return; ?></option>
				</select>
			</div>

		</form>

		<?php if ($comment) { ?>
		<table class="list">
			<thead>
				<tr><td><?php echo $text_comment; ?></td></tr>
			</thead>
			<tbody>
				<tr><td><?php echo $comment; ?></td></tr>
			</tbody>
		</table>
		<?php } ?>

		<?php if ($histories) { ?>
		<h2 class="contentset center"><div class="inner"><span><?php echo $text_history; ?></span></div></h2>
		<table class="list">
			<thead>
				<tr>
					<td><?php echo $column_date_added; ?></td>
					<td><?php echo $column_status; ?></td>
					<td><?php echo $column_comment; ?></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($histories as $history) { ?>
				<tr>
					<td><?php echo $history['date_added']; ?></td>
					<td><?php echo $history['status']; ?></td>
					<td><?php echo $history['comment']; ?></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
		<?php } ?>

		<div class="buttons">
			<a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
		</div>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

<?php echo $footer; ?> 