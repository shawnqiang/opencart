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

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="edit">
	
			<fieldset class="subheading">

				<legend><?php echo $text_your_details; ?></legend>

				<div class="field_row">
					<label for="firstname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_firstname; ?></label>
					<div class="fld">
						<input type="text" name="firstname" value="<?php echo $firstname; ?>" title="<?php echo $this->language->get('error_firstname'); ?>" class="required" size="30" />
						<?php if ($error_firstname) { ?>
						<span class="error"><?php echo $error_firstname; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="lastname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_lastname; ?>
					</label>
					<div class="fld">
						<input type="text" name="lastname" value="<?php echo $lastname; ?>" title="<?php echo $this->language->get('error_lastname'); ?>" class="required" size="30" />
						<?php if ($error_lastname) { ?>
						<span class="error"><?php echo $error_lastname; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="email" class="lbl"><span class="req_mark">*</span> <?php echo $entry_email; ?></label>
					<div class="fld">
						<input type="text" name="email" value="<?php echo $email; ?>"  title="<?php echo $this->language->get('error_email'); ?>" class="required email" size="30" />
						<?php if ($error_email) { ?>
						<span class="error"><?php echo $error_email; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="telephone" class="lbl"><span class="req_mark">*</span> <?php echo $entry_telephone; ?></label>
					<div class="fld">
						<input type="text" name="telephone" value="<?php echo $telephone; ?>" title="<?php echo $this->language->get('error_telephone'); ?>" class="required" size="30" />
						<?php if ($error_telephone) { ?>
						<span class="error"><?php echo $error_telephone; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="fax" class="lbl"><?php echo $entry_fax; ?></label>
					<div class="fld">
						<input type="text" name="fax" value="<?php echo $fax; ?>" size="30" />
					</div>
				</div>
			
			</fieldset>

			<div class="buttons">
				<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
				<a onclick="$('#edit').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>
  
		</form>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>
  
	<?php echo $content_bottom; ?>

	<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/jquery.validate.min.js"></script>

	<script type="text/javascript">
		
		jQuery.validator.setDefaults({
			errorElement: "span",
			errorClass: "error",
			errorPlacement: function(error, element) {
				error.insertAfter(element);
			}
		});

		$("#edit").validate();

	</script>
  
<?php echo $footer; ?>