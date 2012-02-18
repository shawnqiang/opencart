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
			<li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
		</ul>
		</div>
		</div>
		<div class="mod">
		<div class="contentset"><div class="inner"><span><?php echo $text_my_tracking; ?></span></div></div>
		<div class="mod-bd">
		<ul class="list">
			<li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
		</ul>
		</div>
		</div>
		<div class="mod">
		<div class="contentset"><div class="inner"><span><?php echo $text_my_transactions; ?></span></div></div>
		<div class="mod-bd">
		<ul class="list">
			<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
		</ul>
		</div>
		</div>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>