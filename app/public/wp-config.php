<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'E7cXh85ywWF2Id2aAqP4GCMN1VHf3ozRvBxayKQcGpehs7TZz8HQZRvAeztjvG82Ys5vC2pF8K9gpzd8UWNI8g==');
define('SECURE_AUTH_KEY',  '+jkZnRlq1y85bsecr/a1G+5TptslH4PaDfBopNvh5NYZLCOCNcLxNdPxfu9u+mTRoxv8C/lAF5r4wSeCX0SFjw==');
define('LOGGED_IN_KEY',    '31n6km7I9s8zNSozJiuuNNSsbB5dkWXneujNm7IHtzIT1EEb0QQTocbF0KljroVdhJG6V7yzVw7tGflGtHumuw==');
define('NONCE_KEY',        'WfyIApH0XTfrxQcbM/2AidvvhKldWiOEyeK0I/N8/pK9CR3MgC6DTSMUwAGZi0S3QAi5kUX/uzKNLW/XXCTOcQ==');
define('AUTH_SALT',        'pKJQNHw/usu+L4AlJuCnJRDhFgYE2FVQec1GSKLY9f0NsW7ruyw7WOs+lt7/fYID2IuG+rTJSjTH6okQOMg5fg==');
define('SECURE_AUTH_SALT', 'e7GVrN7eUt2lEVol/bW3O0t3LLNMWtflboCy3IyVlXxI/P9BahzaWHFEW+F49GbKqXkUbDLjZz7mWLjASQ6GVw==');
define('LOGGED_IN_SALT',   'eixZl7H+cHVshu58bElPqAFCgm1eB8x7IpM/k8orpmPGMQQd1z0GYDNrkQVGcHvRHmFgF1rPAOU/jo5fQRJKEA==');
define('NONCE_SALT',       'qmJAUeXJ25LFZsPedct2Ri88iaFf3JskFCnK+GnhM+So+0TH2xmKXF6zZSOuvMQj5rE/Zd9b2XCLU19UDK7kcg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
