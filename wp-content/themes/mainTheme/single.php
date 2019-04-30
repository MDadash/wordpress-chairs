<?php

get_header(); ?>

<section class="inner-page">
	<div class="container">
		<div class="row">

			<div class="gallery col-xs-12 col-sm-8 col-md-6">
					<div class="gallery__media">
						<iframe src="<?php the_field('360-degree_link'); ?>" frameborder="0" width="100%" height="100%" allowfullscreen></iframe>
					</div>
					<div class="gallery__ico">
						<img src="<?php bloginfo('template_url') ?>/images/360deg.png" alt="rotate 360">
					</div>
			</div>

			<div class="parameters col-xs-12 col-sm-4 col-md-6">
				<h2 class="parameters__name"><?php the_title(); ?></h2>

				<?php while ( have_posts() ) : the_post(); ?>
					<p class="parameters__age"><?php the_field('age'); ?>
					</p>
					<p class="parameters__weight"><?php the_field('weight'); ?>
					</p>
					<p class="parameters__height"><?php the_field('height'); ?>
					</p>
			 		<p class="parameters__size"><?php the_field('size'); ?></p>
					<p class="parameters__clothes">
						<a href="<?php the_field('clothes_1'); ?>">clothes 1</a>
					</p>
					<p class="parameters__clothes">
						<a href="<?php the_field('clothes_2'); ?>">clothes 2</a>
					</p>
					<div class="social-icons">
						<a href="<?php the_field('instagram'); ?>"><i class="fab fa-instagram"></i></a>
						<a href="<?php the_field('youtube'); ?>"><i class="fab fa-youtube"></i></a>
						<a href="<?php the_field('facebook'); ?>"><i class="fab fa-facebook-f"></i></a>
					</div>
				<?php endwhile; // end of the loop. ?>
			</div>
		</div>
	</div>
</section>

<?php
get_footer();