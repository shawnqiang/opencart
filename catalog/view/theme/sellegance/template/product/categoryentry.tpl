<?php echo $header; ?>
	<style type="text/css">
	.category_heading{
		padding:10px 0;
		border-bottom:2px solid #eee;
	}
	.category_heading h1{
		font-size:30px;
		margin:0 10px 0 0;
	}
	.category_heading .category-info{
		background-color:#fff;
		margin-bottom:0;
	}
	</style>
	<div class="heading category_heading grid_12">
		<h1 class="grid_7 alpha"><?php echo $heading_title; ?></h1>
	
		<?php if ($thumb || $description) { ?>
		<div class="grid_5 omega category-info">
			<?php if ($description) { ?>
			<?php echo $description; ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>

	<?php ($column_left) ? $main = "push_3" : $main=""; ?>

	<div id="maincontent" class="grid_9 <?php echo $main; ?>">
	<?php echo $content_top; ?>
	
	
	<?php if ($categories) { ?>
	<div class="contentset"><div class="inner"><span><?php echo $text_refine; ?></span></div></div>
	<div class="category-list">
		<?php if (count($categories) <= 5) { ?>
		<ul>
			<?php foreach ($categories as $category) { ?>
			<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>	
			<?php } ?>
		</ul>
		<?php } else { ?>
		<?php for ($i = 0; $i < count($categories);) { ?>
		<ul>
			<?php $j = $i + ceil(count($categories) / 4); ?>
			<?php for (; $i < $j; $i++) { ?>
			<?php if (isset($categories[$i])) { ?>
			<li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
			<?php } ?>
			<?php } ?>
		</ul>
		<?php } ?>
		<?php } ?>
	</div>
	<?php } ?>

	</div><!-- #maincontent -->

	<?php echo $column_left; ?>
	
	<?php echo $column_right; ?>
	
	<?php echo $content_bottom; ?>

	<div id="backtop" class="grid_12 clearfix"><a href="javascript:void(0)" class="backtotop">top</a> </div>

<?php echo $footer; ?>