	</div> <!-- #content_wrapper -->

		<div id="footer" class="container_12">
			
			<div class="column grid_2">
					<h3 class="header"><?php echo $text_information; ?></h3>
					<ul class="content">
						<?php foreach ($informations as $information) { ?>
						<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
						<?php } ?>
					</ul>
			</div>

			<div class="column grid_2">
				<h3 class="header"><?php echo $text_service; ?></h3>
				<ul class="content">
					<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
					<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
					<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>

			<div class="column grid_2">
				<h3 class="header"><?php echo $text_extra; ?></h3>
					<ul class="content">
						<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
						<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
						<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
						<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
					</ul>
			</div>

			<div class="column grid_2">
				<h3 class="header"><?php echo $text_account; ?></h3>
					<ul class="content">
						<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
						<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
						<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
						<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
					</ul>
			</div>

			<div class="grid_4 contact">

			<?php if($this->config->get('sellegance_status')== 1) { ?>
				
				<div class="social">
					<p>
						<?php if($this->config->get('sellegance_facebook_id') != '' || $this->config->get('sellegance_twitter_username') != '' || $this->config->get('sellegance_gplus_id') != '') { ?>
							<!-- <span>Follow Us:</span> -->
						<?php } ?>
						<?php if($this->config->get('sellegance_facebook_id') != '') { ?>
							<a href="http://facebook.com/<?php echo $this->config->get('sellegance_facebook_id'); ?>" target="_blank">
							<img src="catalog/view/theme/sellegance/images/facebook.png" alt="Facebook" title="Facebook"></a>
						<?php } ?>
						<?php if($this->config->get('sellegance_twitter_username') != '') { ?>
							<a href="https://twitter.com/#!/<?php echo $this->config->get('sellegance_twitter_username'); ?>" target="_blank">
							<img src="catalog/view/theme/sellegance/images/twitter.png" alt="Twitter" title="Twitter">
						</a>
						<?php } ?>
						<?php if($this->config->get('sellegance_gplus_id') != '') { ?>
							<a href="https://plus.google.com/u/0/<?php echo $this->config->get('sellegance_gplus_id'); ?>" target="_blank">
							<img src="catalog/view/theme/sellegance/images/gplus.png" alt="Google+" title="Google+">
						</a>
						<?php } ?>
					</p>
				</div>

				<?php if($this->config->get('sellegance_footer_info_text') != '') { ?>
					<div class="info">
						<p><?php echo $this->config->get('sellegance_footer_info_text')?></p>
					</div>
				<?php } ?>

			<?php } ?>

			</div>

			<div id="footend" class="grid_12 clearfix">

				<?php if($this->config->get('sellegance_status')== 1) { ?>
					<?php if($this->config->get('sellegance_copyright') != '') { ?>
						<p id="copy"><?php echo $this->config->get('sellegance_copyright'); ?></p>
					<?php } else { ?>
						
						<p id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2012. Powered by <a class="blue" href="http://www.opencart.com">OpenCart</a>.</p>
					<?php } ?>
				<?php } else { ?>
					<p id="copy"><?php echo $this->config->get('config_name'); ?> &copy;2012. Powered by <a class="blue" href="http://www.opencart.com">OpenCart</a><br /><a href="http://www.everthemes.com">SELLEGANCE</a> by <a href="http://www.everthemes.com">EVERTHEMES.COM</a>.</p>
				<?php } ?>

			</div> <!-- #footend -->

		</div> <!-- #footer -->

		<script type="text/javascript" src="catalog/view/theme/sellegance/js/custom.js"></script>

	</body>
</html>