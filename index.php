<?php require_once 'header.inc.php'; ?>

    <!--Home-->
    <section class="home home-6 d-flex align-items-center">
        <div class="imagePane" id="imagePane">
            <div class="thumbnail" id="thumbnail">
                <img src="<?= $base_url; ?>/assets/img/works/l3.jpg" alt="Teresa Janette Brock image">
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="home-banner wow customFadeInUp delay-0-2s slow" style="margin-top: 10%;">                      
                        <h6> Hi , There! </h6>
                        <h1 class="cd-headline clip">I Am 
                            <span class="cd-words-wrapper base-color">
                                <b class="is-visible"> <?= $portfolio_user_short; ?>. </b>
                                <b>a Broker.</b>
                                <b>an Investor.</b>
                                <b>a Stock Advisor.</b>
                                <!-- <b>Freelance Broker.</b> -->
                            </span>
                        </h1>
                        <p class="max-width-400">
                         An Investment Advisor and a Broker dually registered.
                        </p> 

                        <span style="display:block;padding:auto;margin-bottom: 5px;">
                            <a href="https://wa.me/<?= $portfolio_user_contact_raw; ?>" target="_blank" class="icon-button twitter">
                                <i class="fab fa-whatsapp"></i>
                                <span></span>
                            </a>
                            <a href="mailto:<?= $portfolio_user_email; ?>" class="icon-button google-plus">
                                <i class="fas fa-envelope"></i>
                                <span></span>
                            </a>
                        </span>

                        <a href="about" style="margin: 5px;" class="btn-custom">More about me</a>
                        <a href="mailto:<?= $portfolio_user_email; ?>" style="margin: 5px;" class="btn-custom">Book Appointment </a>
                        <!-- <a href="contact" style="margin: 5px;" class="btn-custom">Book Appointment </a> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-6 text-center">
                        <span class="wow customFadeInUp delay-0-4s slow">© <?= date("Y"); ?> <?= $app_name; ?> — All Rights Reserved. <a target="_blank" href="https://brokercheck.finra.org/individual/summary/2334087"><img style="background-color: #fff;padding: 3px;border-radius: 10%" width="150" height="70" src="<?= $base_url; ?>/assets/img/works/check5.png" alt="Brokercheck finra image"></a></span>
                    </div>
                </div>
            </div>
        </div>
    </section>


     
<?php require_once 'footer.inc.php'; ?>