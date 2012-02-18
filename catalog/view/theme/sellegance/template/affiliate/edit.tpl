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
		<?php if ($error_warning) { ?>
				<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

		</div>
		<div class="mod">
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

			<fieldset class="subheading">

				<legend><?php echo $text_your_address; ?></legend>

				<div class="field_row">
					<label for="company" class="lbl"><?php echo $entry_company; ?></label>
					<div class="fld">
						<input type="text" name="company" value="<?php echo $company; ?>" size="30" />
					</div>
				</div>

				<div class="field_row">
					<label for="website" class="lbl"><?php echo $entry_website; ?></label>
					<div class="fld">
						<input type="text" name="website" value="<?php echo $website; ?>" size="30" />
					</div>
				</div>

				<div class="field_row">
					<label for="address_1" class="lbl"><span class="req_mark">*</span> <?php echo $entry_address_1; ?></label>
					<div class="fld">
						<input type="text" name="address_1" value="<?php echo $address_1; ?>" title="<?php echo $this->language->get('error_address_1'); ?>" class="required" size="30" />
						<?php if ($error_address_1) { ?>
						<span class="error"><?php echo $error_address_1; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="address_2" class="lbl"><?php echo $entry_address_2; ?></label>
					<div class="fld">
						<input type="text" name="address_2" value="<?php echo $address_2; ?>" size="30" />
					</div>
				</div>

				<div class="field_row">
					<label for="city" class="lbl"><span class="req_mark">*</span> <?php echo $entry_city; ?></label>
					<div class="fld">
						<input type="text" name="city" value="<?php echo $city; ?>" title="<?php echo $this->language->get('error_city'); ?>" class="required" size="30" />
						<?php if ($error_city) { ?>
						<span class="error"><?php echo $error_city; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_postcode; ?></label>
					<div class="fld">
						<input type="text" name="postcode" value="<?php echo $postcode; ?>" title="<?php echo $this->language->get('error_postcode'); ?>" class="required" size="30" />
						<?php if ($error_postcode) { ?>
						<span class="error"><?php echo $error_postcode; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="country_id" class="lbl"><span class="req_mark">*</span> <?php echo $entry_country; ?></label>
					<div class="fld">
						<select name="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=affiliate/edit/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');" title="<?php echo $this->language->get('error_country'); ?>" class="required" >
							<option value="false"><?php echo $text_select; ?></option>
							<?php foreach ($countries as $country) { ?>
							<?php if ($country['country_id'] == $country_id) { ?>
							<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
						<?php if ($error_country) { ?>
						<span class="error"><?php echo $error_country; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="zone_id" class="lbl"><span class="req_mark">*</span> <?php echo $entry_zone; ?></label>
					<div class="fld">
						<select name="zone_id" title="<?php echo $this->language->get('error_zone'); ?>" class="required">
						</select>
						<?php if ($error_zone) { ?>
						<span class="error"><?php echo $error_zone; ?></span>
						<?php } ?>
					</div>
				</div>

		</fieldset>

		<div class="buttons">
			<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
			<a onclick="$('#edit').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
		</div>

	</form>
	</div>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

	<script type="text/javascript"><!--
	$('select[name=\'zone_id\']').load('index.php?route=affiliate/edit/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
	//--></script> 

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