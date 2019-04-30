<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package mainTheme
 */

get_header();
?>

<!-- <?php the_post(); ?>
<?php the_content(); ?> -->
		<section>
		<div class="container">
			<div class="row">

					<?php 
						$query = new WP_Query( array( 'category_name' => 'products' ) );
							while ( $query->have_posts() ) { $query->the_post(); ?>  
								<div class="product col-xs-12 col-sm-6 col-md-4">
									<div class="product-img">
										<a href=" <?php the_permalink(); ?>">
											<?php the_post_thumbnail(); ?>
										</a>
									</div>
									<h3 class="product-name">
										<a href=" <?php the_permalink(); ?>"><?php the_title(); ?></a>
									</h3>
								</div>
					<?php } ?> 

			</div>
		</div>

	</section>

<?php

get_footer();
