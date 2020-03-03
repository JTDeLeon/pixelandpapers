<?php /**
 * Template Name: Contact Us
 * 
 * Pixel&Papers
 * 
 *
 * @author     Jonathan Deleon <Jondeleon856@gmail.com>
 */

 ?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="profile" href="http://gmpg.org/xfn/11">
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
       
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/content/build/css/style.css" type="text/css">
        <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/content/build/css/contact-style.css" type="text/css">
        <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/content/assets/socicon/css/styles.css" type="text/css">
        <!-- <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/content/assets/mobirise/css/mbr-additional.css" type="text/css"> -->
        <?php include 'partials/navBarStyles.php' ?>
        <!-- wp_head -->
        <?php wp_head(); ?>
        <!-- /wp_head -->
    </head> 
    <body class="_ox-globals contact " >
        <div id="page" class="hfeed site">
            <div id="content" class="site-content" tabindex="-1">
                <div class="col-full">
                    <!-- START primary -->
                    <div id="primary" class="content-area">
                        <!-- START main -->    
                        <main id="main" class="site-main" role="main">
                            <!-- START Page Build -->
                            <section class="background-section">
                                <!-- Header Goes Here -->
                                <?php include 'partials/pixelheader.php' ?>

                                <div class="centeredtxt">
                                    <h1 class="headlinetxt">Get Connected</h1>
                                    <p>Get tips and tricks for your wesbite, directly from the experts at Pixel and Papers.</p>
                                </div>

                                <div class="flex">
                                    <div class="left">
                                        <div class="contactform">
                                            <!-- www.123formbuilder.com script begins here --><script type="text/javascript" defer src="//www.123formbuilder.com/embed/5268400.js" data-role="form" data-default-width="650px"></script><!-- www.123formbuilder.com script ends here -->
                                        </div>
                                    </div>
                                    <div class="right">
                                        <h3>Other ways to connect</h3>
                                        <p>Call, email, or connect with us on social media.</p>
                                        <div>
                                            <p>Phone: <b>(650) 382-3807</b></p>
                                            <p>Email: <b>Sharon@pixelandpapers.com</b></p>
                                        </div>

                                        <div class="social-list align-right">
                            
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
                                            
                                            <!--
                                            <div class="soc-item">
                                                <a href="https://plus.google.com/u/0/+Mobirise" target="_blank">
                                                    <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social"></span>
                                                </a>
                                            </div>
                                            <div class="soc-item">
                                                <a href="https://www.behance.net/Mobirise" target="_blank">
                                                    <span class="socicon-behance socicon mbr-iconfont mbr-iconfont-social"></span>
                                                </a>
                                            </div>
                                            -->
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!-- END Page Build -->
                        </main>
                        <!-- END main -->
                    </div>
                    <!-- END primary -->
                </div><!-- .col-full -->
            </div><!-- #content -->
        </div><!-- #page -->

        <!-- wp_footer -->
        <?php wp_footer(); ?>
        <!-- /wp_footer -->
    </body>

</html>
