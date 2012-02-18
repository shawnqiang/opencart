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
		<?php foreach ($downloads as $download) { ?>
		<div class="download-list">
			<div class="download-id"><b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?></div>
			<div class="download-status"><b><?php echo $text_size; ?></b> <?php echo $download['size']; ?></div>
			<div class="download-content">
				<div><b><?php echo $text_name; ?></b> <?php echo $download['name']; ?><br />
					<b><?php echo $text_date_added; ?></b> <?php echo $download['date_added']; ?></div>
				<div><b><?php echo $text_remaining; ?></b> <?php echo $download['remaining']; ?></div>
				<div class="download-info">
					<?php if ($download['remaining'] > 0) { ?>
					<a href="<?php echo $download['href']; ?>" class="button small cart"><span><?php echo $text_download; ?></span></a>
					<?php } ?>
				</div>
			</div>
		</div>
		<?php } ?>
		
		<div class="pagination"><?php echo $pagination; ?></div>
		
		<div class="buttons">
			<a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
		</div>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>