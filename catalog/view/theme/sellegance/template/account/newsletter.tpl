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

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="newsletter">
			
			<div class="field_row">
				<label for="firstname" class="lbl"><?php echo $entry_newsletter; ?></label>
				<div class="fld">
					<?php if ($newsletter) { ?>
						<input type="radio" name="newsletter" value="1" checked="checked" />
						<?php echo $text_yes; ?>&nbsp;
						<input type="radio" name="newsletter" value="0" />
						<?php echo $text_no; ?>
					<?php } else { ?>
						<input type="radio" name="newsletter" value="1" />
						<?php echo $text_yes; ?>&nbsp;
						<input type="radio" name="newsletter" value="0" checked="checked" />
						<?php echo $text_no; ?>
					<?php } ?>
				</div>
			</div>
			
			<div class="buttons">
				<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
				<a onclick="$('#newsletter').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>

		</form>

	</div>

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>
	
	<?php echo $content_bottom; ?>

<?php echo $footer; ?>