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
  <title>Pixel And Paper Blog</title>
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
            <div class="blog-header-container">
                <div class="blog-container-inner">
                    <h1 class="blog-title-name">Pixel And Papers Blog</h1>
                    <div class='social-icons-blog'>
                        <div class="soc-item">
                            <a href="https://twitter.com/PapersPixel" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/Pixel-and-Papers-109608633753757/" target="_blank">
                                <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        
                        <div class="soc-item">
                            <a href="https://www.linkedin.com/company/pixel-and-papers/" target="_blank">
                                <span class="socicon-linkedin socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                        
                        <div class="soc-item">
                            <a href="https://www.instagram.com/pixel_and_papers/" target="_blank">
                                <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="featured-articles-container">
                <div class="feat-art feat-one">
                    <a class="featured-link" href="#"></a><div class="overlay-txt"><h2>Featured Article Title</h2></div></div>
                <div class="feat-art feat-two"><a class="featured-link" href="#"></a><div class="overlay-txt"><h2>Featured Article Title</h2></div></div>
                <div class="feat-art feat-three"><a class="featured-link" href="#"></a><div class="overlay-txt"><h2>Featured Article Title</h2></div></div>
            </div>

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