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
	
		<p><?php echo $text_account_already; ?></p>
		<p><?php echo $text_signup; ?></p>

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="register">

			<fieldset class="subheading">

				<legend><?php echo $text_your_details; ?></legend>
					
				<div class="field_row">
					<label for="firstname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_firstname; ?></label>
					<div class="fld">
						<input type="text" name="firstname" id="firstname" value="<?php echo $firstname; ?>" title="<?php echo $this->language->get('error_firstname'); ?>" class="required" size="30" />
						<?php if ($error_firstname) { ?>
						<span class="error"><?php echo $error_firstname; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="lastname" class="lbl"><span class="req_mark">*</span> <?php echo $entry_lastname; ?>
					</label>
					<div class="fld">
						<input type="text" name="lastname" id="lastname" value="<?php echo $lastname; ?>" title="<?php echo $this->language->get('error_lastname'); ?>" class="required" size="30" />
						<?php if ($error_lastname) { ?>
						<span class="error"><?php echo $error_lastname; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
						<label for="email" class="lbl"><span class="req_mark">*</span> <?php echo $entry_email; ?></label>
						<div class="fld">
							<input type="text" name="email" id="email" value="<?php echo $email; ?>"  title="<?php echo $this->language->get('error_email'); ?>" class="required email" size="30" />
									<?php if ($error_email) { ?>
									<span class="error"><?php echo $error_email; ?></span>
									<?php } ?>
						</div>
				</div>

				<div class="field_row">
						<label for="telephone" class="lbl"><span class="req_mark">*</span> <?php echo $entry_telephone; ?></label>
						<div class="fld">
							<input type="text" name="telephone" id="telephone" value="<?php echo $telephone; ?>" title="<?php echo $this->language->get('error_telephone'); ?>" class="required" size="30" />
								<?php if ($error_telephone) { ?>
								<span class="error"><?php echo $error_telephone; ?></span>
								<?php } ?>
						</div>
				</div>

				<div class="field_row">
						<label for="fax" class="lbl"><?php echo $entry_fax; ?></label>
						<div class="fld">
							<input type="text" name="fax" id="fax" value="<?php echo $fax; ?>" size="30" />
						</div>
				</div>

			</fieldset>

			<fieldset class="subheading">

				<legend><?php echo $text_your_address; ?></legend>
				
				<div class="field_row">
					<label for="company" class="lbl"><?php echo $entry_company; ?></label>
					<div class="fld">
						<input type="text" name="company" id="company" value="<?php echo $company; ?>" size="30" />
					</div>
				</div>

				<div class="field_row">
					<label for="website" class="lbl"><?php echo $entry_website; ?></label>
					<div class="fld">
						<input type="text" name="website" id="website" value="<?php echo $website; ?>" size="30" />
					</div>
				</div>

				<div class="field_row">
					<label for="address_1" class="lbl"><span class="req_mark">*</span> <?php echo $entry_address_1; ?></label>
					<div class="fld">
						<input type="text" name="address_1" id="address_1" value="<?php echo $address_1; ?>" title="<?php echo $this->language->get('error_address_1'); ?>" class="required" size="30" />
						<?php if ($error_address_1) { ?>
						<span class="error"><?php echo $error_address_1; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="address_2" class="lbl"><?php echo $entry_address_2; ?></label>
					<div class="fld">
						<input type="text" name="address_2" id="address_2" value="<?php echo $address_2; ?>" size="30" />
					</div>
				</div>

				<div class="field_row">
					<label for="city" class="lbl"><span class="req_mark">*</span> <?php echo $entry_city; ?></label>
					<div class="fld">
						<input type="text" name="city" id="city" value="<?php echo $city; ?>" title="<?php echo $this->language->get('error_city'); ?>" class="required" size="30" />
						<?php if ($error_city) { ?>
						<span class="error"><?php echo $error_city; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="postcode" class="lbl"><span class="req_mark">*</span> <?php echo $entry_postcode; ?></label>
					<div class="fld">
						<input type="text" name="postcode" id="postcode" value="<?php echo $postcode; ?>" title="<?php echo $this->language->get('error_postcode'); ?>" class="required" size="30" />
						<?php if ($error_postcode) { ?>
						<span class="error"><?php echo $error_postcode; ?></span>
						<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="country_id" class="lbl"><span class="req_mark">*</span> <?php echo $entry_country; ?></label>
					<div class="fld">
						<select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=affiliate/edit/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');" title="<?php echo $this->language->get('error_country'); ?>" class="required" >
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
						<select name="zone_id" id="zone_id" title="<?php echo $this->language->get('error_zone'); ?>" class="required">
						</select>
						<?php if ($error_zone) { ?>
						<span class="error"><?php echo $error_zone; ?></span>
						<?php } ?>
					</div>
				</div>

			</fieldset>

			<fieldset class="subheading">

				<legend><?php echo $text_payment; ?></legend>

				<div class="field_row">
					<label for="tax" class="lbl"><?php echo $entry_tax; ?></label>
					<div class="fld">
						<input type="text" name="tax" id="tax" value="<?php echo $tax; ?>" size="30" />
					</div>
				</div>

				<div class="field_row">
					<div class="lbl"><?php echo $entry_payment; ?></div>
					<div class="fld">
						<?php if ($payment == 'cheque') { ?>
							<input type="radio" name="payment" value="cheque" id="cheque" checked="checked" />
							<?php } else { ?>
							<input type="radio" name="payment" value="cheque" id="cheque" />
							<?php } ?>
							<label for="cheque"><?php echo $text_cheque; ?></label>

						<?php if ($payment == 'paypal') { ?>
							<input type="radio" name="payment" value="paypal" id="paypal" checked="checked" />
							<?php } else { ?>
							<input type="radio" name="payment" value="paypal" id="paypal" />
							<?php } ?>
							<label for="paypal"><?php echo $text_paypal; ?></label>

						<?php if ($payment == 'bank') { ?>
							<input type="radio" name="payment" value="bank" id="bank" checked="checked" />
							<?php } else { ?>
							<input type="radio" name="payment" value="bank" id="bank" />
							<?php } ?>
							<label for="bank"><?php echo $text_bank; ?></label>
					</div>
				</div>

				<div class="payment" id="payment-cheque">
					<div class="field_row">
						<label for="cheque" class="lbl"><?php echo $entry_cheque; ?></label>
						<div class="fld">
							<input type="text" name="cheque" id="cheque" value="<?php echo $cheque; ?>" size="30" />
						</div>
					</div>
				</div>

				<div class="payment" id="payment-paypal">
					<div class="field_row">
						<label for="paypal" class="lbl"><?php echo $entry_paypal; ?></label>
						<div class="fld">
							<input type="text" name="paypal" id="paypal" value="<?php echo $paypal; ?>" size="30" />
						</div>
					</div>
				</div>

				<div class="payment" id="payment-bank">
					<div class="field_row">
						<label for="bank_name" class="lbl"><?php echo $entry_bank_name; ?></label>
						<div class="fld">
							<input type="text" name="bank_name" id="bank_name" value="<?php echo $bank_name; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_branch_number" class="lbl"><?php echo $entry_bank_branch_number; ?></label>
						<div class="fld">
							<input type="text" name="bank_branch_number" id="bank_branch_number" value="<?php echo $bank_branch_number; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_swift_code" class="lbl"><?php echo $entry_bank_swift_code; ?></label>
						<div class="fld">
							<input type="text" name="bank_swift_code" id="bank_swift_code" value="<?php echo $bank_swift_code; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_account_name" class="lbl"><?php echo $entry_bank_account_name; ?></label>
						<div class="fld">
							<input type="text" name="bank_account_name" id="bank_account_name" value="<?php echo $bank_account_name; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_account_number" class="lbl"><?php echo $entry_bank_account_number; ?></label>
						<div class="fld">
							<input type="text" name="bank_account_number" id="bank_account_number" value="<?php echo $bank_account_number; ?>" size="30" />
						</div>
					</div>
				</div>

			</fieldset>

			<fieldset class="subheading">

			<legend><?php echo $text_your_password; ?></legend>

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

			<?php if ($text_agree) { ?>
			<div class="buttons">
				<br />
				<?php echo $text_agree; ?>
				<?php if ($agree) { ?>
				<input type="checkbox" name="agree" value="1" checked="checked" />
				<?php } else { ?>
				<input type="checkbox" name="agree" value="1" />
				<?php } ?>
				<br /><br />
				<a onclick="$('#register').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>
			<?php } else { ?>
			<div class="buttons grid_8">
				<a onclick="$('#register').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>
			<?php } ?>
		</form>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>
	
	<?php echo $content_bottom; ?>

	<script type="text/javascript"><!--
	$('select[name=\'zone_id\']').load('index.php?route=account/register/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
	//--></script> 
	<script type="text/javascript"><!--
	$('input[name=\'payment\']').bind('change', function() {
		$('.payment').hide();
		
		$('#payment-' + this.value).show();
	});

	$('input[name=\'payment\']:checked').trigger('change');
	//--></script> 
	<script type="text/javascript"><!--
	$('.fancybox').fancybox({
		width: 560,
		height: 560,
		autoDimensions: false
	});
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

			$("#register").validate({
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
							minlength: 3
					}
				}
			});

	</script>

<?php echo $footer; ?>