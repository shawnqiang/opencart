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
		<?php if ($success) { ?>
			<div class="success"><?php echo $success; ?></div>
		<?php } ?>

		</div>
		<div class="mod">
		<div class="contentset"><div class="inner"><span><?php echo $text_my_account; ?></span></div></div>
		<div class="mod-bd">
		<ul class="list">
			<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
			<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
			<li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
			<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		</ul>
		</div>
		</div>
		<div class="mod">	
		<div class="contentset"><div class="inner"><span><?php echo $text_my_orders; ?></span></div></div>
		<div class="mod-bd">
		<ul class="list">
			<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
			<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
			<li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
			<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
		</ul>
		</div>
		</div>
		<div class="mod">	
		<div class="contentset"><div class="inner"><span><?php echo $text_my_newsletter; ?></span></div></div>
		<div class="mod-bd">
		<ul class="list">
			<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		</ul>
		</div>
		</div>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>
	
<?php echo $footer; ?> 