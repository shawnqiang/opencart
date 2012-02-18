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
	<!-- 
	<?php ($column_left) ? $main = "push_3" : $main=""; ?>
	-->
	<div id="maincontent" class="grid_12">

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
			<div class="grid_3 alpha">
			<div class="mod">
			<fieldset class="subheading">
				
				<legend><?php echo $text_location; ?></legend>
			
				<div>
					<b><?php echo $text_address; ?></b><br />
					<?php echo $store; ?><br />
					<?php echo $address; ?>
				</div>
			
				<div>
					<?php if ($telephone) { ?>
						<b><?php echo $text_telephone; ?></b><br />
						<?php echo $telephone; ?><br />
						<br />
					<?php } ?>
					<?php if ($fax) { ?>
						<b><?php echo $text_fax; ?></b><br />
						<?php echo $fax; ?>
					<?php } ?>
				</div>

			</fieldset>
			</div>
			</div>
			<div class="grid_9 omega">
			<div class="mod">
			<fieldset class="subheading">

				<legend><?php echo $text_contact; ?></legend>

				<div class="field_row">
					<label for="firstname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_name; ?></label>
					<div class="fld">
						<input type="text" name="name" value="<?php echo $name; ?>" title="<?php echo $this->language->get('error_name'); ?>" class="required" size="50" />
						<?php if ($error_name) { ?>
						<span class="error"><?php echo $error_name; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="email" class="lbl"><span class="req_mark">*</span> <?php echo $entry_email; ?></label>
					<div class="fld">
						<input type="text" name="email" value="<?php echo $email; ?>"  title="<?php echo $this->language->get('error_email'); ?>" class="required email" size="50" />
						<?php if ($error_email) { ?>
						<span class="error"><?php echo $error_email; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="enquiry" class="lbl"><span class="req_mark">*</span> <?php echo $entry_enquiry; ?></label>
					<div class="fld">
						<textarea name="enquiry" cols="50" rows="10" title="<?php echo $this->language->get('error_enquiry'); ?>" class="required"><?php echo $enquiry; ?></textarea>
						<?php if ($error_enquiry) { ?>
						<span class="error"><?php echo $error_enquiry; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<div class="fld">
						<?php echo $entry_captcha; ?><br />
						<input type="text" name="captcha" id="captcha" value="<?php echo $captcha; ?>" size="30" />
						<img src="index.php?route=information/contact/captcha" alt="" />
						<?php if ($error_captcha) { ?>
						<span class="error"><?php echo $error_captcha; ?></span>
						<?php } ?>
					</div>
				</div>
			
			</fieldset>
			<div class="buttons">
			  <a onclick="$('#contact').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>
			</div>
			</div>
			
  
		</form>
		
	</div> <!-- #maincontent -->

	<!-- <?php echo $column_left; ?> -->
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

	<div id="backtop" class="grid_12 clearfix"><a href="javascript:void(0)" class="backtotop">top</a> </div>

	<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/js/jquery.validate.min.js"></script>

	<script type="text/javascript">
		
		jQuery.validator.setDefaults({
			errorElement: "span",
			errorClass: "error",
			errorPlacement: function(error, element) {
				error.insertAfter(element);
			}
		});

		$("#contact").validate({
		  rules: {
			enquiry: {
				required: true,
				minlength: 10
			}
		  }
		});

	</script>

<?php echo $footer; ?>