<?php require_once 'header.inc.php'; ?>

    <!-- contact-->
    <div class="section contact">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!--Section title-->
                    <div class="section-heading">
                        <p class="section-description bg-base-color">Feel free to conatct me</p>
                        <h2 class="section-title"> Contact Me</h2>
                    </div>
                </div>
            </div>

            <div class="row ">
                <div class="col-lg-3 col-md-6">
                    <!--phone-->
                    <div class="contact-item ">
                        <p><i class="fa fa-headset base-color"></i> Phone: </p>
                        <p><a href="tel:+<?= $portfolio_user_contact_raw; ?>"><?= $portfolio_user_contact; ?></a></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <!--Email-->
                    <div class="contact-item">
                        <p><i class="fas fa-envelope base-color"></i> Email: </p>
                        <p> <a href="mailto:<?= $portfolio_user_email; ?>"><?= $portfolio_user_email; ?> </a></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <!--Adress-->
                    <div class="contact-item">
                        <p><i class="fas fa-map-marker-alt base-color"></i> Adress: </p>
                        <p><?= $portfolio_user_address; ?></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <!--social-icons-->
                    <div class="contact-item ">
                        <p><i class="fab fa-whatsapp base-color"></i>Whatsapp: </p>
                        
                        <a href="https://wa.me/<?= $portfolio_user_contact_raw; ?>" target="_blank">
                            <!-- <i class="fab fa-whatsapp base-color"></i> -->
                            <?= $portfolio_user_contact; ?> 
                        </a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-8" style="margin: auto;">
                    <div class="formbold-main-wrapper">
                        <!-- Author: FormBold Team -->
                        <!-- Learn More: https://formbold.com -->
                        <div class="formbold-form-wrapper">
                            <label class="formbold-form-label formbold-form-label-2" style="text-align: center;" class="mb-1">
                              Free Consultation
                            </label>

                            <form id="contactForm">
                                <!-- <div class="flex flex-wrap formbold--mx-3">
                                    <div class="w-full sm:w-half formbold-px-3">
                                        <div class="formbold-mb-5 w-full">
                                            <label for="fullname" class="formbold-form-label"> Full Name </label>
                                            <input
                                                type="text"
                                                name="fullname"
                                                id="fullname"
                                                placeholder="Fullname"
                                                class="formbold-form-input"
                                            />
                                        </div>
                                    </div>
                                    <div class="w-full sm:w-half formbold-px-3">
                                        <div class="formbold-mb-5">
                                            <label for="email" class="formbold-form-label"> Email Address </label>
                                            <input
                                                type="email"
                                                name="email"
                                                id="email"
                                                placeholder="Email"
                                                class="formbold-form-input"
                                            />
                                        </div>
                                    </div>
                                </div>

                                <div class="formbold-mb-5">
                                    <label for="phone" class="formbold-form-label"> Phone Number </label>
                                    <input
                                        type="tel"
                                        name="phone"
                                        id="phone"
                                        placeholder="Phone Number"
                                        class="formbold-form-input"
                                    />
                                </div>

                                <div class="formbold-mb-5">
                                    <label for="message" class="formbold-form-label"> Message </label>
                                    <textarea 
                                        class="formbold-form-textarea" 
                                        id="message" 
                                        name="message" 
                                    ></textarea>
                                </div> -->
                                <input type="hidden" name="ip_address" id="ip_address" value="<?php if(isset($ip_address)){ echo $ip_address;}else{ echo "Could not get IP address";} ?>" readonly >
                                <input type="hidden" name="city" id="city" value="<?php if(isset($city)){ echo $city;}else{ echo "Could not locate city";} ?>" readonly >
                                <input type="hidden" name="location" id="location" value="<?php if(isset($location)){ echo $location;}else{ echo "Could not locate location";} ?>" readonly >
                                <div>
                                    <!-- <button type="submit" id="subBtn" class="formbold-btn">Book Appointment</button> -->
                                    <a href="mailto:<?= $portfolio_user_email; ?>" type="button" id="subBtn" class="formbold-btn">Book Appointment</a>
                                </div>
                            </form>
                            <script>
                                // trigger when registration form is submitted
                                $(document).on('submit', '#contactForm', function(e){
                                    e.preventDefault();
                                    if($('#fullname').val() != '' && $('#email').val() != '' && $('#phone').val() != '' && $('#message').val() != '' && $('#ip_address').val() != '' && $('#city').val() != '' && $('#location').val() != ''){   
                                        var fullname = $("#fullname").val();
                                        var email = $("#email").val(); 
                                        var phone = $("#phone").val(); 
                                        var message = $("#message").val(); 
                                        var ip_address = $("#ip_address").val(); 
                                        var city = $("#city").val(); 
                                        var location = $("#location").val(); 

                                        // console.log(form_data);
                                        $.ajax({
                                            url:"process.php",
                                            method:"POST",
                                            data:'fullname='+fullname+'&email='+email+'&phone='+phone+'&message='+message+'&ip_address='+ip_address+'&city='+city+'&location='+location,
                                            beforeSend: function(){
                                                setTimeout(function () {
                                                    $('#subBtn').text('Submitting...');
                                                }, 100); 
                                            },
                                            success : function(result) {
                                                // console.log(result);
                                                setTimeout(function() {
                                                    if(result){
                                                        toastr.success("Message sent successfully.");
                                                        $('#subBtn').text('Book Appointment');
                                                        $("#contactForm")[0].reset();
                                                    }else{
                                                        toastr.error(result);
                                                        $('#subBtn').text('Book Appointment');
                                                    }
                                                }, 4000);
                                            },
                                            error: function(error){
                                                // on error, tell the user sign up failed
                                                // console.log(error);
                                                setTimeout(function () {
                                                    toastr.error("Error! Unable to submit form.");
                                                    $('#subBtn').delay(3000).text('Book Appointment');
                                                }, 4000); 
                                            }
                                        });                        
                                    }else{
                                        toastr.warning('Form inputs cannot be empty!');
                                    }
                                });
                          </script>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row mb-30" >
                <!--google-map-->
                <div class="col-lg-12 wow customFadeInUp delay-0-4s slow">
                    <div class="google-map mb-30">
                        <iframe height="450" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" style="border:0;width: 100%;" src="https://maps.google.it/maps?q=<?= $portfolio_user_address; ?><br>&output=embed"></iframe>
                    </div>
                </div>
            </div> 
        </div>
    </div>


<?php require_once 'footer.inc.php'; ?>