<?php echo $header; ?>

<?php /* regular and Google fonts array*/
	
	$fonts = array(
		''                         => '- default -',
		'Arial'                    => 'Arial',
		'Verdana'                  => 'Verdana',
		'Helvetica'                => 'Helvetica',
		'Lucida Grande'            => 'Lucida Grande',
		'Trebuchet MS'             => 'Trebuchet MS',
		'Times New Roman'          => 'Times New Roman',
		'Tahoma'                   => 'Tahoma',
		'Georgia'                  => 'Georgia',
		
		'Abel'                     => 'Abel',
		'Abril+Fatface'            => 'Abril Fatface',
		'Aclonica'                 => 'Aclonica',
		'Acme'                     => 'Acme',
		'Actor'                    => 'Actor',
		'Adamina'                  => 'Adamina',
		'Aguafina+Script'          => 'Aguafina Script',
		'Aladin'                   => 'Aladin',
		'Aldrich'                  => 'Aldrich',
		'Alegreya'                 => 'Alegreya',
		'Alegreya+SC'              => 'Alegreya SC',
		'Alex+Brush'               => 'Alex Brush',
		'Alfa+Slab+One'            => 'Alfa Slab One',
		'Alice'                    => 'Alice',
		'Alike'                    => 'Alike',
		'Alike+Angular'            => 'Alike Angular',
		'Allan'                    => 'Allan',
		'Allerta'                  => 'Allerta',
		'Allerta+Stencil'          => 'Allerta Stencil',
		'Allura'                   => 'Allura',
		'Almendra'                 => 'Almendra',
		'Almendra+SC'              => 'Almendra SC',
		'Amaranth'                 => 'Amaranth',
		'Amatic+SC'                => 'Amatic SC',
		'Amethysta'                => 'Amethysta',
		'Andada'                   => 'Andada',
		'Andika'                   => 'Andika',
		'Annie+Use+Your+Telescope' => 'Annie Use Your Telescope',
		'Anonymous+Pro'            => 'Anonymous Pro',
		'Antic'                    => 'Antic',
		'Anton'                    => 'Anton',
		'Arapey'                   => 'Arapey',
		'Architects+Daughter'      => 'Architects Daughter',
		'Arizonia'                 => 'Arizonia',
		'Armata'                   => 'Armata',
		'Artifika'                 => 'Artifika',
		'Arvo'                     => 'Arvo',
		'Asul'                     => 'Asul',
		'Atomic+Age'               => 'Atomic Age',
		'Aubrey'                   => 'Aubrey',
		'Bad+Script'               => 'Bad Script',
		'Bangers'                  => 'Bangers',
		'Basic'                    => 'Basic',
		'Baumans'                  => 'Baumans',
		'Belgrano'                 => 'Belgrano',
		'Bentham'                  => 'Bentham',
		'Bevan'                    => 'Bevan',
		'Bigshot+One'              => 'Bigshot One',
		'Bilbo'                    => 'Bilbo',
		'Bilbo+Swash+Caps'         => 'Bilbo Swash Caps',
		'Bitter'                   => 'Bitter',
		'Black+Ops+One'            => 'Black Ops One',
		'Boogaloo'                 => 'Boogaloo',
		'Bowlby+One'               => 'Bowlby One',
		'Bowlby+One+SC'            => 'Bowlby One SC',
		'Brawler'                  => 'Brawler',
		'Bree+Serif'               => 'Bree Serif',
		'Bubblegum+Sans'           => 'Bubblegum Sans',
		'Buda'                     => 'Buda',
		'Buenard'                  => 'Buenard',
		'Cabin'                    => 'Cabin',
		'Cabin+Condensed'          => 'Cabin Condensed',
		'Caesar+Dressing'          => 'Caesar Dressing',
		'Cagliostro'               => 'Cagliostro',
		'Cambo'                    => 'Cambo',
		'Candal'                   => 'Candal',
		'Cantarell'                => 'Cantarell',
		'Cardo'                    => 'Cardo',
		'Carme'                    => 'Carme',
		'Carter+One'               => 'Carter One',
		'Ceviche+One'              => 'Ceviche One',
		'Changa+One'               => 'Changa One',
		'Chango'                   => 'Chango',
		'Chelsea+Market'           => 'Chelsea Market',
		'Cherry+Cream+Soda'        => 'Cherry Cream Soda',
		'Chewy'                    => 'Chewy',
		'Chicle'                   => 'Chicle',
		'Coda'                     => 'Coda',
		'Coda+Caption'             => 'Coda Caption',
		'Comfortaa'                => 'Comfortaa',
		'Concert+One'              => 'Concert One',
		'Condiment'                => 'Condiment',
		'Contrail+One'             => 'Contrail One',
		'Convergence'              => 'Convergence',
		'Cookie'                   => 'Cookie',
		'Copse'                    => 'Copse',
		'Corben'                   => 'Corben',
		'Cousine'                  => 'Cousine',
		'Coustard'                 => 'Coustard',
		'Covered+By+Your+Grace'    => 'Covered By Your Grace',
		'Crete+Round'              => 'Crete Round',
		'Crimson+Text'             => 'Crimson Text',
		'Crushed'                  => 'Crushed',
		'Cuprum'                   => 'Cuprum',
		'Damion'                   => 'Damion',
		'Dancing+Script'           => 'Dancing Script',
		'Days+One'                 => 'Days One',
		'Delius'                   => 'Delius',
		'Delius+Unicase'           => 'Delius Unicase',
		'Devonshire'               => 'Devonshire',
		'Didact+Gothic'            => 'Didact Gothic',
		'Dorsa'                    => 'Dorsa',
		'Dr+Sugiyama'              => 'Dr Sugiyama',
		'Droid+Sans'               => 'Droid Sans',
		'Droid+Sans+Mono'          => 'Droid Sans Mono',
		'Droid+Serif'              => 'Droid Serif',
		'Duru+Sans'                => 'Duru Sans',
		'Dynalight'                => 'Dynalight',
		'Eater'                    => 'Eater',
		'EB+Garamond'              => 'EB Garamond',
		'Electrolize'              => 'Electrolize',
		'Emblema+One'              => 'Emblema One',
		'Engagement'               => 'Engagement',
		'Enriqueta'                => 'Enriqueta',
		'Erica+One'                => 'Erica One',
		'Esteban'                  => 'Esteban',
		'Euphoria+Script'          => 'Euphoria Script',
		'Exo'                      => 'Exo',
		'Expletus+Sans'            => 'Expletus Sans',
		'Fanwood+Text'             => 'Fanwood Text',
		'Federant'                 => 'Federant',
		'Federo'                   => 'Federo',
		'Felipa'                   => 'Felipa',
		'Fjord+One'                => 'Fjord One',
		'Flamenco'                 => 'Flamenco',
		'Flavors'                  => 'Flavors',
		'Fondamento'               => 'Fondamento',
		'Fontdiner+Swanky'         => 'Fontdiner Swanky',
		'Forum'                    => 'Forum',
		'Francois+One'             => 'Francois One',
		'Fresca'                   => 'Fresca',
		'Fugaz+One'                => 'Fugaz One',
		'Gentium+Basic'            => 'Gentium Basic',
		'Gentium+Book+Basic'       => 'Gentium Book Basic',
		'Geo'                      => 'Geo',
		'Germania+One'             => 'Germania One',
		'Give+You+Glory'           => 'Give You Glory',
		'Glegoo'                   => 'Glegoo',
		'Gloria+Hallelujah'        => 'Gloria Hallelujah',
		'Goblin+One'               => 'Goblin One',
		'Gochi+Hand'               => 'Gochi Hand',
		'Goudy+Bookletter+1911'    => 'Goudy Bookletter 1911',
		'Gravitas+One'             => 'Gravitas One',
		'Gruppo'                   => 'Gruppo',
		'Gudea'                    => 'Gudea',
		'Habibi'                   => 'Habibi',
		'Hammersmith+One'          => 'Hammersmith One',
		'Handlee'                  => 'Handlee',
		'Holtwood+One+SC'          => 'Holtwood One SC',
		'Homenaje'                 => 'Homenaje',
		'Iceberg'                  => 'Iceberg',
		'Iceland'                  => 'Iceland',
		'IM+Fell+Double+Pica'      => 'IM Fell Double Pica',
		'IM+Fell+Double+Pica+SC'   => 'IM Fell Double Pica SC',
		'IM+Fell+DW+Pica+SC'       => 'IM Fell DW Pica SC',
		'IM+Fell+French+Canon'     => 'IM Fell French Canon',
		'IM+Fell+French+Canon+SC'  => 'IM Fell French Canon SC',
		'IM+Fell+Great+Primer'     => 'IM Fell Great Primer',
		'IM+Fell+Great+Primer+SC'  => 'IM Fell Great Primer SC',
		'Inconsolata'              => 'Inconsolata',
		'Inder'                    => 'Inder',
		'Indie+Flower'             => 'Indie Flower',
		'Irish+Grover'             => 'Irish Grover',
		'Italianno'                => 'Italianno',
		'Jim+Nightshade'           => 'Jim Nightshade',
		'Jockey+One'               => 'Jockey One',
		'Josefin+Sans'             => 'Josefin Sans',
		'Josefin+Slab'             => 'Josefin Slab',
		'Judson'                   => 'Judson',
		'Julee'                    => 'Julee',
		'Junge'                    => 'Junge',
		'Jura'                     => 'Jura',
		'Just+Another+Hand'        => 'Just Another Hand',
		'Kameron'                  => 'Kameron',
		'Kaushan+Script'           => 'Kaushan Script',
		'Kelly+Slab'               => 'Kelly Slab',
		'Kenia'                    => 'Kenia',
		'Knewave'                  => 'Knewave',
		'Kotta+One'                => 'Kotta One',
		'Kreon'                    => 'Kreon',
		'Lancelot'                 => 'Lancelot',
		'Lato'                     => 'Lato',
		'Lekton'                   => 'Lekton',
		'Lemon'                    => 'Lemon',
		'Lilita+One'               => 'Lilita One',
		'Limelight'                => 'Limelight',
		'Linden+Hill'              => 'Linden Hill',
		'Lobster'                  => 'Lobster',
		'Lobster+Two'              => 'Lobster Two',
		'Lora'                     => 'Lora',
		'Love+Ya+Like+A+Sister'    => 'Love Ya Like A Sister',
		'Luckiest+Guy'             => 'Luckiest Guy',
		'Lustria'                  => 'Lustria',
		'Macondo'                  => 'Macondo',
		'Macondo+Swash+Caps'       => 'Macondo Swash Caps',
		'Magra'                    => 'Magra',
		'Maiden+Orange'            => 'Maiden Orange',
		'Mako'                     => 'Mako',
		'Marck+Script'             => 'Marck Script',
		'Marko+One'                => 'Marko One',
		'Marmelad'                 => 'Marmelad',
		'Marvel'                   => 'Marvel',
		'Mate'                     => 'Mate',
		'Mate+SC'                  => 'Mate SC',
		'Maven+Pro'                => 'Maven Pro',
		'MedievalSharp'            => 'MedievalSharp',
		'Medula+One'               => 'Medula One',
		'Megrim'                   => 'Megrim',
		'Merienda+One'             => 'Merienda One',
		'Merriweather'             => 'Merriweather',
		'Metamorphous'             => 'Metamorphous',
		'Metrophobic'              => 'Metrophobic',
		'Michroma'                 => 'Michroma',
		'Miltonian+Tattoo'         => 'Miltonian Tattoo',
		'Modern+Antiqua'           => 'Modern Antiqua',
		'Molengo'                  => 'Molengo',
		'Monoton'                  => 'Monoton',
		'Montaga'                  => 'Montaga',
		'Montez'                   => 'Montez',
		'Mountains+of+Christmas'   => 'Mountains of Christmas',
		'Mr+Bedfort'               => 'Mr Bedfort',
		'Mr+Dafoe'                 => 'Mr Dafoe',
		'Mrs+Sheppards'            => 'Mrs Sheppards',
		'Muli'                     => 'Muli',
		'Neucha'                   => 'Neucha',
		'Neuton'                   => 'Neuton',
		'News+Cycle'               => 'News Cycle',
		'Niconne'                  => 'Niconne',
		'Nixie+One'                => 'Nixie One',
		'Nobile'                   => 'Nobile',
		'Norican'                  => 'Norican',
		'Nosifer'                  => 'Nosifer',
		'Nothing+You+Could+Do'     => 'Nothing You Could Do',
		'Noticia+Text'             => 'Noticia Text',
		'Nova+Cut'                 => 'Nova Cut',
		'Nova+Flat'                => 'Nova Flat',
		'Nova+Mono'                => 'Nova Mono',
		'Nova+Oval'                => 'Nova Oval',
		'Nova+Round'               => 'Nova Round',
		'Nova+Script'              => 'Nova Script',
		'Nova+Slim'                => 'Nova Slim',
		'Nova+Square'              => 'Nova Square',
		'Numans'                   => 'Numans',
		'Nunito'                   => 'Nunito',
		'Old+Standard+TT'          => 'Old Standard TT',
		'Oldenburg'                => 'Oldenburg',
		'Open+Sans'                => 'Open Sans',
		'Open+Sans+Condensed'      => 'Open Sans Condensed',
		'Orbitron'                 => 'Orbitron',
		'Original+Surfer'          => 'Original Surfer',
		'Oswald'                   => 'Oswald',
		'Overlock'                 => 'Overlock',
		'Overlock+SC'              => 'Overlock SC',
		'Ovo'                      => 'Ovo',
		'Pacifico'                 => 'Pacifico',
		'Parisienne'               => 'Parisienne',
		'Passero+One'              => 'Passero One',
		'Passion+One'              => 'Passion One',
		'Patrick+Hand'             => 'Patrick Hand',
		'Patua+One'                => 'Patua One',
		'Paytone+One'              => 'Paytone One',
		'Permanent+Marker'         => 'Permanent Marker',
		'Petrona'                  => 'Petrona',
		'Philosopher'              => 'Philosopher',
		'Piedra'                   => 'Piedra',
		'Pinyon+Script'            => 'Pinyon Script',
		'Play'                     => 'Play',
		'Playball'                 => 'Playball',
		'Playfair+Display'         => 'Playfair Display',
		'Podkova'                  => 'Podkova',
		'Poller+One'               => 'Poller One',
		'Pompiere'                 => 'Pompiere',
		'Prata'                    => 'Prata',
		'Prociono'                 => 'Prociono',
		'PT+Sans'                  => 'PT Sans',
		'PT+Sans+Caption'          => 'PT Sans Caption',
		'PT+Sans+Narrow'           => 'PT Sans Narrow',
		'PT+Serif'                 => 'PT Serif',
		'PT+Serif+Caption'         => 'PT Serif Caption',
		'Quantico'                 => 'Quantico',
		'Quattrocento'             => 'Quattrocento',
		'Quattrocento+Sans'        => 'Quattrocento Sans',
		'Questrial'                => 'Questrial',
		'Quicksand'                => 'Quicksand',
		'Qwigley'                  => 'Qwigley',
		'Radley'                   => 'Radley',
		'Raleway'                  => 'Raleway',
		'Rammetto+One'             => 'Rammetto One',
		'Rancho'                   => 'Rancho',
		'Rationale'                => 'Rationale',
		'Redressed'                => 'Redressed',
		'Reenie+Beanie'            => 'Reenie Beanie',
		'Ribeye'                   => 'Ribeye',
		'Ribeye+Marrow'            => 'Ribeye Marrow',
		'Righteous'                => 'Righteous',
		'Rochester'                => 'Rochester',
		'Rock+Salt'                => 'Rock Salt',
		'Rokkitt'                  => 'Rokkitt',
		'Ropa+Sans'                => 'Ropa Sans',
		'Rosario'                  => 'Rosario',
		'Ruda'                     => 'Ruda',
		'Ruluko'                   => 'Ruluko',
		'Ruslan+Display'           => 'Ruslan Display',
		'Sail'                     => 'Sail',
		'Salsa'                    => 'Salsa',
		'Sancreek'                 => 'Sancreek',
		'Sansita+One'              => 'Sansita One',
		'Satisfy'                  => 'Satisfy',
		'Shadows+Into+Light'       => 'Shadows Into Light',
		'Shanti'                   => 'Shanti',
		'Share'                    => 'Share',
		'Sigmar+One'               => 'Sigmar One',
		'Signika'                  => 'Signika',
		'Signika+Negative'         => 'Signika Negative',
		'Six+Caps'                 => 'Six Caps',
		'Slackey'                  => 'Slackey',
		'Smokum'                   => 'Smokum',
		'Smythe'                   => 'Smythe',
		'Sofia'                    => 'Sofia',
		'Sonsie+One'               => 'Sonsie One',
		'Sorts+Mill+Goudy'         => 'Sorts Mill Goudy',
		'Special+Elite'            => 'Special Elite',
		'Spicy+Rice'               => 'Spicy Rice',
		'Spinnaker'                => 'Spinnaker',
		'Spirax'                   => 'Spirax',
		'Squada+One'               => 'Squada One',
		'Stardos+Stencil'          => 'Stardos Stencil',
		'Stint+Ultra+Condensed'    => 'Stint Ultra Condensed',
		'Stoke'                    => 'Stoke',
		'Sue+Ellen+Francisco'      => 'Sue Ellen Francisco',
		'Supermercado+One'         => 'Supermercado One',
		'Syncopate'                => 'Syncopate',
		'Tangerine'                => 'Tangerine',
		'Tenor+Sans'               => 'Tenor Sans',
		'Terminal+Dosis'           => 'Terminal Dosis',
		'Tienne'                   => 'Tienne',
		'Tinos'                    => 'Tinos',
		'Titan+One'                => 'Titan One',
		'Trade+Winds'              => 'Trade Winds',
		'Trochut'                  => 'Trochut',
		'Trykker'                  => 'Trykker',
		'Tulpen+One'               => 'Tulpen One',
		'Ubuntu'                   => 'Ubuntu',
		'Ubuntu+Condensed'         => 'Ubuntu Condensed',
		'Ubuntu+Mono'              => 'Ubuntu Mono',
		'Ultra'                    => 'Ultra',
		'Uncial+Antiqua'           => 'Uncial Antiqua',
		'UnifrakturCook'           => 'UnifrakturCook',
		'UnifrakturMaguntia'       => 'UnifrakturMaguntia',
		'Unkempt'                  => 'Unkempt',
		'Unlock'                   => 'Unlock',
		'Varela'                   => 'Varela',
		'Varela+Round'             => 'Varela Round',
		'Vibur'                    => 'Vibur',
		'Vidaloka'                 => 'Vidaloka',
		'Viga'                     => 'Viga',
		'Volkhov'                  => 'Volkhov',
		'Vollkorn'                 => 'Vollkorn',
		'Voltaire'                 => 'Voltaire',
		'VT323'                    => 'VT323',
		'Waiting+for+the+Sunrise'  => 'Waiting for the Sunrise',
		'Wallpoet'                 => 'Wallpoet',
		'Walter+Turncoat'          => 'Walter Turncoat',
		'Wellfleet'                => 'Wellfleet',
		'Wire+One'                 => 'Wire One',
		'Yanone+Kaffeesatz'        => 'Yanone Kaffeesatz',
		'Yellowtail'               => 'Yellowtail',
		'Yeseva+One'               => 'Yeseva One',
		'Yesteryear'               => 'Yesteryear',
		); 

// Default values

if(empty($sellegance_background_color)) $sellegance_background_color ="FBFBFB";
if(empty($sellegance_thickbar_color)) $sellegance_thickbar_color ="000000";
if(empty($sellegance_title_color)) $sellegance_title_color ="333333";

if(empty($sellegance_bodytext_color)) $sellegance_bodytext_color ="333333";
if(empty($sellegance_lighttext_color)) $sellegance_lighttext_color ="777777";

if(empty($sellegance_menu_color)) $sellegance_menu_color ="333333";
if(empty($sellegance_links_color)) $sellegance_links_color ="333333";

// add to cart buttons
if(empty($sellegance_button_top_color)) $sellegance_button_top_color ="DD4B39";
if(empty($sellegance_button_bottom_color)) $sellegance_button_bottom_color ="D14836";
if(empty($sellegance_button_border_color)) $sellegance_button_border_color ="C53727";
if(empty($sellegance_button_text_color)) $sellegance_button_text_color ="FFFFFF";

// secondary buttons
if(empty($sellegance_2button_top_color)) $sellegance_2button_top_color ="505050";
if(empty($sellegance_2button_bottom_color)) $sellegance_2button_bottom_color ="191919";
if(empty($sellegance_2button_border_color)) $sellegance_2button_border_color ="373737";
if(empty($sellegance_2button_text_color)) $sellegance_2button_text_color ="FFFFFF";

?>

<style type="text/css">
	.customhelp { color: #666; font-size:0.9em; }
	.color { border:1px solid #AAA; }
</style>

<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>

<div class="box">

	<div class="heading">
		<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
	</div>

	<div class="content">

	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

		<input type="hidden" name="return_to" id="return_to" value="<?php echo $return_to?>" />

		<div style="margin-bottom: 10px">
			<label><?php echo $entry_status; ?></label>
			<select name="sellegance_status">
				<?php if ($sellegance_status) { ?>
				<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
				<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
				<option value="1"><?php echo $text_enabled; ?></option>
				<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			</select>
		</div>

		<div id="settings_tabs" class="htabs clearfix">
			<a href="#layout_settings">Layout</a>
			<a href="#footer_settings">Footer</a>
		</div>

		<div id="layout_settings" class="divtab">

			<table class="form">

				<tr><td colspan="2"><h3><?php echo $entry_pattern_sub; ?></h3></td></tr>

				<tr>
					<td><?php echo $entry_pattern_overlay; ?></td>
					<td>
						<div>
							<span class="customhelp">1.</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellegance/images/patterns/selector/pattern1.png" alt="pattern 1">
							<span class="customhelp">2.</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellegance/images/patterns/selector/pattern2.png" alt="pattern 2">
							<span class="customhelp">3.</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellegance/images/patterns/selector/pattern3.png" alt="pattern 3">
							<span class="customhelp">4.</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellegance/images/patterns/selector/pattern4.png" alt="pattern 4">
							<span class="customhelp">5.</span><img src="<?php echo HTTP_CATALOG; ?>catalog/view/theme/sellegance/images/patterns/selector/pattern5.png" alt="pattern 5">
						</div>
						<select name="sellegance_pattern_overlay">
							<option value="none"selected="selected">none</option>
							<?php for ($i = 1; $i <= 5; $i++) { 
									($this->config->get('sellegance_pattern_overlay')== $i) ? $currentpat = 'selected' : $currentpat = '';
								?>
								<option value="<?php echo $i; ?>" <?php echo $currentpat; ?>><?php echo $i; ?></option>'; 
								<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_pattern_overlay_help; ?></span>
					</td>
				</tr>
				
				<tr>
					<td><?php echo $entry_custom_pattern; ?> </td>
					<td>
						<input type="hidden" name="sellegance_custom_pattern" value="<?php echo $sellegance_custom_pattern; ?>" id="sellegance_custom_pattern" />
						<img src="<?php echo $sellegance_pattern_preview; ?>" id="sellegance_pattern_preview" />
						<br /><a onclick="image_upload('sellegance_custom_pattern', 'sellegance_pattern_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#sellegance_pattern_preview').attr('src', '<?php echo $no_image; ?>'); $('#sellegance_custom_pattern').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>
				<tr>   
					<td>
						<?php echo $entry_custom_image; ?><br>
						<span class="customhelp"><?php echo $entry_custom_image_help; ?></span>
					</td>
					<td>
						<input type="hidden" name="sellegance_custom_image" value="<?php echo $sellegance_custom_image; ?>" id="sellegance_custom_image" />
						<img src="<?php echo $sellegance_image_preview; ?>" alt="" id="sellegance_image_preview" />
						<br /><a onclick="image_upload('sellegance_custom_image', 'sellegance_image_preview');"><?php echo $text_select; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#sellegance_image_preview').attr('src', '<?php echo $no_image; ?>'); $('#sellegance_custom_image').attr('value', '');"><?php echo $text_clear; ?></a>
					</td>
				</tr>

				<tr><td colspan="2">
					<h3><?php echo $entry_colors_sub; ?></h3>
				<div class="customhelp"><?php echo $entry_colors_sub_help; ?></div></td></tr>

				<tr>
					<td><?php echo $entry_background_color; ?></td>
					<td><input type="text" name="sellegance_background_color" value="<?php echo $sellegance_background_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
				<tr>
					<td><?php echo $entry_thickbar_color; ?></td>
					<td><input type="text" name="sellegance_thickbar_color" value="<?php echo $sellegance_thickbar_color; ?>" size="6" class="color {required:false,hash:true}"  />
					<span class="customhelp"><?php echo $entry_thickbar_color_help; ?></span>
					</td>
				</tr> 
				<tr>
					<td><?php echo $entry_title_color; ?></td>
					<td><input type="text" name="sellegance_title_color" value="<?php echo $sellegance_title_color; ?>" size="6" class="color {required:false,hash:true}"  />
						<span class="customhelp"><?php echo $entry_title_color_help; ?></span></td>
				</tr>
				<tr>
					<td><?php echo $entry_body_color; ?></td>
					<td><input type="text" name="sellegance_bodytext_color" value="<?php echo $sellegance_bodytext_color; ?>" size="6" class="color {required:false,hash:true}"  />
						<span class="customhelp"><?php echo $entry_body_color_help; ?></span></td>
				</tr>
				<tr>
					<td><?php echo $entry_light_color; ?></td>
					<td><input type="text" name="sellegance_lighttext_color" value="<?php echo $sellegance_lighttext_color; ?>" size="6" class="color {required:false,hash:true}"  />
						<span class="customhelp"><?php echo $entry_light_color_help; ?></span></td>
				</tr>
				<tr>
					<td><?php echo $entry_menu_color; ?></td>
					<td><input type="text" name="sellegance_menu_color" value="<?php echo $sellegance_menu_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>
				<tr>
					<td><?php echo $entry_links_color; ?></td>
					<td><input type="text" name="sellegance_links_color" value="<?php echo $sellegance_links_color; ?>" size="6" class="color {required:false,hash:true}"  /></td>
				</tr>

				<tr>
					<td><?php echo $entry_button_color; ?></td>
					<td>
					<span class="customhelp">Top:</span> <input type="text" name="sellegance_button_top_color" value="<?php echo $sellegance_button_top_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Bottom:</span> <input type="text" name="sellegance_button_bottom_color" value="<?php echo $sellegance_button_bottom_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Border:</span> <input type="text" name="sellegance_button_border_color" value="<?php echo $sellegance_button_border_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Text color:</span> <input type="text" name="sellegance_button_text_color" value="<?php echo $sellegance_button_text_color; ?>" size="6" class="color {required:false,hash:true}" />
					</td>
				</tr>

				<tr>
					<td>
						<?php echo $entry_2button_color; ?>
						<div class="customhelp"><?php echo $entry_2button_color_help; ?></div>
					</td>
					<td>
					<span class="customhelp">Top:</span> <input type="text" name="sellegance_2button_top_color" value="<?php echo $sellegance_2button_top_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Bottom:</span> <input type="text" name="sellegance_2button_bottom_color" value="<?php echo $sellegance_2button_bottom_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Border:</span> <input type="text" name="sellegance_2button_border_color" value="<?php echo $sellegance_2button_border_color; ?>" size="6" class="color {required:false,hash:true}" />
					<span class="customhelp">Text color:</span> <input type="text" name="sellegance_2button_text_color" value="<?php echo $sellegance_2button_text_color; ?>" size="6" class="color {required:false,hash:true}" />
					</td>
				</tr>

				<tr><td colspan="2"><h3><?php echo $entry_fonts_sub; ?></h3></td></tr>

				<tr>
					<td><?php echo $entry_title_font; ?></td>
					<td>
						<select name="sellegance_title_font">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv ==  $this->config->get('sellegance_title_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_title_font_help; ?></span>

					</td>
				</tr>

				<tr>
					<td><?php echo $entry_body_font ?></td>
					<td>
						<select name="sellegance_body_font">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv ==  $this->config->get('sellegance_body_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_body_font_help; ?></span>

					</td>
				</tr>

			 <tr>
					<td><?php echo $entry_small_font; ?></td>
					<td>
						<select name="sellegance_small_font">
							<?php foreach ($fonts as $fv => $fc) { ?>
								<?php ($fv ==  $this->config->get('sellegance_small_font')) ? $currentfont = 'selected' : $currentfont=''; ?>
								<option value="<?php echo $fv; ?>" <?php echo $currentfont; ?> ><?php echo $fc; ?></option>	
							<?php } ?>
						</select>
						<span class="customhelp"><?php echo $entry_small_font_help; ?></span>
						</td>
					</tr>

				</table>
				
			</div>

			<div id="footer_settings" class="divtab">
			
				<table class="form">
					
					<tr>
						<td><?php echo $entry_facebook_id; ?></td>
						<td><input type="text" name="sellegance_facebook_id" value="<?php echo $sellegance_facebook_id; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_twitter_username; ?></td>
						<td><input type="text" name="sellegance_twitter_username" value="<?php echo $sellegance_twitter_username; ?>" /></td>
					</tr>          
					<tr>
						<td><?php echo $entry_gplus_id; ?></td>
						<td><input type="text" name="sellegance_gplus_id" value="<?php echo $sellegance_gplus_id; ?>" /></td>
					</tr>

					<tr>
						<td><?php echo $entry_footer_info_text; ?></td>
						<td><textarea name="sellegance_footer_info_text" cols="52" rows="5"><?php echo $sellegance_footer_info_text; ?></textarea>
						<span class="customhelp"><?php echo $entry_footer_info_text_help; ?></span>
						</td>
					</tr>

					<tr>
						<td><?php echo $entry_copyright_text; ?></td>
						<td><textarea name="sellegance_copyright" cols="52" rows="2"><?php echo $sellegance_copyright; ?></textarea>
						<span class="customhelp"><?php echo $entry_copyright_text_help; ?></span>
						</td>
					</tr>

				</table>

			</div>

		</form>

	</div>

</div>

<?php echo $footer; ?>

<script type="text/javascript">

	$('#settings_tabs a').tabs(); 
	$('#footer_settings_tabs a').tabs();

</script>

<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script> 

<script type="text/javascript"><!--

$(document).ready(function() {

	$('	#sellegance_background_color').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });

//--></script>

<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 