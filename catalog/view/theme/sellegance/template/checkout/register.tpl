<div class="grid_5 aplha push_1">
  
	<fieldset class="subheading">
		<legend><?php echo $text_your_details; ?></legend>

		<div class="field_row">
			<label for="firstname" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_firstname; ?></label>
			<input type="text" name="firstname" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="lastname" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_lastname; ?></label>
			<input type="text" name="lastname" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="email" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_email; ?></label>
			<input type="text" name="email" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="telephone" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_telephone; ?></label>
			<input type="text" name="telephone" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="fax" class="lbl_block"><?php echo $entry_fax; ?></label>
			<input type="text" name="`fax" value="" size="50" />
		</div>
	</fieldset>

	<fieldset class="subheading">
		<legend><?php echo $text_your_password; ?></legend>

		<div class="field_row">
			<label for="password" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_password; ?></label>
			<input type="password" name="password" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="confirm" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_confirm; ?></label>
			<input type="password" name="confirm" value="" size="50" />
		</div>
	
	</fieldset>

</div>

<div class="grid_5 omega push_1">

	<fieldset class="subheading">
		<legend><?php echo $text_your_address; ?></legend>

		<div class="field_row">
			<label for="company" class="lbl_block"><?php echo $entry_company; ?></label>
			<input type="text" name="company" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="address_1" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_address_1; ?></label>
			<input type="text" name="address_1" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="address_2" class="lbl_block"><?php echo $entry_address_2; ?></label>
			<input type="text" name="address_2" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="city" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_city; ?></label>
			<input type="text" name="city" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="postcode" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_postcode; ?></label>
			<input type="text" name="postcode" value="" size="50" />
		</div>
		<div class="field_row">
			<label for="country_id" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_country; ?></label>
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
			<label for="postcode" class="lbl_block"><span class="req_mark">*</span> <?php echo $entry_zone; ?></label>
			<select name="zone_id" class="large-field">
			</select>
		</div>
	</fieldset>
	
</div>
<div class="grid_10 push_1">
  <input type="checkbox" name="newsletter" value="1" id="newsletter" />
  <label for="newsletter"><?php echo $entry_newsletter; ?></label>
  <br />
  <?php if ($shipping_required) { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
  <label for="shipping"><?php echo $entry_shipping; ?></label>
  <br />
  <?php } ?>
  <br />
  <br />
</div>

<?php if ($text_agree) { ?>
<div class="buttons">
  <?php echo $text_agree; ?> <input type="checkbox" name="agree" value="1" />
  <br /><br />
	<a id="button-register" class="button black"><span><?php echo $button_continue; ?></span></a>
</div>
<?php } else { ?>
<div class="buttons">
  <a id="button-register" class="button black"><span><?php echo $button_continue; ?></span></a>
</div>
<?php } ?>

<script type="text/javascript"><!--
$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>');
//--></script>
<script type="text/javascript"><!--
$('.fancybox').fancybox({
	width: 560,
	height: 560,
	autoDimensions: false
});
//--></script>  