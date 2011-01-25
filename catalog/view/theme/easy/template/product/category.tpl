<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="top">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center">
    
	<!-- @3Easy: Echo Expiration -->
	<h1><?php echo $heading_title; ?>
		<span class="expiration">
		<?php 
	//      			$expiration = strtotime($date_expiration);
	//      			echo date("Y m d, h:i:s", $expiration); 
			?>
		</span>
	</h1>
      
	<!-- @3Easy: Countdown Dashboard -->
	<div id="countdown_dashboard">
		<div class="dash weeks_dash">
			<span class="dash_title">weeks</span>
			<div class="digit"><?=$date['weeks'][0]?></div>
			<div class="digit"><?=$date['weeks'][1]?></div>
		</div>
		<div class="dash days_dash">
			<span class="dash_title">days</span>
			<div class="digit"><?=$date['days'][0]?></div>
			<div class="digit"><?=$date['days'][1]?></div>
		</div>
		<div class="dash hours_dash">
			<span class="dash_title">hours</span>
			<div class="digit"><?=$date['hours'][0]?></div>
			<div class="digit"><?=$date['hours'][1]?></div>
		</div>
		<div class="dash minutes_dash">
			<span class="dash_title">minutes</span>
			<div class="digit"><?=$date['mins'][0]?></div>
			<div class="digit"><?=$date['mins'][1]?></div>
		</div>
		<div class="dash seconds_dash">
			<span class="dash_title">seconds</span>
			<div class="digit"><?=$date['secs'][0]?></div>
			<div class="digit"><?=$date['secs'][1]?></div>
		</div>
	</div>
      
    </div>
  </div>
  <div class="middle">
    <?php if ($description) { ?>
    <div style="margin-bottom: 15px;"><?php echo $description; ?></div>
    <?php } ?>
	<?php if (!$categories && !$products) { ?>
    <div class="content"><?php echo $text_error; ?></div>
    <?php } ?>
    <?php if ($categories) { ?>
    <table class="list">
      <?php for ($i = 0; $i < sizeof($categories); $i = $i + 4) { ?>
      <tr>
        <?php for ($j = $i; $j < ($i + 4); $j++) { ?>
        <td width="25%"><?php if (isset($categories[$j])) { ?>
          <a href="<?php echo $categories[$j]['href']; ?>"><img src="<?php echo $categories[$j]['thumb']; ?>" title="<?php echo $categories[$j]['name']; ?>" alt="<?php echo $categories[$j]['name']; ?>" style="margin-bottom: 3px;" /></a><br />
          <a href="<?php echo $categories[$j]['href']; ?>"><?php echo $categories[$j]['name']; ?></a>
          <?php } ?></td>
        <?php } ?>
      </tr>
      <?php } ?>
    </table>
    <?php } ?>
    <?php if ($products) { ?>
    <div class="sort">
      <div class="div1">
        <select name="sort" onchange="location = this.value">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if (($sort . '-' . $order) == $sorts['value']) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
      <div class="div2"><?php echo $text_sort; ?></div>
    </div>
    <table class="list">
      <?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>
      <tr>
        <?php for ($j = $i; $j < ($i + 4); $j++) { ?>
        <td width="25%"><?php if (isset($products[$j])) { ?>
          <a href="<?php echo $products[$j]['href']; ?>"><img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" /></a><br />
          <a href="<?php echo $products[$j]['href']; ?>"><?php echo $products[$j]['name']; ?></a><br />
          <span style="color: #999; font-size: 11px;"><?php echo $products[$j]['model']; ?></span><br />
          <?php if ($display_price) { ?>
          <?php if (!$products[$j]['special']) { ?>
          <span style="color: #900; font-weight: bold;"><?php echo $products[$j]['price']; ?></span>
          <?php } else { ?>
          <span style="color: #900; font-weight: bold; text-decoration: line-through;"><?php echo $products[$j]['price']; ?></span> <span style="color: #F00;"><?php echo $products[$j]['special']; ?></span>
          <?php } ?>
          <?php } ?>
          <a class="button_add_small" href="<?php echo $products[$j]['add']; ?>" title="<?php echo $button_add_to_cart; ?>" >&nbsp;</a>
          <br />
          <?php if ($products[$j]['rating']) { ?>
          <img src="catalog/view/theme/default/image/stars_<?php echo $products[$j]['rating'] . '.png'; ?>" alt="<?php echo $products[$j]['stars']; ?>" />
          <?php } ?>
          <?php } ?></td>
        <?php } ?>
      </tr>
      <?php } ?>
    </table>
    <div class="pagination"><?php echo $pagination; ?></div>
    <?php } ?>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>
<script type="text/javascript">
//	$(function () {
//		var expirationDate = new Date(2011, 1-1, 26); 
//		alert (expirationDate);
//		alert ('<?php echo date("Y m d, h:i:s", $expiration); ?>');
//		alert ('<?php echo date("d", $expiration); ?>');
//		alert ('<?php echo date("m", $expiration); ?>');
//		alert ('<?php echo date("Y", $expiration); ?>');
//		alert ('<?php echo date("h", $expiration); ?>');
//		alert ('<?php echo date("i", $expiration); ?>');
//		alert ('<?php echo date("s", $expiration); ?>');
//		$('.expirations').countdown({ 
//			until: expirationString, 
//			compact: true, 
//			format: 'HMS'
//		});
//	});	
</script>

<script language="javascript" type="text/javascript">
	jQuery(document).ready(function() {
	
		alert ('<?php echo date("Y m d, h:i:s", $expiration); ?>');
		
		alert ('<?php echo date("d", $expiration); ?>');
		alert ('<?php echo date("m", $expiration); ?>');
		alert ('<?php echo date("Y", $expiration); ?>');
		alert ('<?php echo date("H", $expiration); ?>');
		alert ('<?php echo date("i", $expiration); ?>');
		alert ('<?php echo date("s", $expiration); ?>');
		
		$('#countdown_dashboard').countDown({
			targetDate: {
				'day': 		'<?php echo date("d", $expiration); ?>',
				'month': 	'<?php echo date("m", $expiration); ?>',
				'year': 	'<?php echo date("Y", $expiration); ?>',
				'hour': 	'<?php echo date("H", $expiration); ?>',
				'min': 		'<?php echo date("i", $expiration); ?>',
				'sec': 		'<?php echo date("s", $expiration); ?>'
			}
		});
	});
</script>

<?php echo $footer; ?> 