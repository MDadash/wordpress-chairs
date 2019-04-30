<?php wp_head() ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php bloginfo('name'); ?></title>
	<meta name="description" content="">
  <meta name="author" content="">
</head>
<body>

	<header>
		<div class="container">
			<div class="row">
				<div class="col-12 header_content">
					<a href="<?php $page_id = 65 ?><?php echo get_page_link( $page_id ); ?>"><?php bloginfo('name'); ?></a>
				</div>
			</div>
		</div>
	</header>
