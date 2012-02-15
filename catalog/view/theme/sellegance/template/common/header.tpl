<?php echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>

	<title><?php echo $title; ?></title>
	
	<base href="<?php echo $base; ?>" />

	<meta charset="utf-8" />

	<!-- Palm -->
	<meta name="HandheldFriendly" content="True" />
	<!-- Windows -->
	<meta name="MobileOptimized" content="320" />
	<!-- Safari, Android, BB, Opera -->
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
	
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>

	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>

	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>

	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/sellegance/stylesheet/mobile.min.css" />
	
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/sellegance/stylesheet/stylesheet.css" />

	<script type="text/javascript" >

	// Called by Adapt.js
	function resizeCallback(i, width) {
	
		var html = document.documentElement;
		html.className = html.className.replace(/(\s+)?range_\d/g, '');

		if (i > -1) {
			html.className += ' range_' + i;
		}
	}

	var ADAPT_CONFIG = {

		path: 'catalog/view/theme/sellegance/stylesheet/',
		dynamic: true,
		callback: resizeCallback,
		range: [
			'0px    to 760px  = mobile.min.css',
			'760px  to 980px  = 720.min.css',
			'980px            = 960.min.css'
		]
	};
</script>

<script type="text/javascript" src="catalog/view/theme/sellegance/js/adapt.min.js"></script>

	<?php foreach ($styles as $style) { ?>
		<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>

	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.6.1.min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>

	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

	<script type="text/javascript" src="catalog/view/theme/sellegance/js/jquery.flexslider.min.js"></script>

	<script type="text/javascript" src="catalog/view/theme/sellegance/js/jquery.elastislide.js"></script>

	<script type="text/javascript" charset="utf-8">
		$(window).load(function() {
			$('.flexslider').flexslider();
		});
	</script>

	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
	<!--[if IE]>
	<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
	<![endif]--> 
	<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sellegance/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sellegance/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<?php

// Load custom.css

$filename = 'catalog/view/theme/sellegance/stylesheet/custom.css'; 

if (file_exists($filename)) { ?>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/sellegance/stylesheet/custom.css" />
<?php } 

// If Sellegance module is enabled

if($this->config->get('sellegance_status')== 1) {

	if($this->config->get('sellegance_title_font')!='' || $this->config->get('sellegance_body_font')!='' || $this->config->get('sellegance_small_font') != '' ) {
		
		$regfonts = array('Arial', 'Verdana', 'Helvetica', 'Lucida Grande', 'Trebuchet MS', 'Times New Roman', 'Tahoma', 'Georgia' );
		
		// Titles font
		if (in_array($this->config->get('sellegance_title_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('sellegance_title_font') ?>&v1' rel='stylesheet' type='text/css'><?php 
		} // Body font
		if (in_array($this->config->get('sellegance_body_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('sellegance_body_font') ?>&v1' rel='stylesheet' type='text/css'><?php 
		} // Small text font
		if (in_array($this->config->get('sellegance_small_font'), $regfonts)==false) { 
			?><link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('sellegance_small_font') ?>&v1' rel='stylesheet' type='text/css'>
	<?php 

		} 
	} 
?>

	<style type="text/css">

		body {
			<?php if($this->config->get('sellegance_background_color')!='') { ?>
				background-color: <?php echo $this->config->get('sellegance_background_color'); ?>;
			<?php } 

			if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') $path_image = HTTPS_IMAGE;
			else $path_image = HTTP_IMAGE;

			if($this->config->get('sellegance_custom_image')!='') { ?>
				background-image: url("<?php echo $path_image . $this->config->get('sellegance_custom_image') ?>"); ?>;
				background-position: top center;
				background-repeat: no-repeat;
			<?php } else if($this->config->get('sellegance_custom_pattern')!='') { ?>
				background-image: url("<?php echo $path_image . $this->config->get('sellegance_custom_pattern') ?>"); ?>;
			<?php } else if($this->config->get('sellegance_pattern_overlay')!='none') { ?>
				background-image: url("catalog/view/theme/sellegance/images/patterns/pattern<?php echo $this->config->get('sellegance_pattern_overlay'); ?>.png");
			<?php } else { ?>
				background-image: none;
			<?php } ?>

		}

		<?php if($this->config->get('sellegance_thickbar_color')!='') { ?>
			#topdivider {
				background: <?php echo $this->config->get('sellegance_thickbar_color'); ?>;
			}
		<?php } 

		if($this->config->get('sellegance_bodytext_color')!='') { ?>
			body, .box-category > ul > li> a, .box-category > ul > li> ul > li > a, #maincontent a, #maincontent a:visited, a.backtotop, #cart .content a, .contentset {
				color: <?php echo $this->config->get('sellegance_bodytext_color'); ?>;
			}
		<?php } 

		if($this->config->get('sellegance_lighttext_color')!='') { ?>
			#welcome, #footer .contact .info, .dropd span.selected, .dropd.active span.selected, .compare a, .wishlist a, .remove a, .breadcrumb a, #footer #copy, .product_info .price-tax, .product_info .price .reward, .html_note, .pagination .results {
				color: <?php echo $this->config->get('sellegance_lighttext_color'); ?>;
			}
		<?php } 

		if($this->config->get('sellegance_links_color')!='') { ?>
			#links a, #links a:visited, #footer a, #footer a:visited, .htabs a, .checkout-heading a {
				color: <?php echo $this->config->get('sellegance_links_color'); ?>;
			}
		<?php } 

		if($this->config->get('sellegance_title_color')!='') { ?>
			.heading h1, .product-grid .name a, .product-list .name a, .box-product .name a, #cart h4 a, #footer h3, .checkout-heading, table.list thead td {
				color: <?php echo $this->config->get('sellegance_title_color'); ?> !important;
			}
		<?php } 

		if($this->config->get('sellegance_menu_color')!='') { ?>
			#menu > ul > li > a {
				color: <?php echo $this->config->get('sellegance_menu_color'); ?>;
			}
		<?php } 

		if (($this->config->get('sellegance_button_border_color')!='') || ($this->config->get('sellegance_button_text_color')!='')) { ?>
			.button#button-checkout, a.button#button-checkout, a.button#button-checkout:link, a.button#button-checkout:visited, .button#button-confirm, a.button#button-confirm, a.button#button-confirm:link, a.button#button-confirm:visited, .button.cart, a.button.cart, a.button.cart:link, a.button.cart:visited {
				<?php if ($this->config->get('sellegance_button_border_color')!='') {  ?>
					border-color: <?php echo $this->config->get('sellegance_button_border_color'); ?> !important;
				<?php }
				
				if ($this->config->get('sellegance_button_text_color')!='') {  ?>
					color: <?php echo $this->config->get('sellegance_button_text_color'); ?> !important;
				<?php } ?>
			}
		<?php } 

		if(($this->config->get('sellegance_button_top_color')!='') || ($this->config->get('sellegance_button_bottom_color')!=''))  { ?>
			.button#button-checkout, a.button#button-checkout, a.button#button-checkout:link, a.button#button-checkout:visited, .button#button-confirm, a.button#button-confirm, a.button#button-confirm:link, a.button#button-confirm:visited, .button.cart, a.button.cart, a.button.cart:link, a.button.cart:visited {
		
				background: <?php echo $this->config->get('sellegance_button_bottom_color'); ?>;
				
				background: -webkit-gradient(linear, left top, left bottom, from(<?php echo $this->config->get('sellegance_button_top_color'); ?>), to(<?php echo $this->config->get('sellegance_button_bottom_color'); ?>));
				background: -moz-linear-gradient(top, <?php echo $this->config->get('sellegance_button_top_color'); ?>, <?php echo $this->config->get('sellegance_button_bottom_color'); ?>);
				background: linear-gradient(<?php echo $this->config->get('sellegance_button_top_color'); ?>, <?php echo $this->config->get('sellegance_button_bottom_color'); ?>);

			}

			.button#button-checkout:hover, a.button#button-checkout:hover,
			.button#button-confirm:hover, a.button#button-confirm:hover,
			.button.cart:hover, a.button.cart:hover,
			button#button-checkout:active, a.button#button-checkout:active,
			.button#button-confirm:active, a.button#button-confirm:active,
			.button.cart:active, a.button.cart:active {

					background: <?php echo $this->config->get('sellegance_button_top_color'); ?>;
				
				background: -webkit-gradient(linear, left top, left bottom, from(<?php echo $this->config->get('sellegance_button_top_color'); ?>), to(<?php echo $this->config->get('sellegance_button_top_color'); ?>));
				background: -moz-linear-gradient(top, <?php echo $this->config->get('sellegance_button_top_color'); ?>, <?php echo $this->config->get('sellegance_button_top_color'); ?>);
				background: linear-gradient(<?php echo $this->config->get('sellegance_button_top_color'); ?>, <?php echo $this->config->get('sellegance_button_top_color'); ?>);

			}

		<?php }

		if (($this->config->get('sellegance_2button_border_color')!='') || ($this->config->get('sellegance_2button_text_color')!='')) { ?>
			.button.black, a.button.black, a.button.black:link, a.button.black:visited, a.button.black:hover, a.button.black:active {
				<?php if ($this->config->get('sellegance_2button_border_color')!='') {  ?>
					border-color: <?php echo $this->config->get('sellegance_2button_border_color'); ?> !important;
				<?php }
				
				if ($this->config->get('sellegance_2button_text_color')!='') {  ?>
					color: <?php echo $this->config->get('sellegance_2button_text_color'); ?> !important;
				<?php } ?>
			}
		<?php } 

		if(($this->config->get('sellegance_2button_top_color')!='') || ($this->config->get('sellegance_2button_bottom_color')!=''))  { ?>
			.button.black, a.button.black, a.button.black:link, a.button.black:visited {
		
				background: <?php echo $this->config->get('sellegance_2button_bottom_color'); ?>;
				
				background: -webkit-gradient(linear, left top, left bottom, from(<?php echo $this->config->get('sellegance_2button_top_color'); ?>), to(<?php echo $this->config->get('sellegance_2button_bottom_color'); ?>));
				background: -moz-linear-gradient(top, <?php echo $this->config->get('sellegance_2button_top_color'); ?>, <?php echo $this->config->get('sellegance_2button_bottom_color'); ?>);
				background: linear-gradient(<?php echo $this->config->get('sellegance_2button_top_color'); ?>, <?php echo $this->config->get('sellegance_2button_bottom_color'); ?>);

			}

			.button.black:hover, a.button.black:hover, .button.black:active, a.button.black:active {

					background: <?php echo $this->config->get('sellegance_2button_top_color'); ?>;
				
				background: -webkit-gradient(linear, left top, left bottom, from(<?php echo $this->config->get('sellegance_2button_top_color'); ?>), to(<?php echo $this->config->get('sellegance_2button_top_color'); ?>));
				background: -moz-linear-gradient(top, <?php echo $this->config->get('sellegance_2button_top_color'); ?>, <?php echo $this->config->get('sellegance_2button_top_color'); ?>);
				background: linear-gradient(<?php echo $this->config->get('sellegance_2button_top_color'); ?>, <?php echo $this->config->get('sellegance_2button_top_color'); ?>);

			}
		
		<?php

		} 

		if ($this->config->get('sellegance_body_font') != '' ) {
			$fontpre =  $this->config->get('sellegance_body_font');
			$font = str_replace("+", " ", $fontpre);
		?>

		body, p { font-family:<?php echo $font ?>; }

		<?php } 
			if($this->config->get('sellegance_title_font')!='') {
			$fontpre =  $this->config->get('sellegance_title_font');
			$font = str_replace("+", " ", $fontpre);
		?>

		h1, h2, h3, .contentset, legend, .checkout-heading {
			font-family:<?php echo $font ?>;
		}
		
		<?php }

		if ($this->config->get('sellegance_small_font') != '') {
			$fontpre =  $this->config->get('sellegance_small_font');
			$font = str_replace("+", " ", $fontpre);
		?>
		small, .wishlist a, .compare a, .remove a, .product-compare, .dropd, .product-filter .display li, .product-list .price-tax, .product_info .price-tax, .product_info .price .reward, .html_note, span.error, #footer #copy, .breadcrumb a, .pagination .results, #header #welcome, .help {
			font-family:<?php echo $font ?>;
		}
		<?php } ?>

	</style>

<?php } ?>

<?php echo $google_analytics; ?>


</head>

<body class="slt">

	<div id="header" class="container_12">

		<div id="logo" class="grid_4 push_4">
			<?php if ($logo) { ?>
			 <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
			
			<?php } ?>
		</div>

		<div class="grid_4 push_4 rightbox">

			<div id="cart">
				<div class="head">
					<div class="inner">
						<h4><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></h4>
						<a id="cart_total"><?php echo $text_items; ?></a>
					</div>
				</div>
				<div class="content"></div>
			</div>

			<div id="search">
				
				<div class="searchbox">
					<?php if ($filter_name) { ?>
						<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
					<?php } else { ?>
						<input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
					<?php } ?>
					<button type="button" class="button-search button"></button>
				</div>

			</div>

			<div id="wrapselector"><?php if ($languages && count($languages) > 1){ ?>
					<form action="<?php echo $action; ?>" method="post" id="language_form"enctype="multipart/form-data">
						<div id="language_selector" class="dropd">
							<?php foreach ($languages as $language) { ?>
								<?php if ($language['code'] == $language_code) { ?>
								<span class="selected"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></span>
								<?php } ?>
							<?php } ?>
							<ul class="options">
								<?php foreach ($languages as $language) { ?>
								<li>
									<a href="javascript:;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();">
										<img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
									</a>
								</li>
								<?php } ?>
							</ul>
						</div>
						<input type="hidden" name="language_code" value="" />
						<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
					</form>
				<?php } ?>		
				
				<?php if (count($currencies) > 1) { ?>
					<form action="<?php echo $action; ?>" method="post" id="currency_form">
						<div id="currency_selector" class="dropd">
							<?php foreach ($currencies as $currency) { ?>
								<?php if ($currency['code'] == $currency_code) { ?>
								<span class="selected"><?php echo $currency['title']; ?></span>
								<?php } ?>
							<?php } ?>
							<ul class="options">
								<?php foreach ($currencies as $currency){ ?>
								<li>
									<a href="javascript:;" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['title']; ?></a>
								</li>
								<?php } ?>
							</ul>
						</div>
				
						<div>
							<input type="hidden" name="currency_code" value="" />
							<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
						</div>
					</form>
				<?php } ?></div>

		</div> <!-- .rightbox -->

		<div class="grid_4 pull_8 leftbox">

			<div id="welcome">
				<?php if (!$logged) { ?>
				<?php echo $text_welcome; ?>
				<?php } else { ?>
				<?php echo $text_logged; ?>
				<?php } ?>
			</div>

			<div id="links">
				<a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
				<a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
				<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
			</div>

			<div id="optmenu" style="display:none">
					<h3 class="menuarrow"><span>Menu</span></h3>
					<ul class="menumob" style="display:none">
						<?php foreach ($categories as $category) { ?>
							<li class="main"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							<?php if ($category['children']) { ?>
								<?php for ($i = 0; $i < count($category['children']); $i++) { ?>
									<?php if (isset($category['children'][$i])) { ?>
									<li><a href="<?php echo $category['children'][$i]['href']; ?>">&nbsp;&nbsp;&nbsp;<?php echo $category['children'][$i]['name']; ?></a></li>
									<?php } ?>
								<?php } ?>
							<?php } ?>
						<?php } ?>
					</ul>
			 </div>
			
		</div> <!-- .leftbox -->

<?php if ($categories) { ?>
	
	<div id="menu" class="grid_12 clearfix">
		<ul>
			<li><a href="<?php echo $home; ?>"><img src="catalog/view/theme/sellegance/images/home.png"  title="<?php echo $text_home; ?>" alt="<?php echo $text_home; ?>" /></a></li>
			<?php foreach ($categories as $category) { ?>
			<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
				<?php if ($category['children']) { ?>
				<div>
					<span class="top-arrow"></span>
					<?php for ($i = 0; $i < count($category['children']);) { ?>
					<ul>
						<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
						<?php for (; $i < $j; $i++) { ?>
						<?php if (isset($category['children'][$i])) { ?>
						<li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
						<?php } ?>
						<?php } ?>
					</ul>
					<?php } ?>
				</div>
				<?php } ?>
			</li>
			<?php } ?>
		</ul>
		
	</div><!-- #menu -->

<?php } ?>

</div> <!-- #header -->

<div id="content_wrapper" class="container_12 clearfix">
	<div id="topdivider" class="clearfix"></div>