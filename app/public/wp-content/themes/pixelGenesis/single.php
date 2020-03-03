<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */

function customEnqueue() {
  $build_dir = '/content/build';
  wp_enqueue_style( 'customWideStyles', get_stylesheet_directory_uri() . $build_dir . '/css/blog-style.css', array(), '20190403' );
  wp_enqueue_style( 'customWideStyles', get_stylesheet_directory_uri() . $build_dir . '/css/style.css', array(), '20190403' );
  wp_enqueue_script('pixelApp', get_stylesheet_directory_uri() . $build_dir . '/js/scripts.min.js', [], '20190626', true);
  
  wp_enqueue_style('mobi1', get_template_directory_uri() . '/content/assets/web/assets/mobirise-icons/mobirise-icons.css', array(), '20190403' );
  wp_enqueue_style('mobi2', get_template_directory_uri() . '/content/assets/tether/tether.min.css', array(), '20190403' );
  wp_enqueue_style('mobi3', get_template_directory_uri() . '/content/assets/bootstrap/css/bootstrap.min.css', array(), '20190403' );
  wp_enqueue_style('mobi4', get_template_directory_uri() . '/content/assets/bootstrap/css/bootstrap-grid.min.css', array(), '20190403' );
  wp_enqueue_style('mobi5', get_template_directory_uri() . '/content/assets/bootstrap/css/bootstrap-reboot.min.css', array(), '20190403' );
  wp_enqueue_style('mobi6', get_template_directory_uri() . '/content/assets/dropdown/css/style.css', array(), '20190403' );
  wp_enqueue_style('mobi7', get_template_directory_uri() . '/content/assets/animatecss/animate.min.css', array(), '20190403' );
  wp_enqueue_style('mobi8', get_template_directory_uri() . '/content/assets/socicon/css/styles.css', array(), '20190403' );
  wp_enqueue_style('mobi9', get_template_directory_uri() . '/content/assets/theme/css/style.css', array(), '20190403' );
  wp_enqueue_style('mobi10', get_template_directory_uri() . '/content/assets/mobirise/css/mbr-additional.css', array(), '20190403' );
}
add_action( 'wp_enqueue_scripts', 'customEnqueue' );



 //Genesis Template Styles
    // wp_enqueue_style( 'custom-css', get_template_directory_uri() . '/style.css', null, null, 'all');

wp_head();

get_header(); ?>

<style>.site-header { display: none;}</style>
<?php include 'content/partials/pixelheader.php' ?>
 
    <div id="primary" class="content-area max-width-fifteenhundred">
        <main id="main" class="site-main blog-main" role="main">
 
        <?php
        // Start the loop.
        while ( have_posts() ) : the_post();
            ?><div class="blog-title"><?php the_title() ?> </div><?php
 
            /*
             * Include the post format-specific template for the content. If you want to
             * use this in a child theme, then include a file called called content-___.php
             * (where ___ is the post format) and that will be used instead.
             */
            get_template_part( 'content', get_post_format() );
            the_content();
 
            // If comments are open or we have at least one comment, load up the comment template.
            // if ( comments_open() || get_comments_number() ) :
            //     comments_template();
            // endif;
 
            // Previous/next post navigation.
            the_post_navigation( array(
                'next_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Next', 'twentyfifteen' ) . '</span> ' .
                    '<span class="screen-reader-text">' . __( 'Next post:', 'twentyfifteen' ) . '</span> ' .
                    '<span class="post-title">%title</span>',
                'prev_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Previous', 'twentyfifteen' ) . '</span> ' .
                    '<span class="screen-reader-text">' . __( 'Previous post:', 'twentyfifteen' ) . '</span> ' .
                    '<span class="post-title">%title</span>',
            ) );
 
        // End the loop.
        endwhile;

        include 'content/partials/email-form.php'
        ?>
 
        </main><!-- .site-main -->
    </div><!-- .content-area -->
    <?php include 'content/partials/footerscripts.php' ?>
 
<?php get_footer(); ?>