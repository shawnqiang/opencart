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

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="password_form">
	
			<fieldset class="subheading">
				
				<legend><?php echo $text_password; ?></legend>

				<div class="field_row">
					<label for="password" class="lbl"><span class="req_mark">*</span> <?php echo $entry_password; ?></label>
					<div class="fld">
						<input type="password" name="password" id="password" value="<?php echo $password; ?>" title="<?php echo $this->language->get('error_password'); ?>" class="password" size="30"  />
						<?php if ($error_password) { ?>
							<span class="error"><?php echo $error_password; ?></span>
						<?php } ?>
						</div>
				</div>

				<div class="field_row">
					<label for="confirm" class="lbl"><span class="req_mark">*</span> <?php echo $entry_confirm; ?></label>
					<div class="fld">
						<input type="password" name="confirm" id="confirm" value="<?php echo $confirm; ?>"  title="<?php echo $this->language->get('error_password'); ?>" class="password" size="30" />
						<?php if ($error_confirm) { ?>
							<span class="error"><?php echo $error_confirm; ?></span>
						<?php } ?>
						</div>
				</div>

			</fieldset>

			<div class="buttons">
					<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
					<a onclick="$('#password_form').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
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

		$("#password_form").validate({
			rules: {
				password: {
					required: true, minlength: 3
				},
				confirm: {
					required: function(element) {
						var str = $("#password").val();

						return str.length > 0;
					},
					equalTo: "#password",
					minlength: 4
				}
			}
		});

	</script>

<?php echo $footer; ?>