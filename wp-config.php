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
define('DB_NAME', 'jhbusiness');

/** MySQL database username */
define('DB_USER', 'jhuser');

/** MySQL database password */
define('DB_PASSWORD', '12345jhesed');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'A0]NxR0e-$z_~W(> nYFDQWcx1*Vu0(,qewgACl@8+dJ+lmC[dk W05hWn#3AB3m');
define('SECURE_AUTH_KEY',  'ZV+11#0])LJ$N`JKYbC1PR,p*T+-4juZTh%|echcg#^~L?1-v.6tT.fqjk!5u=Xq');
define('LOGGED_IN_KEY',    '/ ZpQ:f;?tMLHNzeXX]u?I+iS%8VV<t&=:PY9tn}a1@h|@Tbvo~V@8Tw1:W:R*t]');
define('NONCE_KEY',        'Hf|a[hBZw_[eN?pzLO^Yip+V4]KE>0J7<Vr]?azCETF$nEO}Cp4E_Y^SO$mUZUVr');
define('AUTH_SALT',        'lA-?:C2?m#{[oG%B+/.hpN8@5[|D^x|Qms0[s[&M=iXMsVk&bjVT[lH@>SA2a*bs');
define('SECURE_AUTH_SALT', ' )M^k],/+CYc`HZxndN@gwrr.Y0YA4A(On56rhCGG=]78_}}l,~ JRh,m3jbmXb)');
define('LOGGED_IN_SALT',   '@[Sv3*]u=FPOW{^#OkWlI`c6hd8yCK03gIS`&~~V5q#Un%ZSX.kgF?T#j*1n-g &');
define('NONCE_SALT',       '+~fmOoqYbWnfua.EK+0dx]u^O.Rly+WO*^/]h[y]icfN<%yc!UvO+Wh+<>L{T*(.');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'jh_business_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
