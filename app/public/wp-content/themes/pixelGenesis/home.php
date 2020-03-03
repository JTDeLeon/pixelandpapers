<?php /**
 * Template Name: Custom Posts Page
 * Pixel&Papers
 * 
 *
 * @author     Jonathan Deleon <Jondeleon856@gmail.com>
 */
 ?>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.1, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="<?php echo get_template_directory_uri() . '/content/assets/images/favicon-122x113.png' ?>" type="image/x-icon">
  <meta name="description" content="">
  <title>Home</title>
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/web/assets/mobirise-icons/mobirise-icons.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/tether/tether.min.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/bootstrap/css/bootstrap.min.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/bootstrap/css/bootstrap-grid.min.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/bootstrap/css/bootstrap-reboot.min.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/dropdown/css/style.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/animatecss/animate.min.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/socicon/css/styles.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/theme/css/style.css' ?>">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/assets/mobirise/css/mbr-additional.css' ?>" type="text/css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/build/css/blog-style.css' ?>" type="text/css">
  <!-- <link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/content/build/css/style.min.css" type="text/css' ?>"> -->

  
  
</head>
<body>
    <?php include 'content/partials/pixelheader.php' ?>

    <section id="primary" class="site-content max-width-fifteenhundred">
        <div id="content" role="main">
            <p>Hello</p>

            <?php
 
                // The Loop
                while ( have_posts() ) : the_post(); ?>
                <h2><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>
                <small><?php the_time('F jS, Y') ?> by <?php the_author_posts_link() ?></small>
                
                <div class="entry">
                <?php the_content(); ?>
                
                <p class="postmetadata"><?php
                comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments closed');
                ?></p>
                </div>
                
                <?php endwhile; ?>
        </div>
    </section>


    <?php include 'content/partials/footerscripts.php' ?>
    
</body>

</html>