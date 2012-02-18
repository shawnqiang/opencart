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
		</div>
		<div class="mod">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="payment">

			<fieldset class="subheading">

				<legend><?php echo $text_your_payment; ?></legend>

				<div class="field_row">
					<label for="firstname" class="lbl"><?php echo $entry_tax; ?></label>
					<div class="fld">
						<input type="text" name="tax" value="<?php echo $tax; ?>" size="30" />
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

				<div class="field_row payment" id="payment-cheque">
					<label for="cheque" class="lbl"><?php echo $entry_cheque; ?></label>
					<div class="fld">
						<input type="text" name="cheque" value="<?php echo $cheque; ?>" size="30" />
					</div>
				</div>

				<div class="field_row payment" id="payment-paypal">
					<label for="paypal" class="lbl"><?php echo $entry_paypal; ?></label>
					<div class="fld">
						<input type="text" name="paypal" value="<?php echo $paypal; ?>" size="30" />
					</div>
				</div>

				<div id="payment-bank" class="payment">
					<div class="field_row">
						<label for="bank_name" class="lbl"><?php echo $entry_bank_name; ?></label>
						<div class="fld">
							<input type="text" name="bank_name" value="<?php echo $bank_name; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_branch_number" class="lbl"><?php echo $entry_bank_branch_number; ?></label>
						<div class="fld">
							<input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_swift_code" class="lbl"><?php echo $entry_bank_swift_code; ?></label>
						<div class="fld">
							<input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_account_name" class="lbl"><?php echo $entry_bank_account_name; ?></label>
						<div class="fld">
							<input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" size="30" />
						</div>
					</div>
					<div class="field_row">
						<label for="bank_account_number" class="lbl"><?php echo $entry_bank_account_number; ?></label>
						<div class="fld">
							<input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" size="30" />
						</div>
					</div>
				</div>

			</fieldset>

			<div class="buttons">
				<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
				<a onclick="$('#payment').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>

		</form>
		</div>

	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>
	
	<script type="text/javascript"><!--
	$('input[name=\'payment\']').bind('change', function() {
		$('.payment').hide();
		
		$('#payment-' + this.value).show();
	});

	$('input[name=\'payment\']:checked').trigger('change');
	//--></script>

<?php echo $footer; ?> 