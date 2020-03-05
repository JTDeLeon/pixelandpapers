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

            <!-- <div class="featured-articles-container">
                <div class="feat-art feat-one">
                    <a class="featured-link" href="https://pixelandpapers.com/demand-engagement-content"></a><div class="overlay-txt"><h2>Consumers Need For Engagement is Changing the Market Landscape</h2></div></div>
                
                    <div class="second-col">
                        <div class="feat-art feat-two"><a class="featured-link" href="https://pixelandpapers.com/improving-customer-engament-skills"></a><div class="overlay-txt"><h2>Why This New Decade is Crucial for Customer Satisfaction</h2></div></div>
                
                        <div class="feat-art feat-three"><a class="featured-link" href="https://pixelandpapers.com/reach-target-market"></a><div class="overlay-txt"><h2>Reach A Target Market... That is Gen Z</h2></div></div>
                    </div>
            </div> -->


            <div class="two-column">

            
                <div class="recent-posts">
                <?php
                                // Start the loop.
                    while ( have_posts() ) : the_post();
                    ?>
                    
                    <div class="post-content">

                    <a class="image-link-container-rp" href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
                        <img class="image-rp" src="<?echo get_the_post_thumbnail_url()?>" alt="<?php the_title_attribute(); ?>">
                    </a>

                    <div class="flex">
                        <small class="dateandauthor-rp"><?php the_time('F jS, Y') ?> by <?php the_author_posts_link() ?></small>
                    </div>

                    <p class="postmetadata"><?php
                    comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments closed');?>
                    </p>

                    <h2 class="blog-title-rp"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>
                    
                    
                    
                    <?php 
                    // get_template_part( 'content', get_post_format() );
                    the_content();
                    // Previous/next post navigation.
                    // the_post_navigation( array(
                    //     'next_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Next', 'twentyfifteen' ) . '</span> ' .
                    //         '<span class="screen-reader-text">' . __( 'Next post:', 'twentyfifteen' ) . '</span> ' .
                    //         '<span class="post-title">%title</span>',
                    //     'prev_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Previous', 'twentyfifteen' ) . '</span> ' .
                    //         '<span class="screen-reader-text">' . __( 'Previous post:', 'twentyfifteen' ) . '</span> ' .
                    //         '<span class="post-title">%title</span>',
                    // ) );
                    // ?>

                    
                    <hr>
                    
                    <?php

                    //Get only the approved comments
                    // $args = array(
                    //     'status' => 'approve'
                    // );
                    
                    // // The comment Query
                    // $comments_query = new WP_Comment_Query;
                    // $comments = $comments_query->query( $args );
                    
                    // // Comment Loop
                    // if ( $comments ) {
                    // foreach ( $comments as $comment ) {
                    // echo '<p>' . $comment->comment_content . '</p>';
                    // }
                    // } else {
                    // echo 'No comments found.';
                    // }

                    // If comments are open or we have at least one comment, load up the comment template.
                    if ( comments_open() || get_comments_number() ) :
                        comments_template();
                    endif;
                    ?>
                
                    </div>
                    
                  
                    <?php endwhile; ?>

                </div>

                <div class="sidebar">
                    <div class="signup widget">
                        <h3 class="widget-title">
                            <span>Subscribe</span>
                            <div class="line"></div>
                        </h3>
                        <p>Sign Up For Our Email List And You'll Receive Our Top Tips And Tricks For AB Testing!</p>
                        <form action="https://pixelandpapers.us4.list-manage.com/subscribe/post?u=e21acaf2745039cda5b1de256&amp;id=d88b200ae6" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate="">
                            <div id="mc_embed_signup_scroll" class="flex-col">
                                
                          
                            <div class="mc-field-group mc-field-item mauto whundred">
                               
                                <input type="email" placeholder="Email" value="" name="EMAIL" class="required email whundred tcenter" id="mce-EMAIL">
                            </div>
                            
                            <div id="mce-responses" class="clear">
                                <div class="response" id="mce-error-response" style="display:none"></div>
                                <div class="response" id="mce-success-response" style="display:none"></div>
                            </div>    
                                <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_e21acaf2745039cda5b1de256_d88b200ae6" tabindex="-1" value=""></div>
                                <div class="clear mauto">
                                    <input type="submit" value="YES! SIGN ME UP!" name="subscribe" id="mc-embedded-subscribe" class="button cta-button"></div>
                                   
                        </form>
                    </div>
                    <div class="about-us widget">
                        <h3 class="widget-title">
                            <span>About Us</span>
                            <div class="line"></div>
                        </h3>
                        <div class="flex whundred">
                            <img class="mauto whundred" src="/wp-content/themes/pixelGenesis/content/images/black-logo.png" alt="">

                        </div>
                        
                        <div class="about-content">
                            <p>Pixel and Papers was founded on the principles of helping organizations achieve marketing goals with innovative solutions and an educational approach.  Together, we are crafting digital environments that engage audiences, generate valuable leads, and help businesses thrive.</p>
                            <p>We're different from other agencies - we have the spirit of a startup, the capabilities of a large firm, and the talent to get the job done. It's what keeps our clients coming back, and it's what inspires other organizations to reach out to us.</p>
                            <p>We see the bigger picture. A lucrative web presence has harmonious attributes:  aesthetics, function, content, and visibility. Our team has the knowledge and experience to help you achieve the best flow for your audience.</p>
                            <p>It's all about our clients. The client experience is always priority to our Team. We take pride in our work and our client relationships, and have our portfolio of award-winning design, development, and marketing projects as a testament to our success.</p>
                            <p>Our team rocks. Our skilled and creative family of designers, engineers, and marketing experts are talented professionals in their respective fields. We are passionate about what we do, and are committed to delivering strategy to accelerate your web presence and achieve a return on your investment.</p>
                            <p>Get in touch with us to learn more about how Pixel and Papers can optimize your website</p>
                        </div>
                    </div>
                    <div class="cta-sect widget">
                        <h3 class="widget-title">
                            <span>Our Gift</span>
                            <div class="line"></div>
                        </h3>
                        <div class="cta-container">
                            <a href="https://pixelandpapers.com/how-to-use-a-b-testing-for-website-marketing-optimization" target="_blank"><img src="/wp-content/themes/pixelGenesis/content/images/blog-cta.png" alt=""></a>
                        </div>
                    </div>
                    <div class="categories widget">
                        <h3 class="widget-title">
                            <span>Categories</span>
                            <div class="line"></div>
                        </h3>
                        
                        <?php wp_list_categories(array(
                            'orderby'    => 'name',
                            'show_count' => true,
                            'exclude'    => array( 10 ),
                            'title_li' => ''
                        )) ?>
                    </div>
                </div>

            </div>



            <!-- <?php
 
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
                
                <?php endwhile; ?> -->
        </div>
    </section>


    <?php include 'content/partials/footerscripts.php' ?>
    
</body>

</html>