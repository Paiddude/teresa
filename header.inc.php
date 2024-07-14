<?php
    require_once 'libraries/core.php';
    require_once 'libraries/functions.inc.php';

    $ip = get_client_ip();
    $response = confirm_client_ip($ip);

    $ip_address = $response["ip_address"];
    $city = $response["city"];
    $location = $response["location"];
    // var_dump($location);
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Meta -->
    <base href="<?= $base_url; ?>">

    <meta name="robots" content="noindex, nofollow">
    <meta name="robots" content="none">
    <meta name="googlebot" content="noindex, nofollow">
    <meta name="bingbot" content="noindex, nofollow">
    <meta name="slurp" content="noindex, nofollow">
    <meta name="DuckDuckBot" content="noindex, nofollow">
    <meta name="Baiduspider" content="noindex, nofollow">
    <meta name="YandexBot" content="noindex, nofollow">
    <meta name="facebot" content="noindex, nofollow">
    <meta name="ia_archiver " content="noindex, nofollow">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="An investment consultant.">
    <meta name="keywords" content="Investment trader, Trading strategies, Stock market trends, Investment opportunities, Market analysis, Trading indicators, Technical analysis, Fundamental analysis, Portfolio management, Risk management, Market volatility, Investment returns, Trading platforms, Stock market news, Day trading, Swing trading, Long-term investing, Investment portfolio diversification, Economic indicators, Options trading, Forex trading, Futures trading, Investment advice, Financial planning, Asset allocation, Investment risk, Investment performance, Investment portfolio optimization, Market psychology, Investment trends">
    <meta name="author" content="<?= $app_name; ?>">

    <!-- favicon -->
    <link rel="icon" sizes="16x16" href="<?= $base_url; ?>/assets/img/logo/Color logo with background.png">

    <!-- Title -->
    <title><?= $app_name; ?> - <?= $app_motto; ?></title>

    <!-- CSS Plugins -->
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/elegant-font-icons.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/jquery.animatedheadline.css">
    <link rel="stylesheet" href="assets/css/animate.css">

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous"></script>

    <!-- Font Google -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"/>
    
    <!-- main style -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/colors/color-6.css">
    <link rel="stylesheet" href="assets/css/custom.css">
</head>

<body>
    <!--Menu-->
    <div class="main-menu fixed-top">
        <nav class="nav-menu">
            <ul class="menu">
                <li>
                    <a href="index" class="active">Home</a>
                </li>
                <li>
                    <a href="about">About</a>
                </li>
                <li>
                    <a href="portfolio">Portfolio</a>
                </li>
                <li>
                    <a href="contact">Contact</a>
                </li>
            </ul>
        </nav>
        <!--hamburger-menu-->
        <a class="hamburger-menu js-toggle-menu" href="#">
            <div class="g-lines">
                <span class="line line-dark"></span>
                <span class="line line-dark"></span>
                <span class="line line-dark"></span>
            </div>
        </a>
    </div>
    
    <div class="main-logo text-center">
        <div class="container">
            <div class="col-lg-6">
                <a class="logo wow customFadeInUp slow" href="/">
                    <img src="<?= $base_url; ?>/assets/img/logo/Black logo - no background.png" alt="investor image">
                </a>
            </div>
        </div>
    </div>