<?php echo $header; ?>

  <?php echo $content_top; ?>

  <div class="breadcrumb grid_12">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
 

  <?php ($column_left) ? $main = "push_3" : $main=""; ?>

  <div id="maincontent" class="grid_9 <?php echo $main; ?>">
     <div class="heading ">
        <h1><?php echo $heading_title; ?></h1>
     </div>
    <div class="mod">
      <div class="mod-bd">
    <p><?php echo $text_balance; ?><b> <?php echo $balance; ?></b>.</p>
    <table class="list">
      <thead>
        <tr>
          <td class="left"><?php echo $column_date_added; ?></td>
          <td class="left"><?php echo $column_description; ?></td>
          <td class="right"><?php echo $column_amount; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php if ($transactions) { ?>
        <?php foreach ($transactions  as $transaction) { ?>
        <tr>
          <td class="left"><?php echo $transaction['date_added']; ?></td>
          <td class="left"><?php echo $transaction['description']; ?></td>
          <td class="right"><?php echo $transaction['amount']; ?></td>
        </tr>
        <?php } ?>
        <?php } else { ?>
        <tr>
          <td class="center" colspan="5"><?php echo $text_empty; ?></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
    
    <div class="pagination"><?php echo $pagination; ?></div>

    <div class="buttons">
      <a href="<?php echo $continue; ?>" class="button black"><span><?php echo $button_continue; ?></span></a>
    </div>
    </div>
    </div>
  </div> <!-- #maincontent -->
  
  <?php echo $column_left; ?>
  <?php echo $column_right; ?>
  
  <?php echo $content_bottom; ?>
  
<?php echo $footer; ?>