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

    <?php if ($column_left) $main = "grid_9 push_3";
      else if ($column_right) $main = "grid_9";
      else $main="grid_6 push_3" ?>

  <div id="maincontent" class="<?php echo $main; ?>">

    <?php echo $text_message; ?>
    
    <div class="buttons">
      <a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
    </div>

  </div>

  <?php echo $column_left; ?>
  <?php echo $column_right; ?>

  <?php echo $content_bottom; ?>
  
<?php echo $footer; ?>