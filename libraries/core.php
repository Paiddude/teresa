<?php
ini_set('display_errors', 1);
error_reporting(E_ALL); 
// Base page url
$base_url = "http://teresajanettebrock";
// User name
$portfolio_user = "Teresa Janette Brock";
$portfolio_user_short = "Teresa J. Brock";
// Base url text url
$base_url_text = "teresajanettebrock.com";
// app name
$app_name = $portfolio_user; 
$app_name_bold = "TERESA JANETTE BROCK"; 
// app motto
$app_motto = "Investment adviser and Stock Technical analyst.";
// app contact
$portfolio_user_contact="+1 601-326-1977"; 
//app contact raw
$portfolio_user_contact_raw="+16013261977";  
// app email address
$portfolio_user_email = "Info@teresajanettebrock.com";
$customer_support_link = "https://www.tidio.com/panel/dashboard";
$official_email_link = "https://lax007.hawkhost.com:2096/cpsess6169596039/3rdparty/roundcube/?_task=mail&_mbox=INBOX";
// company address
$portfolio_user_address = "10150 MEANLEY DRIVE, 1ST FLOOR SAN DIEGO, CA 92131";
$portfolio_user_age="20 August 1989"; 
// API key for checking ip address
$iplocator_key = "3b76f1b6de46ffb53830df526725651e";

date_default_timezone_set('Asia/Manila');
// variables used for jwt
$key = "example_key";
$iss = "http://example.org";
$aud = "http://example.com";
$iat = 1356999524;
$nbf = 1357000000;

$curr_year = date("Y");
$last_2 = substr($curr_year, -2);
// echo $last_2;

