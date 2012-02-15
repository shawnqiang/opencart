<div class="grid_6 aplha push_3">

	<?php if ($addresses) { ?>
	<input type="radio" name="<?php echo $type; ?>_address" value="existing" id="<?php echo $type; ?>-address-existing" checked="checked" />
	<label for="<?php echo $type; ?>-address-existing"><?php echo $text_address_existing; ?></label>
	<div id="<?php echo $type; ?>-existing">
		<select name="address_id" style="width: 100%; margin-bottom: 15px;" size="5">
			<?php foreach ($addresses as $address) { ?>
			<?php if ($address['address_id'] == $address_id) { ?>
			<option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['country']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['country']; ?></option>
			<?php } ?>
			<?php } ?>
		</select>
	</div>
	<?php } ?>

	<p>
		<input type="radio" name="<?php echo $type; ?>_address" value="new" id="<?php echo $type; ?>-address-new" />
		<label for="<?php echo $type; ?>-address-new"><?php echo $text_address_new; ?></label>
	</p>

	<div id="<?php echo $type; ?>-new" style="display: none;">

		<div class="field_row">
			<label for="firstname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_firstname; ?></label>
			<div class="fld">
				<input type="text" name="firstname" value="" size="50" />
			</div>
		</div>
		<div class="field_row">
			<label for="lastname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_lastname; ?></label>
			<div class="fld">
				<input type="text" name="lastname" value="" size="50" />
			</div>
		</div>
		<div class="field_row">
			<label for="company" class="lbl"><?php echo $entry_company; ?></label>
			<div class="fld">
			<input type="text" name="company" value="" size="50" />
			</div>
		</div>
		<div class="field_row">
			<label for="address_1" class="lbl"><span class="req_mark">*</span> <?php echo $entry_address_1; ?></label>
			<div class="fld">
			<input type="text" name="address_1" value="" size="50" />
			</div>
		</div>
		<div class="field_row">
			<label for="address_2" class="lbl"><?php echo $entry_address_2; ?></label>
			<div class="fld">
			<input type="text" name="address_2" value="" size="50" />
			</div>
		</div>
		<div class="field_row">
			<label for="city" class="lbl"><span class="req_mark">*</span> <?php echo $entry_city; ?></label>
			<div class="fld">
			<input type="text" name="city" value="" size="50" />
			</div>
		</div>
		<div class="field_row">
			<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_postcode; ?></label>
			<div class="fld">
			<input type="text" name="postcode" value="" size="50" />
			</div>
		</div>
		<div class="field_row">
			<label for="country_id" class="lbl"><span class="req_mark">*</span> <?php echo $entry_country; ?></label>
			<div class="fld">
			<select name="country_id" class="large-field" onchange="$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=' + this.value);">
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
			<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_zone; ?></label>
			<div class="fld">
				<select name="zone_id"></select>
			</div>
		</div>

	</div>

</div>

<div class="buttons grid_6 push_3">
	<a id="button-address" class="button black"><span><?php echo $button_continue; ?></span></a>
</div>

<script type="text/javascript"><!--
$('#<?php echo $type; ?>-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>');

$('#<?php echo $type; ?>-address input[name=\'<?php echo $type; ?>_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#<?php echo $type; ?>-existing').hide();
		$('#<?php echo $type; ?>-new').show();
	} else {
		$('#<?php echo $type; ?>-existing').show();
		$('#<?php echo $type; ?>-new').hide();
	}
});
//--></script> 