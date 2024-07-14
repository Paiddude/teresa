<?php 
require_once 'libraries/db.inc.php';
require_once 'libraries/core.php';
require_once(__DIR__ .'/../vendor/autoload.php');
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__.'./../');
$dotenv->load();
use \Mailjet\Resources;

function sanitize($form_input){
	global $link, $currency;
	$form_input = trim($form_input);
	$form_input = strip_tags($form_input, '<p><h1><h2><img><i><b><u><blockquote>');
	$form_input = mysqli_real_escape_string($link, $form_input);
	
	return $form_input;
}

function get_client_ip() {
	global $link;
    $ipaddress = '';
    if (isset($_SERVER['HTTP_CLIENT_IP']))
        $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
    else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_X_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
    else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
    else if(isset($_SERVER['HTTP_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_FORWARDED'];
    else if(isset($_SERVER['REMOTE_ADDR']))
        $ipaddress = $_SERVER['REMOTE_ADDR'];
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

function confirm_client_ip($ip) {
	global $link;
    if (isset($ip)) {
		$ip = $ip;
	} else {
		return false;
	}

	// Use curl for online hosted websites and file_get_contents when on offline development to get desired result.
	include 'libraries/core.php';

	if (isset($_SERVER['HTTPS']) && !empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off'){
	    $url = "https://www.iplocate.io/api/lookup/$ip?apikey=$iplocator_key";
	    $ch = curl_init($url);
	    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	    curl_setopt($ch, CURLOPT_HEADER, 0);
	    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)");
	    curl_setopt($ch, CURLOPT_MAXREDIRS, 2); 
	    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	    $result = curl_exec($ch);
	    $result = json_decode($result);
	    curl_close($ch);
	    $location = $result->country;
	    $ip_address = $result->ip;
	    $city = $result->city;

	    $response = array(
            'ip_address' => $ip_address,  
            'city'       => $city,  
            'location'   => $location
        );

        return $response;
	}

	// else{
	//     $result = file_get_contents("https://www.iplocate.io/api/lookup/".$ip);
	// 	$result = json_decode($result);
	// 	$location = $result->country;

	//     return $location;
	// }
}

function check_ip($ip = null)
{
	global $link;
	if ($ip != null) {
		$sql = "SELECT ip_address FROM visitor_counter WHERE ip_address = '$ip'";
		$query = mysqli_query($link, $sql);
		if (mysqli_num_rows($query) > 0) {
			return true;
		} else {
			return false;
		}
	} 
}

function send_auto_mail($fullname, $email, $phone, $subject, $message, $ip_address, $city, $location){
	global $link;
	
	if (isset($fullname) && isset($email) && isset($phone) && isset($subject) && isset($message) && isset($ip_address) && isset($city) && isset($location)) {
		include 'libraries/core.php';
		$email_template_URL = $base_url .'/default-email-message.php';
		$logo_URL = $base_url .'/assets/img/logo/Black%20logo%20-%20no%20background.png';
		$fullname = ucwords($fullname);
		$email = ucfirst($email);
		$subject = strtoupper($subject);
		$sender = $portfolio_user_email;
		$city = $city;
		$location = $location;
		$ip_address = $ip_address;
		$caption = "New Consultation";
		$caption = strtoupper($caption);
		$mj = new \Mailjet\Client(getenv('MJ_APIKEY_PUBLIC'), getenv('MJ_APIKEY_PRIVATE'),true,['version' => 'v3.1']);

      	$ch = curl_init();
      	curl_setopt($ch, CURLOPT_URL, $email_template_URL);
      	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
      	$email_template = curl_exec($ch);
      	curl_close($ch);

      	$email_template = str_replace("#logo#", $logo_URL, $email_template);
      	$email_template = str_replace("#name#", $fullname, $email_template);
      	$email_template = str_replace("#email#", $email, $email_template);
      	$email_template = str_replace("#phone#", $phone, $email_template);
      	$email_template = str_replace('#caption#', $caption, $email_template);
      	$email_template = str_replace('#message#', $message, $email_template);
      	$email_template = str_replace("#ip_address#", $ip_address, $email_template);
      	$email_template = str_replace("#city#", $city, $email_template);
      	$email_template = str_replace("#location#", $location, $email_template);

      	// Define your request body

      	$body = [
          	'Messages' => [
              	[
                  	'From' => [
                      	'Email' => $sender,
                      	'Name' => $fullname
                  	],
                  	'To' => [
                      	[
                          	'Email' => $sender,
                          	'Name' => $app_name_bold
                      	]
                  	],
                  	'Subject' => $subject,
                  	'TextPart' => $app_name,
                  	'HTMLPart' => $email_template
              	]
          	]
      	];

      	// All resources are located in the Resources class
      	$response = $mj->post(Resources::$Email, ['body' => $body]);
      	// Read the response
      	if ($response->success()) {
      		return true;
      	} else {
          	return $response->getData();
          	// var_dump($response->getData());
      	}
	}
}

function contact_us($post){
	global $link, $currency;
	$err_flag = false;
	$errors = [];

	if (!empty($post['fullname'])) {
		$fullname = sanitize($post['fullname']);
	} else {
		$err_flag = true;
		$errors[] = "Please enter your name!";	
	}

	if (!empty($post['email'])) {
		$email = sanitize($post['email']);
		if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
			$err_flag = true;
		 	$errors[] = "$email is not a valid email address!";
		}
	} else {
		$err_flag = true;
		$errors[] = "Please enter your email!";
	}

	if (!empty($post['phone'])) {
		$phone = sanitize($post['phone']);
	} else {
		$err_flag = true;
		$errors[] = "Please enter phone number!";
	}

	if (!empty($post['message'])) {
		$message = sanitize($post['message']);
	} else {
		$err_flag = true;
		$errors[] = "Please enter message!";
	}

	if (!empty($post['ip_address'])) {
		$ip_address = sanitize($post['ip_address']);
	} else {
		$err_flag = true;
		$errors[] = "We couldn't locate visitor's IP address!";
	}

	if (!empty($post['city'])) {
		$city = sanitize($post['city']);
	} else {
		$err_flag = true;
		$errors[] = "We couldn't locate visitor's city!";
	}

	if (!empty($post['location'])) {
		$location = sanitize($post['location']);
	} else {
		$err_flag = true;
		$errors[] = "We couldn't locate visitor's location!";
	}

	if ($err_flag === false) {
		$subject = "Free Consultation";
		include 'libraries/core.php';
		if (send_auto_mail($fullname, $email, $phone, $subject, $message, $ip_address, $city, $location)) {
			return true;
		}
	} else {
		echo mysqli_error($link);
		return $errors;
	}
}