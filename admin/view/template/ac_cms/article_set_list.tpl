<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/category.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons">
          <a onclick="location = '<?php echo $insert; ?>'" class="button"><span><?php echo $button_insert; ?></span></a>
          <a onclick="$('#form').attr('action', '<?php echo $copy; ?>');$('#form').submit();" class="button"><span><?php echo $button_copy; ?></span></a>
          <a onclick="$('#form').submit();" class="button"><span><?php echo $button_delete; ?></span></a>
          <a onclick="location = '<?php echo $module; ?>';" class="button"><span><?php echo $button_cp; ?></span></a>
      </div>
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left"><?php echo $text_column_name; ?></td>
              <td class="right"><?php echo $text_column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($article_sets) { ?>
            <?php foreach ($article_sets as $article_set) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($article_set['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $article_set['bs_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $article_set['bs_id']; ?>" />
                <?php } ?></td>
              <td class="left"><?php echo $article_set['title']; ?></td>
              <td class="right"><?php foreach ($article_set['action'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>