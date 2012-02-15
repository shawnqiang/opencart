<?php echo $header; ?>
  
  <?php echo $content_top; ?>

  <div class="breadcrumb grid_12">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
  <div class="heading grid_12">
    <h1><?php echo $heading_title; ?></h1>
  </div>

  <?php ($column_left) ? $main = "push_3" : $main=""; ?>

  <div id="maincontent" class="grid_9 <?php echo $main; ?>">

    <?php if ($returns) { ?>
      <?php foreach ($returns as $return) { ?>
        <div class="return-list">
          <div class="return-id"><b><?php echo $text_return_id; ?></b> #<?php echo $return['return_id']; ?></div>
          <div class="return-status"><b><?php echo $text_status; ?></b> <?php echo $return['status']; ?></div>
          <div class="return-content">
            <div><b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?><br />
              <b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?></div>
            <div><b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?><br />
              <b><?php echo $text_products; ?></b> <?php echo $return['products']; ?></div>
            <div class="return-info"><a href="<?php echo $return['href']; ?>" class="button small"><span><?php echo $button_view; ?></span></a></div>
          </div>
        </div>
      <?php } ?>
    
      <div class="pagination"><?php echo $pagination; ?></div>

    <?php } else { ?>
    
      <div class="content"><?php echo $text_empty; ?></div>

    <?php } ?>

    <div class="buttons">
      <a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
    </div>

  </div> <!-- #maincontent -->

  <?php echo $column_left; ?>
  <?php echo $column_right; ?>

  <?php echo $content_bottom; ?>
  
<?php echo $footer; ?>