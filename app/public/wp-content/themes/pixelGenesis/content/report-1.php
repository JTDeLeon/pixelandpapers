<?php /**
 * Template Name: Report #1
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
        <link rel="stylesheet" href="<?php bloginfo('stylesheet_directory'); ?>/content/build/css/style.min.css" type="text/css">

        <!-- wp_head -->
        <?php wp_head(); ?>
        <!-- /wp_head -->
    </head> 
    <body class="_ox-globals report-one " >
        <div id="page" class="hfeed site">
            <div id="content" class="site-content" tabindex="-1">
                <div class="col-full">
                    <!-- START primary -->
                    <div id="primary" class="content-area">
                        <!-- START main -->    
                        <main id="main" class="site-main" role="main">
                            <!-- START Page Build -->
                            <section class="background-section">
                                
                                <div class="white-bkgd-frame">
                                    <div class="white-bkgd">
                                        
                                        <h3 class="header-text poppins">The Secret to Slowing Down the Effects of Aging and Living Longer</h3>
                                        
                                        <ul>
                                            <li>Reduce the appearance of fine lines and wrinkles</li>
                                            <li>Keep your arteries squeaky clean</li>
                                            <li>Ease joint discomfort</li>
                                            <li>Rev up your metabolism</li>
                                        </ul>

                                            <div class="content-container">
                                                <div class="left-container">

                                                    <img class="book-desktop" src="<?php bloginfo('stylesheet_directory'); ?>/content/reports/collagen/build/images/collagen-report-cover.png" alt="Collagen Free Report">

                                                </div>
                                                <div class="right-container">
                                                    <div class="right-space">

                                                        <div class="mobile-book-container">
                                                            <img class="" src="<?php bloginfo('stylesheet_directory'); ?>/content/reports/ageless-brain/build/images/" alt="">
                                                        </div>

                                                        <div class="description-container">
                                                                <p class="small-descr"><u>Get your FREE copy of <i><b>The Miracle of Collagen: How to Reverse Aging, Get Glowing Skin, and Feel Great With This One Essential Nutrient!</b></i></u></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- End of Flex Container -->
                                        
                                        <section class="section-004 form " style="">
                                                    <div class="one-col-1130px">
                                                        <div class="tab-004-v2">
                                                            <div class="tab-004-txt-v2">
                                                                <div class="free-report-nl-signup" style="position: relative;">
                                                                    <div class="signup-box-v2">
                                                                        <a name="subscribe"></a>
                                                                        <div class="newsletter-signup2016">
                                                                            <div class="one-col-1130px subscribe-padding">
                                                                                <div class="tab-005">
                                                                                    <div class="tab-005-txt">
                                                                                        <div class="mc-wrap">
                                                                                            <form id="newsletter-signup-1" class="newsletter-signup" method="post">
                                                                                                <div class="mc-content-wrap">
                                                                                                    <div class="mc-section-body">
                                                                                                        
                                                                                                        <div class="crkt-mc-webform-item">
                                                                                                            <div class="mc-field-item">
                                                                                                                <input id="first_name" name="first_name" type="text" placeholder="First Name" class="required">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="crkt-mc-webform-item" >
                                                                                                            <div class="mc-field-item">
                                                                                                                <input id="email" name="email" type="email" placeholder="Email" class="required">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        
                                                                                                        <div class="mc-action-container">
                                                                                                            <button class="cta-button" type="submit" id="cta-btn">
                                                                                                                YES! SEND ME MY FREE REPORT!
                                                                                                            </button>
                                                                                                        </div>

                                                                                                        <div class="mc-action-container" style="display: flex;">
                                                                                                            <button type="submit" style="margin: auto; padding-top: 10px; cursor: pointer; background: none; border: none; color: blue; text-decoration: underline; font-size: 15px;">YES! SEND ME MY FREE REPORT!</button>
                                                                                                        </div>

                                                                                                        <div class="mc-section-body-bottom">
                                                                                                            <p class="no-spam">No Spam. Ever.</p>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </form>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div style="clear: both;"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </section>
                                        
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
        <?php get_template_part('content/common-assets/php/footer-sqz'); ?>
        <?php echo do_shortcode('[pixels show="hotjar|gl|fb|vwo|om|pap|gtm|maro|rev" type="click"]'); ?>
         <?php 
        if(isset($_GET['aff'])) {
            $parameter = $_GET['aff'];

            if($parameter == 'ithrive'){
                echo do_shortcode("[optin name='first_name' email='email' form='.newsletter-signup' redirect='" . home_url('/collagens/?aff=ithrive&landing=radio') . "' tags='csc-free-report' pap_product_id='lead-csc-free-report']");
            }
            else if($parameter == 'thm'){
                echo do_shortcode("[optin name='first_name' email='email' form='.newsletter-signup' redirect='" . home_url('/collagens/?aff=thm&landing=radio') . "' tags='csc-free-report' pap_product_id='lead-csc-free-report']");
            }
            else if($parameter == 'tsp'){
                echo do_shortcode("[optin name='first_name' email='email' form='.newsletter-signup' redirect='" . home_url('/collagens/?aff=tsp&landing=radio') . "' tags='csc-free-report' pap_product_id='lead-csc-free-report']");
            }
            else {
                echo do_shortcode("[optin name='first_name' email='email' form='.newsletter-signup' redirect='" . home_url('/collagens?landing=radio') . "' tags='csc-free-report' pap_product_id='lead-csc-free-report']");
            }
        } 
        else {
            echo do_shortcode("[optin name='first_name' email='email' form='.newsletter-signup' redirect='" . home_url('/collagens?landing=radio') . "' tags='csc-free-report' pap_product_id='lead-csc-free-report']");
        }
        ?>
        <!-- wp_footer -->
        <?php wp_footer(); ?>
        <!-- /wp_footer -->
    </body>
</html>
