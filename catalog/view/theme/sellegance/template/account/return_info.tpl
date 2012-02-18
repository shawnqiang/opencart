<?php echo $header; ?>

	<?php echo $content_top; ?>
	
	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	
	

	<?php ($column_left) ? $main = "push_3" : $main=""; ?>

	<div id="maincontent" class="grid_9 <?php echo $main; ?>">
		<div class="heading">
			<h1><?php echo $heading_title; ?></h1>
		</div>
		<div class="mod">
		<div class="mod-bd">
		<table class="list">
			<thead>
				<tr>
					<td class="left"><?php echo $text_return_id; ?></td>
					<td class="left"><?php echo $text_order_id; ?></td>
					<td class="left"><?php echo $text_date_ordered; ?></td>
					<td class="left"><?php echo $text_date_added; ?></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="left">#<?php echo $return_id; ?></td>
					<td class="left">#<?php echo $order_id; ?></td>
					<td class="left"><?php echo $date_ordered; ?></td>
					<td class="left"><?php echo $date_added; ?></td>
				</tr>
			</tbody>
		</table>

		<div class="contentset center"><div class="inner"><span><?php echo $text_product; ?></span></div></div>

		<table class="list">
			<thead>
				<tr>
					<td class="left"><?php echo $column_name; ?></td>
					<td class="left"><?php echo $column_model; ?></td>
					<td class="right"><?php echo $column_quantity; ?></td>
					<td class="left"><?php echo $column_reason; ?></td>
					<td class="left"><?php echo $column_opened; ?></td>
					<td class="left"><?php echo $column_comment; ?></td>
					<td class="left"><?php echo $column_action; ?></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($products as $product) { ?>
				<tr>
					<td class="left"><?php echo $product['name']; ?></td>
					<td class="left"><?php echo $product['model']; ?></td>
					<td class="right"><?php echo $product['quantity']; ?></td>
					<td class="left"><?php echo $product['reason']; ?></td>
					<td class="left"><?php echo $product['opened']; ?></td>
					<td class="left"><?php echo $product['comment']; ?></td>
					<td class="left"><?php echo $product['action']; ?></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>

		<?php if ($comment) { ?>
		<table class="list">
			<thead>
				<tr>
					<td class="left"><?php echo $text_comment; ?></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="left"><?php echo $comment; ?></td>
				</tr>
			</tbody>
		</table>
		<?php } ?>

		<?php if ($histories) { ?>
		<h2><?php echo $text_history; ?></h2>
		<table class="list">
			<thead>
				<tr>
					<td class="left"><?php echo $column_date_added; ?></td>
					<td class="left"><?php echo $column_status; ?></td>
					<td class="left"><?php echo $column_comment; ?></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($histories as $history) { ?>
				<tr>
					<td class="left"><?php echo $history['date_added']; ?></td>
					<td class="left"><?php echo $history['status']; ?></td>
					<td class="left"><?php echo $history['comment']; ?></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
		<?php } ?>

		<div class="buttons">
			<a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
		</div>
		</div>
		</div>

	</div> <!-- #maincontent -->
	
	<?php echo $column_left; ?>
	<?php echo $column_right; ?>
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>