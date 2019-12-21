<?php /**
 * Template Name: Homepage
 * 
 * Pixel&Papers
 * 
 *
 * @author     Jonathan Deleon <Jondeleon856@gmail.com> & Clay Skougard <>
 */

 ?>

<?php 
function customEnqueue() {
  $build_dir = '/content/build';
  wp_enqueue_style( 'customWideStyles', get_stylesheet_directory_uri() . $build_dir . '/css/style.min.css', array(), '20190403' );
  wp_enqueue_script('pixelApp', get_stylesheet_directory_uri() . $build_dir . '/js/scripts.min.js', [], '20190626', true);
}
add_action( 'wp_enqueue_scripts', 'customEnqueue' );
?>

 <?php 
 //Genesis Template Styles
    wp_enqueue_style( 'custom-css', get_template_directory_uri() . '/style.css', null, null, 'all');

wp_head();
 ?>

<?php include 'partials/page-widgets.php' ?>

<style>
.form-container {
  border-radius: 5px;
  padding: 20px;
}
::placeholder {
  color: #BBC2CE;
  opacity: 1; /* Firefox */
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
 color: #BBC2CE;
}

::-ms-input-placeholder { /* Microsoft Edge */
 color: #BBC2CE;
}
    
input {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border-bottom: 1px solid ddd;
    border-top: none;
    border-right: none;
    border-left: none;
}
</style>
 
<body class="home" >
    <div id="page" class="hfeed site">
        <div id="content" class="site-content" tabindex="-1">
            <?php include 'partials/mobile-overlay.php' ?>
            <div class="col-full">

<!-- Begin Page Build Below -->

<section class="section-00">
    
<?php include 'partials/header.php' ?>
    
        <div class="one-column">
            <p class="headline">Web Designs, <br class="brkpt">Ecommerce, <br>Maintenance & SEO</p>
            <p class="headline-descr">If your website isn't optimized for your unique business requirements, you're leaving money on the table.</p>
            <div class="button-container">
                <img onclick="Calendly.initPopupWidget({url: 'https://calendly.com/shopifyrez/30min'});return false;" class="work-button" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-work-button-2.png">
            </div>
        </div>
</section>
                
<section class="section-01-mobile">
    <div class="one-column">
        <div class="circle-1">
            <img class="shopper" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-circle-shopper.png">
        </div>
        
        <div class="wp-container">
            <img class="wordpress" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-wordpress.png">
        </div>
        
        <div class="circle-2">
            <img class="merch" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-circle-merch.png">
        </div>
        
        <div class="circle-3">
            <img class="three-circles" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-three-dots.png">
        </div>
        
        <div class="s-container">
            <img class="shopify" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-shopify.png">
        </div>
        
        <div class="woo-container">
            <img class="woo" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-woo.png">
        </div>
        
        <div class="mag-container">
            <img class="magento" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-magento.png">
        </div>
        
        <div class="circle-4">
            <img class="three-circles" src="wp-content/themes/pixelGenesis/content/build/image-min/section-01-mobile-circle-iPad.png">
        </div>
    </div>
</section>
        
<section class="section-02-mobile">
    <div class="one-column">
        <p class="services">OUR SERVICES</p>
        
        <p class="service">Website Design</p>
        
        <div class="two-column">
            <div class="left-side">
                <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-web-logo.png" alt="Website Design" align="middle">
            </div>
            
            <div class="right-side">
                <p class="descr-text">The Digital front door of your business, our team is equipped to make it stand out professionally</p>
            </div>
        </div>
        
        <p class="service">Logo Design</p>
        <div class="two-column">
            <div class="left-side">
                <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-logo-logo.png" alt="Logo Design" align="middle">
            </div>
            <div class="right-side">
                <p class="descr-text">Rather if its starting from scratch or your business needs a rebrand, the logo is the face of your company</p>
            </div>
        </div>
        
        <p class="service">Maintenance</p>
        <div class="two-column">
            <div class="left-side">
                <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-maintenance-logo.png" alt="Maintenance" align="middle">
            </div>
            <div class="right-side">
                <p class="descr-text">Creating backups, finetune updates, add new products, update contents and banners, update pricing</p>
            </div>
        </div>
        
        <p class="service">Ecommerce Design</p>
        <div class="two-column">
            <div class="left-side">
                <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-ecom-logo.png" alt="Ecommerce Design" align="middle">
            </div>
            <div class="right-side">
                <p class="descr-text">Modern digital storefront with responsiveness for desktop and mobile, catered for conversions turning customers to buyers</p>
            </div>
        </div>
        
        <p class="service">Social Media Marketing</p>
        <div class="two-column">
            <div class="left-side">
                <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-social-logo.png" alt="Social Media Marketing" align="middle">
            </div>
            <div class="right-side">
                <p class="descr-text">Gain global exposure to produce brand awareness and lead traffic into your website</p>
            </div>
        </div>
        
        <p class="service">Search Engine Optimization</p>
        <div class="two-column">
            <div class="left-side">
                <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-seo-logo.png" alt="Search Engine Optimization" align="middle">
            </div>
            <div class="right-side">
                <p class="descr-text">Top searches are always on Google, we help people find your business faster with SEO services</p>
            </div>
        </div>
    </div>
</section>
                
<section class="section-02">
    <div class="one-column">
        
        <div class="two-column">
            <div class="left-side">
                <div class="phone">
                    <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-dsktp-phone.png" alt="Maintenance" align="middle">
                </div>
            
            </div>
            
            <div class="right-side">
                <p class="services">OUR SERVICES</p>
        
                <div class="two-column">
                    <div class="two-column-a">
                        <div class="left-side-a">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-web-logo.png" alt="Website Design" align="middle">
                        </div>

                        <div class="right-side-a">
                            <p class="service">Website Design</p>
                            <p class="descr-text">The Digital front door of your business, our team is equipped to make it stand out professionally</p>
                        </div>                        
                    </div>
                    
                    <div class="two-column-a">
                        <div class="left-side-a">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-ecom-logo.png" alt="Ecommerce Design" align="middle">
                        </div>

                        <div class="right-side-a">
                            <p class="service">Ecommerce Design</p>
                            <p class="descr-text">Modern digital storefront with responsiveness for desktop and mobile, catered for conversions turning customers to buyers</p>
                        </div>
                    </div>
                </div>
                
                <div class="two-column">
                    <div class="two-column-a">
                        <div class="left-side-a">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-logo-logo.png" alt="Logo Design" align="middle">
                        </div>

                        <div class="right-side-a">
                            <p class="service">Logo Design</p>
                            <p class="descr-text">Rather if its starting from scratch or your business needs a rebrand, the logo is the face of your company</p>
                        </div>                        
                    </div>
                    
                    <div class="two-column-a">
                        <div class="left-side-a">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-social-logo.png" alt="Social Media Marketing" align="middle">
                        </div>

                        <div class="right-side-a">
                            <p class="service">Social Media Marketing</p>
                            <p class="descr-text">Gain global exposure to produce brand awareness and lead traffic into your website</p>
                        </div>
                    </div>
                </div>
                
                <div class="two-column">
                    <div class="two-column-a">
                        <div class="left-side-a">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-maintenance-logo.png" alt="Maintenance" align="middle">
                        </div>

                        <div class="right-side-a">
                            <p class="service">Maintenance</p>
                            <p class="descr-text">Creating backups, finetune updates, add new products, update contents and banners, update pricing</p>
                        </div>                        
                    </div>
                    
                    <div class="two-column-a">
                        <div class="left-side-a">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-seo-logo.png" alt="Search Engine Optimization" align="middle">
                        </div>

                        <div class="right-side-a">
                            <p class="service">Search Engine Optimization</p>
                            <p class="descr-text">Top searches are always on Google, we help people find your business faster with SEO services</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</section>
                
<section class="section-03-mobile">
    <div class="one-column">
        <p class="why">WHY US</p>
        
        <p class="large-why">142</p>
        <p class="why-descr-text">Website launches currently active for 5+ Years</p>
        
        <p class="large-why">97<span><sup>%</sup></span></p>
        <p class="why-descr-text">Client Retention Rate</p>
        
        <p class="large-why">$200m</p>
        <p class="why-descr-text">Annual Client GMV</p>
        
        <p class="large-award">Award Winning<br>Designers<br>& Developers</p>
        <p class="why-descr-text">Our job is to make your business look fantastic. We deliver best practices, global brand exposure with high boost conversions that will change your business.  You're in Experts hands when working with Rezolutions Design.</p>
        
        <div class="button-container">
            <img onclick="Calendly.initPopupWidget({url: 'https://calendly.com/shopifyrez/30min'});return false;" class="work-button" src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-chat-button.png">
        </div>
    </div>
</section>
                
<section class="section-03">    
    <div class="one-column">
        <p class="why">WHY US</p>
        
        <div class="two-column">
            <div class="left-side">
                <p class="large-why">142</p>
                <p class="why-descr-text">Website launches currently active for 5+ Years</p>

                <p class="large-why">97<span><sup>%</sup></span></p>
                <p class="why-descr-text">Client Retention Rate</p>

                <p class="large-why">$200m</p>
                <p class="why-descr-text">Annual Client GMV</p>
            </div>

            <div class="right-side">
                <p class="large-award">Award Winning<br>Designers<br>& Developers</p>
                <p class="why-descr-text">Our job is to make your business look fantastic. We deliver best practices, global brand exposure with high boost conversions that will change your business.  You're in Experts hands when working with Rezolutions Design.</p>

                <div class="button-container">
                    <img onclick="Calendly.initPopupWidget({url: 'https://calendly.com/shopifyrez/30min'});return false;" class="work-button" src="wp-content/themes/pixelGenesis/content/build/image-min/section-02-mobile-chat-button.png">
                </div>

            </div>
        </div>
    </div>
</section>
                
<section class="section-04-mobile">
    <div class="one-column">
        <p class="large-and">&</p>
        
        <p class="large-before">Before</p>
        
        <div class="two-column">
            <div class="left-side">
                <div class="image-container">
                    <img class="before-work" src="wp-content/themes/pixelGenesis/content/build/image-min/section-03-mobile-before.png">
                </div>
            </div>
            
            <div class="right-side">
                <p class="large-after">After<br>Case Studies</p>
                <p class="before-descr-text">We help Reputable businesses with old websites and polish it into stunning presentations for desktop and mobile.</p>
                <div class="button-container">
                    <img onclick="Calendly.initPopupWidget({url: 'https://calendly.com/shopifyrez/30min'});return false;" class="work-button" src="wp-content/themes/pixelGenesis/content/build/image-min/section-03-mobile-discuss-button.png">
                </div>
                <div class="image-container">
                    <img class="after-work" src="wp-content/themes/pixelGenesis/content/build/image-min/section-03-mobile-after.png">
                </div>
            </div>
        </div>
    </div>
</section>
                
<section class="section-04">
    <div class="one-column">
        <div class="two-column">
            <div class="left-side">
                <p class="large-and">&</p>
        
                <p class="large-before">Before</p>
                
                <div class="image-container">
                    <img class="before-work" src="wp-content/themes/pixelGenesis/content/build/image-min/section-03-dsktp-before.png">
                </div>
            </div>
            
            <div class="right-side">
                <p class="large-after">After<br>Case Studies</p>
                <p class="before-descr-text">We help Reputable businesses with old websites and polish it into stunning presentations for desktop and mobile.</p>
                <div class="button-container">
                    <img onclick="Calendly.initPopupWidget({url: 'https://calendly.com/shopifyrez/30min'});return false;" class="work-button" src="wp-content/themes/pixelGenesis/content/build/image-min/section-03-mobile-discuss-button.png">
                </div>
                <div class="image-container">
                    <img class="after-work" src="wp-content/themes/pixelGenesis/content/build/image-min/section-03-dsktp-after.png">
                </div>
            </div>
        </div>
    </div>
</section>
                
<section class="section-05-mobile">
    <div class="one-column">
        <p class="testimonial">TESTIMONIALS</p>
        
        <p class="large-quote">“</p>
        
        <div class="quotes">
            <p class="test-descr-text">As you wish. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. Kid, I've flown from one side of this galaxy to the other.</p>
            
            <div class="two-column">
                <div class="left-side">
                    <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-1.png" alt="Luke Black" align="middle">
                </div>
                <div class="right-side">
                    <p class="descr-text">Luke Black<br>CEO BlackWorks</p>
                    <div class="stars">
                        <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-5-stars.png" alt="Stars" align="left">
                    </div>
                </div>
            </div>
        </div>
        
        <div class="pagination">
            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-pagination.png" align="middle">
        </div>
    </div>
</section>
                
<section class="section-05">
    <div class="one-column">
        <p class="testimonial">TESTIMONIALS</p>
        
        <p class="large-quote">“</p>
        
        <div class="two-column">
            <div class="quotes">
                <p class="test-descr-text">As you wish. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. Kid, I've flown from one side of this galaxy to the other.</p>

                <div class="two-column">
                    <div class="left-side">
                        <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-1.png" alt="Luke Black" align="middle">
                    </div>
                    <div class="right-side">
                        <p class="descr-text">Luke Black<br>CEO BlackWorks</p>
                        <div class="stars">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-5-stars.png" alt="Stars" align="left">
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="quotes">
                <p class="test-descr-text">As you wish. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. Kid, I've flown from one side of this galaxy to the other.</p>

                <div class="two-column">
                    <div class="left-side">
                        <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-1.png" alt="Luke Black" align="middle">
                    </div>
                    <div class="right-side">
                        <p class="descr-text">Luke Black<br>CEO BlackWorks</p>
                        <div class="stars">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-5-stars.png" alt="Stars" align="left">
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="quotes">
                <p class="test-descr-text">As you wish. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed. Kid, I've flown from one side of this galaxy to the other.</p>

                <div class="two-column">
                    <div class="left-side">
                        <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-1.png" alt="Luke Black" align="middle">
                    </div>
                    <div class="right-side">
                        <p class="descr-text">Luke Black<br>CEO BlackWorks</p>
                        <div class="stars">
                            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-5-stars.png" alt="Stars" align="left">
                        </div>
                    </div>
                </div>
            </div>

        </div>
        
        <div class="pagination">
            <img src="wp-content/themes/pixelGenesis/content/build/image-min/section-05-testimonial-pagination.png" align="middle">
        </div>
    </div>
</section>
                
<section class="section-06-mobile">
    <div class="one-column">

        <!-- Form -->
        <div class="form-container">
            <form action="./contact" method="post">
                <div class="elem-group">
                    <input type="text" id="name" name="visitor_name" placeholder="Your Name" class="entry" pattern=[A-Z\sa-z]{3,20} required>
                </div>
                <div class="elem-group">
                    <input type="email" id="email" name="visitor_email" placeholder="Email Address" class="entry" required>
                </div>
                <div class="elem-group">
                    <input type="phone" id="phone" name="visitor_phone" placeholder="Phone" class="entry" required>
                </div>
                <div class="elem-group">
                    <select id="services-selection" name="concerned_service" class="entry-drop" required>
                        <option value="">What Service(s) are you interested in?</option>
                        <option value="web-design">Website Design</option>
                        <option value="ecom-design">Ecommerce Design</option>
                        <option value="logo-design">Logo Design</option>
                        <option value="social-media">Social Media Networking</option>
                        <option value="maintenance">Maintenance</option>
                        <option value="seo">Search Engine Optimization</option>
                    </select>
                </div>
                <div class="elem-group">
                    <input type="foundus" id="foundus" name="visitor_foundus" placeholder="How did you find us?" class="entry" required>
                </div>
                <button class="work-button" type="submit"><img class="work-button" src="wp-content/themes/pixelGenesis/content/build/image-min/section-06-mobile-message-button.png"></button>
            </form>
        </div>
    </div>
</section>
                
<section class="section-06">
    <div class="one-column">
        <p class="contact">CONTACT US</p>
        
        <div class="two-column">
            <div class="left-side">
                <p class="large-contact">Get in touch,<br>we’ll love to<br>hear from you</p>
            </div>

            <div class="right-side">

                <!-- Form -->
                <div class="form-container">
                    <form action="./contact" method="post">
                        <div class="elem-group">
                            <input type="text" id="name" name="visitor_name" placeholder="Your Name" class="entry" pattern=[A-Z\sa-z]{3,20} required>
                        </div>
                        <div class="elem-group">
                            <input type="email" id="email" name="visitor_email" placeholder="Email Address" class="entry" required>
                        </div>
                        <div class="elem-group">
                            <input type="phone" id="phone" name="visitor_phone" placeholder="Phone" class="entry" required>
                        </div>
                        <div class="elem-group">
                            <select id="services-selection" name="concerned_service" class="entry-drop" required>
                                <option value="">What Service(s) are you interested in?</option>
                                <option value="web-design">Website Design</option>
                                <option value="ecom-design">Ecommerce Design</option>
                                <option value="logo-design">Logo Design</option>
                                <option value="social-media">Social Media Networking</option>
                                <option value="maintenance">Maintenance</option>
                                <option value="seo">Search Engine Optimization</option>
                            </select>
                        </div>
                        <div class="elem-group">
                            <input type="foundus" id="foundus" name="visitor_foundus" placeholder="How did you find us?" class="entry" required>
                        </div>
                        <button class="work-button" type="submit"><img class="work-button" src="wp-content/themes/pixelGenesis/content/build/image-min/section-06-mobile-message-button.png"></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<?php include 'partials/footer.php' ?>
<!-- End of Page Build -->
                
            </div>
        </div>
    </div>
</body>
<?php 
//This must be here at the end of the document
wp_footer();
?>