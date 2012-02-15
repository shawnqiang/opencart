<?php echo $header; ?>

	<?php echo $content_top; ?>
	
	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	
	<div class="heading grid_12">

		<h1><?php echo $heading_title; ?></h1>

		<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

	</div>

	<?php ($column_left) ? $main = "push_3" : $main=""; ?>

	<div id="maincontent" class="grid_9 <?php echo $main; ?>">

		<div class="contentset"><div class="inner"><span><?php echo $text_address_book; ?></span></div></div>

		<?php foreach ($addresses as $result) { ?>
				<div class="grid_6 alpha address">
					<?php echo $result['address']; ?>
				</div>
				<div class="grid_3 omega address_actions">
					<a href="<?php echo $result['update']; ?>" class="button small"><span><?php echo $button_edit; ?></span></a>
					<a href="<?php echo $result['delete']; ?>" class="button small"><span><?php echo $button_delete; ?></span></a>
				</div>
				<div class="clearboth separator"></div>
		<?php } ?>

		<div class="buttons">
			<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
			<a href="<?php echo $insert; ?>" class="button black"><span><?php echo $button_new_address; ?></span></a>
		</div>
	
	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>
	
<?php echo $footer; ?>