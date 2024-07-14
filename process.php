<?php 
require_once 'libraries/functions.inc.php';

if (isset($_POST['fullname']) && isset($_POST['email']) && isset($_POST['phone']) && isset($_POST['message']) && isset($_POST['ip_address']) && ($_SERVER["REQUEST_METHOD"] == "POST")){
	$response = contact_us($_POST);
	if ($response === true) {
    	echo "Your message was sent successfully.";
	} else {
		$error = $response;
    	print_r($error);
    }
   	if (isset($error)) {
        foreach ($error as $key => $error) { 
            echo '<p style="color: #922C38;">
		        <strong>Error!</strong> '.$error.'
		    </p>';
		}
	} 
}