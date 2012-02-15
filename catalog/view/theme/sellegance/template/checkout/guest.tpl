<div class="grid_5 alpha push_1">

	<fieldset class="subheading">
		
		<legend><?php echo $text_your_details; ?></legend>
		
		<div class="field_row">
			<label for="firstname" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_firstname; ?></label>
			<input type="text" name="firstname" value="<?php echo $firstname; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="lastname" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_lastname; ?></label>
			<input type="text" name="lastname" value="<?php echo $lastname; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="email" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_email; ?></label>
			<input type="text" name="email" value="<?php echo $email; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="telephone" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_telephone; ?></label>
			<input type="text" name="telephone" value="<?php echo $telephone; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="fax" class="lbl_block"><?php echo $entry_fax; ?></label>
			<input type="text" name="fax" value="<?php echo $fax; ?>" size="50" />
		</div>

	</fieldset>

</div>

<div class="grid_5 omega push_1">
	
	<fieldset class="subheading">

		<legend><?php echo $text_your_address; ?></legend>
		
		<div class="field_row">
			<label for="company" class="lbl_block"><?php echo $entry_company; ?></label>
			<input type="text" name="company" value="<?php echo $company; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="address_1" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_address_1; ?></label>
			<input type="text" name="address_1" value="<?php echo $address_1; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="address_2" class="lbl_block"><?php echo $entry_address_2; ?></label>
			<input type="text" name="address_2" value="<?php echo $address_2; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="city" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_city; ?></label>
			<input type="text" name="city" value="<?php echo $city; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="postcode" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_postcode; ?></label>
			<input type="text" name="postcode" value="<?php echo $postcode; ?>" size="50" />
		</div>
		<div class="field_row">
			<label for="postcode" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_country; ?></label>
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
		<div class="field_row">
			<label for="zone_id" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_zone; ?></label>
			<select name="zone_id" class="large-field">
			</select>
		</div>
 
	</fieldset>
	
	<?php if ($shipping_required) { ?>
	<div>
		<?php if ($shipping_address) { ?>
		<input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
		<?php } else { ?>
		<input type="checkbox" name="shipping_address" value="1" id="shipping" />
		<?php } ?>
		<label for="shipping"><?php echo $entry_shipping; ?></label>
		<br /><br /><br />
	</div>
	<?php } ?>

</div>

<div class="buttons">
	<a id="button-guest" class="button black"><span><?php echo $button_continue; ?></span></a>
</div>

<script type="text/javascript"><!--
$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 