<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package mainTheme
 */

?>

		<footer class="footer">
		<div class="container">
			<div class="row footer_content">
				<div class="copyright-logo col-xs-12 col-sm-8 col-md-8">
					<span>&copy; 2018</span>
					<a href=" href="<?php $page_id = 65 ?><?php echo get_page_link( $page_id ); ?>""><?php bloginfo('name'); ?></a>
				</div>

				<div class="container-menu col-xs-12 col-sm-4 col-md-4">

					<?php wp_nav_menu(); ?>
					
				</div>
			</div>
		</div>
	</footer>
	

<?php wp_footer(); ?>

</body>
</html>
