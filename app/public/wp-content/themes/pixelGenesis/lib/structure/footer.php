<?php
/**
 * Genesis Framework.
 *
 * WARNING: This file is part of the core Genesis Framework. DO NOT edit this file under any circumstances.
 * Please do all modifications in the form of a child theme.
 *
 * @package Genesis\Footer
 * @author  StudioPress
 * @license GPL-2.0-or-later
 * @link    https://my.studiopress.com/themes/genesis/
 */

add_action( 'genesis_before_footer', 'genesis_footer_widget_areas' );
/**
 * Echo the markup necessary to facilitate the footer widget areas.
 *
 * Check for a numerical parameter given when adding theme support - if none is found, then the function returns early.
 *
 * The child theme must style the widget areas.
 *
 * Applies the `genesis_footer_widget_areas` filter.
 *
 * @since 1.6.0
 *
 * @return void Return early if number of widget areas could not be determined,
 *              or nothing is added to the first widget area.
 */
function genesis_footer_widget_areas() {

	$footer_widgets = get_theme_support( 'genesis-footer-widgets' );

	if ( ! $footer_widgets || ! isset( $footer_widgets[0] ) || ! is_numeric( $footer_widgets[0] ) ) {
		return;
	}

	$footer_widgets = (int) $footer_widgets[0];

	// Check to see if first widget area has widgets. If not, do nothing. No need to check all footer widget areas.
	if ( ! is_active_sidebar( 'footer-1' ) ) {
		return;
	}

	$inside  = '';
	$output  = '';
	$counter = 1;

	while ( $counter <= $footer_widgets ) {

		// Darn you, WordPress! Gotta output buffer.
		ob_start();
		dynamic_sidebar( 'footer-' . $counter );
		$widgets = ob_get_clean();

		if ( $widgets ) {

			$inside .= genesis_markup(
				array(
					'open'    => '<div %s>',
					'close'   => '</div>',
					'context' => 'footer-widget-area',
					'content' => $widgets,
					'echo'    => false,
					'params'  => array(
						'column' => $counter,
						'count'  => $footer_widgets,
					),
				)
			);

		}

		$counter++;

	}

	if ( $inside ) {

		$_inside = genesis_get_structural_wrap( 'footer-widgets', 'open' );

		$_inside .= $inside;

		$_inside .= genesis_get_structural_wrap( 'footer-widgets', 'close' );

		$output .= genesis_markup( array(
			'open'    => '<div %s>' . genesis_sidebar_title( 'Footer' ),
			'close'   => '</div>',
			'content' => $_inside,
			'context' => 'footer-widgets',
			'echo'    => false,
		) );

	}

	/**
	 * Allow the footer widget areas output to be filtered.
	 *
	 * @since 1.6.0
	 *
	 * @param string The combined output.
	 * @param string The actual widgets.
	 */
	$footer_widgets = apply_filters( 'genesis_footer_widget_areas', $output, $footer_widgets );

	echo $footer_widgets; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped -- Need this to output raw html.

}

add_action( 'genesis_footer', 'genesis_footer_markup_open', 5 );
/**
 * Echo the opening div tag for the footer.
 *
 * Also optionally adds wrapping div opening tag.
 *
 * @since 1.2.0
 */
function genesis_footer_markup_open() {

	genesis_markup( array(
		'open'    => '<footer %s>',
		'context' => 'site-footer',
	) );
	genesis_structural_wrap( 'footer', 'open' );

}

add_action( 'genesis_footer', 'genesis_footer_markup_close', 15 );
/**
 * Echo the closing div tag for the footer.
 *
 * Also optionally adds wrapping div closing tag.
 *
 * @since 1.2.0
 */
function genesis_footer_markup_close() {

	genesis_structural_wrap( 'footer', 'close' );
	genesis_markup( array(
		'close'   => '</footer>',
		'context' => 'site-footer',
	) );

}

add_filter( 'genesis_footer_output', 'do_shortcode', 20 );
add_action( 'genesis_footer', 'genesis_do_footer' );
/**
 * Echo the contents of the footer.
 *
 * Execute any shortcodes that might be present.
 *
 * Applies `genesis_footer_backtotop_text`, `genesis_footer_creds_text` and `genesis_footer_output` filters.
 *
 * For HTML5 themes, only the credits text is used (back-to-top link is dropped).
 *
 * @since 1.0.1
 */
function genesis_do_footer() {

	// Build the text strings. Includes shortcodes.
	$backtotop_text = '[footer_backtotop]';
	// $creds_text     = sprintf( '[footer_copyright before="%s "] &#x000B7; [footer_childtheme_link before="" after=" %s"] [footer_genesis_link url="https://www.studiopress.com/" before=""] &#x000B7; [footer_wordpress_link] &#x000B7; [footer_loginout]', __( 'Copyright', 'genesis' ), __( 'on', 'genesis' ) );
	$creds_text     = sprintf( '&#9400 Copyright 2020 Pixel & Papers - All Rights Reserved');

	// Filter the text strings.
	$backtotop_text = apply_filters( 'genesis_footer_backtotop_text', $backtotop_text );
	$creds_text     = apply_filters( 'genesis_footer_creds_text', $creds_text );

	$backtotop = $backtotop_text ? sprintf( '<div class="gototop"><p>%s</p></div>', $backtotop_text ) : '';
	$creds     = $creds_text ? sprintf( '<div class="creds"><p>%s</p></div>', $creds_text ) : '';

	$output = $backtotop . $creds;

	// Only use credits if HTML5.
	if ( genesis_html5() ) {
		$output = '<p>' . genesis_strip_p_tags( $creds_text ) . '</p>';
	}

	echo apply_filters( 'genesis_footer_output', $output, $backtotop_text, $creds_text ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped

}

add_filter( 'genesis_footer_scripts', 'do_shortcode' );
add_action( 'wp_footer', 'genesis_footer_scripts' );
/**
 * Echo the footer scripts, defined in Theme Settings.
 *
 * Applies the `genesis_footer_scripts` filter to the value returns from the footer_scripts option.
 *
 * Also outputs page-specific body scripts if their position is set to 'bottom'.
 *
 * @since 1.1.0
 */
function genesis_footer_scripts() {

	echo apply_filters( 'genesis_footer_scripts', genesis_get_option( 'footer_scripts' ) ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped -- Need to output scripts.

	if ( ! is_singular() ) {
		return;
	}

	if ( 'top' != genesis_get_custom_field( '_genesis_scripts_body_position' ) ) {
		genesis_custom_field( '_genesis_scripts_body' );
	}

}
