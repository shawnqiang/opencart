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
    <div id="notification"></div>
    </div>
    <div class="mod">
    <?php if ($products) { ?>

    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="wishlist">
      <table class="wishlist-product">
        <thead>
          <tr>
            <td class="remove"><img src="catalog/view/theme/sellegance/images/trash.png" alt="<?php echo $column_remove; ?>" title="<?php echo $column_remove; ?>" /></td>
            <td class="image"><?php echo $column_image; ?></td>
            <td class="name"><?php echo $column_name; ?></td>
            <td class="model"><?php echo $column_model; ?></td>
            <td class="stock"><?php echo $column_stock; ?></td>
            <td class="price"><?php echo $column_price; ?></td>
            <td class="cart"><?php echo $column_cart; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
            <td class="remove"><input type="checkbox" name="remove[]" value="<?php echo $product['product_id']; ?>" /></td>
            <td class="image"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?></td>
            <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
            <td class="model"><?php echo $product['model']; ?></td>
            <td class="stock"><?php echo $product['stock']; ?></td>
            <td class="price"><?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                <?php } ?>
              </div>
              <?php } ?></td>
            <td class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button small cart"><span><?php echo $button_cart; ?></span></a></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </form>
  
    <div class="buttons">
      <a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a>
      <a onclick="$('#wishlist').submit();" class="button black"><span><?php echo $button_update; ?></span></a>
    </div>

    <?php } else { ?>

    <div class="content"><?php echo $text_empty; ?></div>
    <div class="buttons">
      <a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a>
    </div>

    <?php } ?>
    </div>
  </div> <!-- #maincontent -->

  <?php echo $column_left; ?>
  <?php echo $column_right; ?>
  
  <?php echo $content_bottom; ?>

<?php echo $footer; ?>