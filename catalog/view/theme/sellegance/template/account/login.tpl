<?php echo $header; ?>

	<?php echo $content_top; ?>

	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	
	<div class="heading grid_12">
		
		<h1><?php echo $heading_title; ?></h1>

		<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>

	</div>

	<div id="maincontent" class="grid_10 push_1">

		<div class="grid_5 alpha">
		
			<div class="contentset center"><div class="inner"><span><?php echo $text_new_customer; ?></span></div></div>
			<p><b><?php echo $text_register; ?></b></p>
			<p><?php echo $text_register_account; ?></p>
			
			<div class="buttons">
				<a href="<?php echo $register; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>
		
		</div>

		<div class="grid_5 omega">

			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login">
				
				<div class="contentset center"><div class="inner"><span><?php echo $text_returning_customer; ?></span></div></div>
					
				<p><?php echo $text_i_am_returning_customer; ?></p>
				
				<div class="field_row">
					<label for="email" class="lbl"><b><?php echo $entry_email; ?></b></label>
					<div class="fld">
						<input type="text" name="email" id="email" />
					</div>
				</div>

				<div class="field_row">
					<label for="password" class="lbl"><b><?php echo $entry_password; ?></b></label>
					<div class="fld">
						<input type="password" name="password" id="password" />
					</div>
				</div>

				<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>

				<div class="buttons">
					<a onclick="$('#login').submit();" class="button black"><span><?php echo $button_login; ?></span></a>
				</div>

				<?php if ($redirect) { ?>
				<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
				<?php } ?>

			</form>
		
		</div>

	</div><!-- #maincontent -->

	<?php echo $content_bottom; ?>

	<script type="text/javascript"><!--
	$('#login input').keydown(function(e) {
		if (e.keyCode == 13) {
			$('#login').submit();
		}
	});
	//--></script>

<?php echo $footer; ?>