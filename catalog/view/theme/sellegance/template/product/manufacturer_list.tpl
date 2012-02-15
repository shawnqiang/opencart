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

		<?php if ($categories) { ?>
			<p><b><?php echo $text_index; ?></b>
				<?php foreach ($categories as $category) { ?>
				&nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><b><?php echo $category['name']; ?></b></a>
				<?php } ?>
			</p>

			<?php foreach ($categories as $category) { ?>
			
			<div class="manufacturer-list">
				
				<div class="contentset"><div class="inner"><span><?php echo $category['name']; ?><a id="<?php echo $category['name']; ?>"></a></span></div></div>

				<div class="manufacturer-content">
					<?php if ($category['manufacturer']) { ?>
					<?php for ($i = 0; $i < count($category['manufacturer']);) { ?>
					<ul>
						<?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>
						<?php for (; $i < $j; $i++) { ?>
						<?php if (isset($category['manufacturer'][$i])) { ?>
						<li><a href="<?php echo $category['manufacturer'][$i]['href']; ?>"><?php echo $category['manufacturer'][$i]['name']; ?></a></li>
						<?php } ?>
						<?php } ?>
					</ul>
					<?php } ?>
					<?php } ?>
				</div>
			</div>
		<?php } ?>

		<?php } else { ?>

		<div class="content"><?php echo $text_empty; ?></div>

		<div class="buttons">
			<a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a>
		</div>

		<?php } ?>

	</div> <!-- #maincontent -->
	
	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

	<div id="backtop" class="grid_12 clearfix"><a href="javascript:void(0)" class="backtotop">top</a> </div>

<?php echo $footer; ?>