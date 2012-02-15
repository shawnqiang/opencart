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

		<p><?php echo $text_description; ?></p>

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="voucher">

			<div class="content">

				<div class="field_row">
					<label for="to_name" class="lbl"><span class="req_mark">*</span> <?php echo $entry_to_name; ?></label>
					<div class="fld">
						<input type="text" name="to_name" value="<?php echo $to_name; ?>" title="<?php echo $this->language->get('error_to_name'); ?>" class="required" size="30" />
						<?php if ($error_to_name) { ?>
						<span class="error"><?php echo $error_to_name; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="field_row">
					<label for="to_email" class="lbl"><span class="req_mark">*</span> <?php echo $entry_to_email; ?></label>
					<div class="fld">
						<input type="text" name="to_email" value="<?php echo $to_email; ?>"  title="<?php echo $this->language->get('error_to_email'); ?>" class="required email" size="30" />
						<?php if ($error_to_email) { ?>
						<span class="error"><?php echo $error_to_email; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="from_name" class="lbl"><span class="req_mark">*</span> <?php echo $entry_from_name; ?></label>
					<div class="fld">
						<input type="text" name="from_name" value="<?php echo $from_name; ?>" title="<?php echo $this->language->get('error_from_name'); ?>" class="required" size="30" />
						<?php if ($error_from_name) { ?>
						<span class="error"><?php echo $error_from_name; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="field_row">
					<label for="from_email" class="lbl"><span class="req_mark">*</span> <?php echo $entry_from_email; ?></label>
					<div class="fld">
						<input type="text" name="from_email" value="<?php echo $from_email; ?>"  title="<?php echo $this->language->get('error_from_email'); ?>" class="required email" size="30" />
						<?php if ($error_from_email) { ?>
						<span class="error"><?php echo $error_from_email; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="message" class="lbl"><?php echo $entry_message; ?></label>
					<div class="fld">
						<textarea name="message" cols="34" rows="5"><?php echo $message; ?></textarea>
					</div>
				</div>

				<div class="field_row">
					<label for="amount" class="lbl"><span class="req_mark">*</span> <?php echo $entry_amount; ?></label>
					<div class="fld">
						<input type="text" name="amount" value="<?php echo $amount; ?>"  title="<?php echo $this->language->get('error_amount'); ?>" class="required email" size="10" />
						<?php if ($error_amount) { ?>
						<span class="error"><?php echo $error_amount; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<div class="lbl"><span class="req_mark">*</span> <?php echo $entry_theme; ?></div>
					<div class="fld">
						<?php foreach ($voucher_themes as $voucher_theme) { ?>
							<?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
							<input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" />
							<label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
							<?php } else { ?>
							<input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" />
							<label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
							<?php } ?>
							<br />
							<?php } ?>
							<?php if ($error_theme) { ?>
							<span class="error"><?php echo $error_theme; ?></span>
						<?php } ?>
					</div>
				</div>
			</div>

			<div class="buttons">
				<?php echo $text_agree; ?>
					<?php if ($agree) { ?>
					<input type="checkbox" name="agree" value="1" checked="checked" />
					<?php } else { ?>
					<input type="checkbox" name="agree" value="1" />
					<?php } ?>
					<br /><br />
					<a onclick="$('#voucher').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>
			
		</form>

	</div>

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>