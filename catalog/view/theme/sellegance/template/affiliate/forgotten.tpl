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

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten">

			<p><?php echo $text_email; ?></p>

			<div class="contentset"><div class="inner"><span><?php echo $text_your_email; ?></span></div></div>

			<div class="field_row">
				<label for="email" class="lbl"><?php echo $entry_email; ?></label>
				<div class="fld">
					<input type="text" name="email" id="email" value="" size="30" />
				</div>
			</div>

			<div class="buttons">
				<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
				<a onclick="$('#forgotten').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>

		</form>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>