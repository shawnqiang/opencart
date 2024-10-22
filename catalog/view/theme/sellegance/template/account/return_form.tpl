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
		<div class="mod-bd">
		<?php echo $text_description; ?>

		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="return">

			<fieldset class="subheading">
				
				<legend><?php echo $text_order; ?></legend>

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
					<label for="order_id" class="lbl"><span class="req_mark">*</span> <?php echo $entry_order_id; ?></label>
					<div class="fld">
					<input type="text" name="order_id" value="<?php echo $order_id; ?>" title="<?php echo $this->language->get('error_order_id'); ?>" class="required" size="30" />
					<?php if ($error_order_id) { ?>
					<span class="error"><?php echo $error_order_id; ?></span>
					<?php } ?>
					</div>
				</div>

				<div class="field_row">
					<label for="date_ordered" class="lbl"><?php echo $entry_date_ordered; ?></label>
					<div class="fld">
					<input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="date" size="30" />
					</div>
				</div>

			</fieldset>

			<fieldset class="subheading">
				
				<legend><?php echo $text_product; ?></legend>

				<div id="return-product">
			
					<?php $return_product_row = 0; ?>
					
					<?php foreach ($return_products as $return_product) { ?>
					
					<div id="return-product-row<?php echo $return_product_row; ?>" class="return_product_item">
					
						<div class="return-product">
						
							<div class="return-name"><span class="required">*</span> <strong><?php echo $entry_product; ?></strong><br />
								<input type="text" name="return_product[<?php echo $return_product_row; ?>][name]" value="<?php echo $return_product['name']; ?>" />
								<br />
								<?php if (isset($error_name[$return_product_row])) { ?>
								<span class="error"><?php echo $error_name[$return_product_row]; ?></span>
								<?php } ?>
							</div>

							<div class="return-model"><span class="required">*</span> <b><?php echo $entry_model; ?></b><br />
								<input type="text" name="return_product[<?php echo $return_product_row; ?>][model]" value="<?php echo $return_product['model']; ?>" />
								<br />
								<?php if (isset($error_model[$return_product_row])) { ?>
								<span class="error"><?php echo $error_model[$return_product_row]; ?></span>
								<?php } ?>
							</div>

							<div class="return-quantity"><b><?php echo $entry_quantity; ?></b><br />
								<input type="text" name="return_product[<?php echo $return_product_row; ?>][quantity]" value="<?php echo $return_product['quantity']; ?>" />
							</div>

						</div>

						<div class="return-detail">
				
							<div class="return-reason"><span class="required">*</span> <b><?php echo $entry_reason; ?></b>
								
								<?php foreach ($return_reasons as $return_reason) { ?>
									<?php if (isset($return_product['return_reason_id']) && $return_reason['return_reason_id'] == $return_product['return_reason_id']) { ?>
									
										<div>
											<input type="radio" name="return_product[<?php echo $return_product_row; ?>][return_reason_id]" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
											<label for="return-reason-id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label>
										</div>

									<?php } else { ?>

										<div>
											<input type="radio" name="return_product[<?php echo $return_product_row; ?>][return_reason_id]" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>" />
											<label for="return-reason_id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label>
										</div>

									<?php  } ?>
								<?php  } ?>

								<?php if (isset($error_reason[$return_product_row])) { ?>
									<span class="error"><?php echo $error_reason[$return_product_row]; ?></span>
								<?php } ?>

							</div>
							
							<div class="return-opened">

								<b><?php echo $entry_opened; ?></b><br />

								<?php if ($return_product['opened']) { ?>
								<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="1" id="opened<?php echo $return_product_row; ?>" checked="checked" />
								<?php } else { ?>
								<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="1" id="opened<?php echo $return_product_row; ?>" />
								<?php } ?>
								<label for="opened<?php echo $return_product_row; ?>"><?php echo $text_yes; ?></label>
								<?php if (!$return_product['opened']) { ?>
								<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="0" id="unopened<?php echo $return_product_row; ?>" checked="checked" />
								<?php } else { ?>
								<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="0" id="unopened<?php echo $return_product_row; ?>" />
								<?php } ?>
								<label for="unopened<?php echo $return_product_row; ?>"><?php echo $text_no; ?></label>
								<br />
								<br />
								
								<?php echo $entry_fault_detail; ?><br />

								<textarea name="return_product[<?php echo $return_product_row; ?>][comment]" cols="45" rows="6"><?php echo $return_product['comment']; ?></textarea>

							</div>

							<div class="return-remove"><a onclick="$('#return-product-row<?php echo $return_product_row; ?>').remove();" class="button small"><?php echo $button_remove; ?></a></div>
						
						</div>
					
					</div>

					<?php $return_product_row++; ?>
					<?php } ?>
				
				</div>

				<div class="buttons">
					<div class=""><a onclick="addReturnProduct();" class="button small black" id="add_product"><span><?php echo $button_add_product; ?></span></a></div>
				</div>


			</fieldset>

			<fieldset class="subheading">
			
				<legend><?php echo $text_additional; ?></legend>

				<div class="return-additional">
					
					<div class="return-comment grid_5 alpha">
						<textarea name="comment" cols="50" rows="6"><?php echo $comment; ?></textarea>
					</div>
					
					<div class="return-captcha grid_4 omega">
					
						<div class="field_row"><?php echo $entry_captcha; ?><br />
							<input type="text" name="captcha" value="<?php echo $captcha; ?>" />
						</div>

						<div class="field_row">
							<img src="index.php?route=account/return/captcha" alt="" />
							<?php if ($error_captcha) { ?>
							<span class="error"><?php echo $error_captcha; ?></span>
							<?php } ?>
						</div>

					</div>

				</div>

			</fieldset>

			<div class="buttons">
				<a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
				<a onclick="$('#return').submit();" class="button black"><span><?php echo $button_continue; ?></span></a>
			</div>
			
		</form>
		</div>
		</div>
	</div> <!-- #maincontent -->

	<?php echo $column_left; ?>
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>
	
	<script type="text/javascript"><!--
	var return_product_row = <?php echo $return_product_row; ?>;

	function addReturnProduct() {
		html  = '<div id="return-product-row' + return_product_row + '" class="return_product_item" >';
		html += '    <div class="return-product">';
		html += '      <div class="return-name grid_3  alpha"><span class="req_mark">*</span> <?php echo $entry_product; ?><br /><input type="text" name="return_product[' + return_product_row + '][name]" value="" /></div>';
		html += '      <div class="return-model grid_3 "><span class="req_mark">*</span> <?php echo $entry_model; ?><br /><input type="text" name="return_product[' + return_product_row + '][model]" value="" /></div>';
		html += '      <div class="return-quantity grid_1 "><?php echo $entry_quantity; ?><br /><input type="text" name="return_product[' + return_product_row + '][quantity]" value="1" /></div>';
		html += '    <div class="return-remove grid_1  omega"><a onclick="$(\'#return-product-row' + return_product_row + '\').remove();" class="button small"><?php echo $button_remove; ?></a></div>';
		html += '    </div>';
		html += '    <div class="return-detail">';
		html += '      <div class="return-reason grid_3  alpha"><span class="req_mark">*</span> <?php echo $entry_reason; ?>';
		<?php foreach ($return_reasons as $return_reason) { ?>
		html += '            <div><input type="radio" name="return_product[' + return_product_row + '][return_reason_id]" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id' + return_product_row + '<?php echo $return_reason['return_reason_id']; ?>" />';
		html += '            <label for="return-reason-id' + return_product_row + '<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label></div>';
		<?php  } ?>
		html += '    </div>';
		html += '    <div class="return-opened  grid_3"><?php echo $entry_opened; ?><br />';
		html += '      <input type="radio" name="return_product[' + return_product_row + '][opened]" value="1" id="opened' + return_product_row + '" checked="checked" /><?php echo $text_yes; ?><label for="opened' + return_product_row + '"></label> <input type="radio" name="return_product[' + return_product_row + '][opened]" value="0" id="unopened' + return_product_row + '" /><label for="unopened' + return_product_row + '"><?php echo $text_no; ?></label><br /><br />';	
		html += '	   <?php echo $entry_fault_detail; ?><br /><textarea name="return_product[' + return_product_row + '][comment]" cols="45" rows="4"></textarea>';
		html += '    </div>';
		
		html += '</div>';
		
		$('#return-product').append(html);
	 
		$('#return-product-row' + return_product_row + ' .date').datepicker({dateFormat: 'yy-mm-dd'});
		
		return_product_row++;
	}
	//--></script> 
	<script type="text/javascript"><!--
	$(document).ready(function() {
		$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	});
	//--></script>

	<?php echo $footer; ?>