<?php
//Paste the following to wp-config.php


define( 'FORCE_SSL_ADMIN', true );
if( false !== strpos( $_SERVER['HTTP_X_FORWARDED_PROTO'], 'https' ) ) {
    $_SERVER['HTTPS'] = 'on';
}
require_once( ABSPATH . 'wp-settings.php' );

