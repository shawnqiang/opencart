<div class="grid_5 alpha push_1">

	<div class="contentset center"><div class="inner"><span><?php echo $text_new_customer; ?></span></div></div>

	<p><?php echo $text_checkout; ?></p>

	<label for="register">
		<?php if ($account == 'register') { ?>
		<input type="radio" name="account" value="register" id="register" checked="checked" />
		<?php } else { ?>
		<input type="radio" name="account" value="register" id="register" />
		<?php } ?>
		<b><?php echo $text_register; ?></b>
	</label><br />

	<?php if ($guest_checkout) { ?>

	<label for="guest">
		<?php if ($account == 'guest') { ?>
		<input type="radio" name="account" value="guest" id="guest" checked="checked" />
		<?php } else { ?>
		<input type="radio" name="account" value="guest" id="guest" />
		<?php } ?>
		<b><?php echo $text_guest; ?></b>
	</label><br /><br />

	<?php } ?>

	<p><?php echo $text_register_account; ?></p>

	<div class="buttons">
		<a id="button-account" class="button black"><span><?php echo $button_continue; ?></span></a>
	</div>

</div>

<div id="login" class="grid_5 omega push_1">

	<div class="contentset center"><div class="inner"><span><?php echo $text_returning_customer; ?></span></div></div>
		
	<p><?php echo $text_i_am_returning_customer; ?></p>
	
	<div class="field_row">
		<label for="email" class="lbl"><b><?php echo $entry_email; ?></b></label>
		<div class="fld">
			<input type="text" name="email" value="" />
		</div>
	</div>

	<div class="field_row">
		<label for="password" class="lbl"><b><?php echo $entry_password; ?></b></label>
		<div class="fld">
			<input type="password" name="password" value="" />
		</div>
	</div>

	<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>

	<div class="buttons">
		<a id="button-login" class="button black"><span><?php echo $button_login; ?></span></a
	>
	</div>

</div>

<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-login').click();
	}
});
//--></script>   