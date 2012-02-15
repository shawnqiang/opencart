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

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="address">

			<fieldset class="subheading">
					
				<legend><?php echo $text_edit_address; ?></legend>

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
					<label for="lastname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_lastname; ?></label>
					<div class="fld">
						<input type="text" name="lastname" value="<?php echo $lastname; ?>" title="<?php echo $this->language->get('error_lastname'); ?>" class="required" size="30" />
						<?php if ($error_lastname) { ?>
						<span class="error"><?php echo $error_lastname; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="field_row">
					<label for="company" class="lbl"><?php echo $entry_company; ?></label>
					<div class="fld">
						<input type="text" name="company" value="<?php echo $company; ?>" size="30" />
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
					<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_country; ?></label>
					<div class="fld">
						<select name="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');" title="<?php echo $this->language->get('error_country'); ?>" class="required" >
							<option value=""><?php echo $text_select; ?></option>
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
					<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_zone; ?></label>
					<div class="fld">
						<select name="zone_id" title="<?php echo $this->language->get('error_zone'); ?>" class="required">
						</select>
						<?php if ($error_zone) { ?>
						<span class="error"><?php echo $error_zone; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="field_row">
					<label class="lbl"><?php echo $entry_default; ?></label>
					<div class="fld">
					<?php if ($default) { ?>
					<input type="radio" name="default" value="1" checked="checked" />
					<?php echo $text_yes; ?>
					<input type="radio" name="default" value="0" />
					<?php echo $text_no; ?>
					<?php } else { ?>
					<input type="radio" name="default" value="1" />
					<?php echo $text_yes; ?>
					<input type="radio" name="default" value="0" checked="checked" />
					<?php echo $text_no; ?>
					<?php } ?>
					</div>
				</div>
					
			</fieldset>
	
			<div class="buttons">
				<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
				<a onclick="$('#address').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>

		</form>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

	<script type="text/javascript"><!--
	$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
	//--></script>

	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>

	<script type="text/javascript">
		
		jQuery.validator.setDefaults({
			errorElement: "span",
			errorClass: "error",
			errorPlacement: function(error, element) {
				error.insertAfter(element);
			}
		});

		$("#address").validate();

	</script> 

<?php echo $footer; ?>