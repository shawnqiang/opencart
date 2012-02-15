<?php echo $header; ?>

<?php echo $content_top; ?>

	<div class="breadcrumb grid_12">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>

	<div class="heading grid_12">
		<h1><?php echo $heading_title; ?></h1>
		<div id="notification"></div>
	</div>

	<?php ($column_left) ? $main = "push_3" : $main=""; ?>

	<div id="maincontent" class="grid_9 <?php echo $main; ?>">

	<div class="search-criteria">
		
		<div class="contentset center"><div class="inner"><span><?php echo $text_critea; ?></span></div></div>
			
			<div>
			<?php if ($filter_name) { ?>
				<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" size="42" class="search-box"/>
				<?php } else { ?>
				<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" class="search-box"/>
				<?php } ?>
			</div>

			<select name="filter_category_id" class="filter-category">
				<option value="0"><?php echo $text_category; ?></option>
				<?php foreach ($categories as $category_1) { ?>
				<?php if ($category_1['category_id'] == $filter_category_id) { ?>
				<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
				<?php } ?>
				<?php foreach ($category_1['children'] as $category_2) { ?>
				<?php if ($category_2['category_id'] == $filter_category_id) { ?>
				<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
				<?php } ?>
				<?php foreach ($category_2['children'] as $category_3) { ?>
				<?php if ($category_3['category_id'] == $filter_category_id) { ?>
				<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
				<?php } ?>
				<?php } ?>
				<?php } ?>
				<?php } ?>
			</select>

			<div class="clearboth">
				<?php if ($filter_sub_category) { ?>
				<input type="checkbox" name="filter_sub_category" value="1" id="sub_category" checked="checked" />
				<?php } else { ?>
				<input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
				<?php } ?>
				<label for="sub_category"><?php echo $text_sub_category; ?></label>
			</div><div class="clearboth">
				<?php if ($filter_description) { ?>
				<input type="checkbox" name="filter_description" value="1" id="description" checked="checked" />
				<?php } else { ?>
				<input type="checkbox" name="filter_description" value="1" id="description" />
				<?php } ?>
				<label for="description"><?php echo $entry_description; ?></label>
			</div>
	
	<div class="buttons">
		<a id="button-search" class="button black"><span><?php echo $button_search; ?></span></a>
	</div>
	</div>

	<div class="contentset center"><div class="inner"><span><?php echo $text_search; ?></span></div></div>

	<?php if ($products) { ?>

	<div class="product-filter">
		<ul class="display"><li id="list" class="active"><span class="icon"></span><?php echo $text_list; ?></li><li id="grid"><a onclick="display(\'grid\');"><span class="icon"></span><?php echo $text_grid; ?></a></li></ul>

		<span class="product-compare"><a href="<?php echo $compare; ?>" id="compare_total"><?php echo $text_compare; ?></a></span>
		
		<div class="list_options"> 

		 <span class="sort"><?php echo $text_sort; ?>
			<select onchange="location = this.value;">
				<?php foreach ($sorts as $sorts) { ?>
				<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
				<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
				<?php } ?>
				<?php } ?>
			</select>
		</span>

		 <span class="limit"><?php echo $text_limit; ?>
			<select onchange="location = this.value;">
				<?php foreach ($limits as $limits) { ?>
				<?php if ($limits['value'] == $limit) { ?>
				<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
				<?php } ?>
				<?php } ?>
			</select>
		</span>

		</div>

	</div>
	
	<div class="product-list">
		<?php foreach ($products as $product) { ?>
		<div>
			<div class="name_desc grid_5 alpha">
				<?php if ($product['thumb']) { ?>
				<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
				<?php } ?>
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<?php if ($product['rating']) { ?>
				<div class="rating"><img src="catalog/view/theme/sellegance/images/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
				<?php } ?>
				<div class="description"><?php echo $product['description']; ?></div>
			</div>
			<?php if ($product['price']) { ?>
			<div class="price grid_2">
				<?php if (!$product['special']) { ?>
				<?php echo $product['price']; ?>
				<?php } else { ?>
				<span class="price-old"><?php echo $product['price']; ?></span>
				<span class="price-new"><?php echo $product['special']; ?></span>
				<?php } ?>
				<?php if ($product['tax']) { ?>
				<br />
				<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
				<?php } ?>
			</div>
			<?php } ?>
			<div class="actions grid_2 omega">
				<div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button cart small" ><span><?php echo $button_cart; ?></span></a></div>
				<div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
				<div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
			</div>
		</div>
		<?php } ?>
	</div>
	<div class="pagination"><?php echo $pagination; ?></div>
	  	
	<?php } else { ?>
  	
  		<div class="content"><?php echo $text_empty; ?></div>
  	
  	<?php }?>

	</div><!-- #maincontent -->

	<?php echo $column_left; ?>
	
	<?php echo $column_right; ?>

	<?php echo $content_bottom; ?>

	<div id="backtop" class="grid_12 clearfix"><a href="javascript:void(0)" class="backtotop">top</a> </div>

<script type="text/javascript"><!--
$('#maincontent input[name=\'filter_name\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var filter_name = $('#content input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}

	var filter_category_id = $('#content select[name=\'filter_category_id\']').attr('value');
	
	if (filter_category_id > 0) {
		url += '&filter_category_id=' + encodeURIComponent(filter_category_id);
	}
	
	var filter_sub_category = $('#content input[name=\'filter_sub_category\']:checked').attr('value');
	
	if (filter_sub_category) {
		url += '&filter_sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'filter_description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&filter_description=true';
	}

	location = url;
});

function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {

			$(this).removeClass('alpha omega middle grid_3');
		
			var image = $(element).find('.image').html();
			
			html = '<div class="name_desc grid_5 alpha">';

			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			html += '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price grid_2">' + price  + '</div>';
			}

			html += '<div class="actions grid_2 omega">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';

						
			$(element).html(html);
		});		
		
		$('.display').html('<li id="list" class="active"><span class="icon"></span><?php echo $text_list; ?></li><li id="grid"><a onclick="display(\'grid\');"><span class="icon"></span><?php echo $text_grid; ?></a></li>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {

			$(this).removeClass('grid_9');
			
			$(this).addClass('grid_box');		

			if ((index+3) % 3 == 0 ) {
				$(this).addClass('alpha');
			}
			if ((index+2) % 3 == 0 ) {
				$(this).addClass('middle');
			}
			if ((index+1) % 3 == 0 ) {
				$(this).addClass('omega');	
			}
			if ((index+2) % 2 == 0 ) {
				$(this).addClass('pairleft');
			}

			html = '';
			
			var image = $(element).find('.image').html();

			html += '<div class="inner">';
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';

			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}

			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';

			html += '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<li id="list"><a onclick="display(\'list\');"><span class="icon"></span><?php echo $text_list; ?></a></li><li id="grid" class="active"><span class="icon"></span><?php echo $text_grid; ?></li>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 

<?php echo $footer; ?>