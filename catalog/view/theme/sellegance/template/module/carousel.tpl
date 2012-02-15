<div id="carousel<?php echo $module; ?>" class="es-carousel-wrapper">
	<div class="es-carousel">
		<ul>
		<?php foreach ($banners as $banner) { ?>
			<li>
				<a href="<?php echo $banner['link']; ?>">
					<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
				</a>
			</li>
		<?php } ?>
		</ul>
  </div>
</div>

<script type="text/javascript"><!--

$('#carousel<?php echo $module; ?>').elastislide({
	imageW:290,
	<?php if ($limit > 3): ?>
	minItems:<?php echo $scroll; ?>
	<?php else: ?>
	minItems:1
	<?php endif ?>
});
$(window).triggerHandler('resize.elastislide');


//--></script>