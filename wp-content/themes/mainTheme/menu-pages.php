<?php /* Template Name: MenuPages */ ?>

<?php get_header(); ?>

<section class="menu-pages__wrap">
	<div class="container">
		<div class="row">
			<div class="menu-pages col">

				<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
					<h2><?php the_title(); ?></h2>
					<p class=""><?php the_content(); ?></p>

				<?php endwhile; endif; ?>
				
			</div>
		</div>
	</div>
</section>

<?php

get_footer();

