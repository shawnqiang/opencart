<form action="<?php echo $action; ?>" method="post" id="payment">
  <input type="hidden" name="instId" value="<?php echo $merchant; ?>" />
  <input type="hidden" name="cartId" value="<?php echo $order_id; ?>" />
  <input type="hidden" name="amount" value="<?php echo $amount; ?>" />
  <input type="hidden" name="currency" value="<?php echo $currency; ?>" />
  <input type="hidden" name="desc" value="<?php echo $description; ?>" />
  <input type="hidden" name="name" value="<?php echo $name; ?>" />
  <input type="hidden" name="address" value="<?php echo $address; ?>" />
  <input type="hidden" name="postcode" value="<?php echo $postcode; ?>" />
  <input type="hidden" name="country" value="<?php echo $country; ?>" />
  <input type="hidden" name="tel" value="<?php echo $telephone; ?>" />
  <input type="hidden" name="email" value="<?php echo $email; ?>" />
  <input type="hidden" name="testMode" value="<?php echo $test; ?>" />
  <div class="buttons">
    <div class="right"><a onclick="$('#payment').submit();" class="button confirm"><span><?php echo $button_confirm; ?></span></a></div>
  </div>
</form>
