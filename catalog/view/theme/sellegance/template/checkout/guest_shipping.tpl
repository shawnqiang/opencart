<div class="grid_6 alpha push_3">

	<div class="field_row">
		<label for="firstname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_firstname; ?></label>
		<div class="fld"><input type="text" name="firstname" value="<?php echo $firstname; ?>" size="50" /></div>
	</div>
	<div class="field_row">
		<label for="lastname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_lastname; ?></label>
		<div class="fld"><input type="text" name="lastname" value="<?php echo $lastname; ?>" size="50" /></div>
	</div>
	<div class="field_row">
		<label for="company" class="lbl"><?php echo $entry_company; ?></label>
		<div class="fld"><input type="text" name="company" value="<?php echo $company; ?>" size="50" /></div>
	</div>
	<div class="field_row">
		<label for="address_1" class="lbl"><span class="req_mark">*</span> <?php echo $entry_address_1; ?></label>
		<div class="fld"><input type="text" name="address_1" value="<?php echo $address_1; ?>" size="50" /></div>
	</div>
	<div class="field_row">
		<label for="address_2" class="lbl"><?php echo $entry_address_2; ?></label>
		<div class="fld"><input type="text" name="address_2" value="<?php echo $address_2; ?>" size="50" /></div>
	</div>
	<div class="field_row">
		<label for="city" class="lbl"><span class="req_mark">*</span> <?php echo $entry_city; ?></label>
		<div class="fld"><input type="text" name="city" value="<?php echo $city; ?>" size="50" /></div>
	</div>
	<div class="field_row">
		<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_postcode; ?></label>
		<div class="fld"><input type="text" name="postcode" value="<?php echo $postcode; ?>" size="50" /></div>
	</div>
	<div class="field_row">
		<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_country; ?></label>
		<div class="fld">
			<select name="country_id" class="large-field" onchange="$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=' + this.value);">
				<option value=""><?php echo $text_select; ?></option>
				<?php foreach ($countries as $country) { ?>
				<?php if ($country['country_id'] == $country_id) { ?>
				<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
				<?php } ?>
				<?php } ?>
			</select>
		</div>
	</div>
	<div class="field_row">
		<label for="zone_id" class="lbl"><span class="req_mark">*</span> <?php echo $entry_zone; ?></label>
		<div class="fld"><select name="zone_id" class="large-field"></select></div>
	</div>

</div>

<div class="buttons">
	<a id="button-guest-shipping" class="button black"><span><?php echo $button_continue; ?></span></a>
</div>

<script type="text/javascript"><!--
$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 