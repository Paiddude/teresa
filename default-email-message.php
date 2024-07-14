<?php 
  require_once './libraries/core.php';
?>
<!DOCTYPE html>
<html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <meta name="x-apple-disable-message-reformatting" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!--[if mso]>
    <xml>
      <o:OfficeDocumentSettings>
        <o:AllowPNG/>
        <o:PixelsPerInch>96</o:PixelsPerInch>
      </o:OfficeDocumentSettings>
    </xml>
    <![endif]-->

    <style type="text/css">

      @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:400,700');
      @media only screen {
        .serif {font-family: 'Montserrat', Helvetica, Arial, sans-serif !important;}
        .sans-serif {font-family: 'Open Sans', Arial, sans-serif !important;}
      }

      ::selection {color: #FFFFFF; background: #33363A;}
       #outlook a {padding: 0;}
      a {text-decoration: none;}
      table {border-collapse: collapse;}
      th, td, div, p, .column {-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; font-family: Helvetica, Arial, sans-serif; font-size: 13px; line-height: 23px;}
      img {-ms-interpolation-mode: bicubic; border: 0; display: block; height: auto; line-height: 100%; outline: none; text-decoration: none;}

      .wrapper {min-width: 700px;}
      .row {margin: 0 auto; width: 700px;}
      .row .row, th .row {width: 100%;}

      .spacer {overflow: hidden;}

      @media only screen and (max-width: 699px) {

        .wrapper {min-width: 100% !important;}
        .row {width: 90% !important;}
        .row .row {width: 100% !important;}

        .column {
          box-sizing: border-box;
          display: inline-block !important;
          line-height: inherit !important;
          width: 100% !important;
          word-break: break-word;
        }
        .mobile-1  {max-width: 8.33333%;}
        .mobile-2  {max-width: 16.66667%;}
        .mobile-3  {max-width: 25%;}
        .mobile-4  {max-width: 33.33333%;}
        .mobile-5  {max-width: 41.66667%;}
        .mobile-6  {max-width: 50%;}
        .mobile-7  {max-width: 58.33333%;}
        .mobile-8  {max-width: 66.66667%;}
        .mobile-9  {max-width: 75%;}
        .mobile-10 {max-width: 83.33333%;}
        .mobile-11 {max-width: 91.66667%;}
        .mobile-12 {
          padding-right: 30px !important;
          padding-left: 30px !important;
        }

        .mobile-offset-1  {margin-left: 8.33333% !important;}
        .mobile-offset-2  {margin-left: 16.66667% !important;}
        .mobile-offset-3  {margin-left: 25% !important;}
        .mobile-offset-4  {margin-left: 33.33333% !important;}
        .mobile-offset-5  {margin-left: 41.66667% !important;}
        .mobile-offset-6  {margin-left: 50% !important;}
        .mobile-offset-7  {margin-left: 58.33333% !important;}
        .mobile-offset-8  {margin-left: 66.66667% !important;}
        .mobile-offset-9  {margin-left: 75% !important;}
        .mobile-offset-10 {margin-left: 83.33333% !important;}
        .mobile-offset-11 {margin-left: 91.66667% !important;}

        .has-columns {
          padding-right: 20px !important;
          padding-left: 20px !important;
        }

        .has-columns .column {
          padding-right: 10px !important;
          padding-left: 10px !important;
        }

        .mobile-collapsed .column {
          padding-left: 0 !important;
          padding-right: 0 !important;
        }

        img {
          width: 100% !important;
          height: auto !important;
        }

        .mobile-center {
          display: table !important;
          float: none;
          margin-left: auto !important;
          margin-right: auto !important;
        }
        .mobile-left {
          float: none;
          margin: 0 !important;
        }
        .mobile-text-center {text-align: center !important;}
        .mobile-text-left   {text-align: left !important;}
        .mobile-text-right  {text-align: right !important;}

        .mobile-valign-top  {vertical-align: top !important;}

        .mobile-full-width {
          display: table;
          width: 100% !important;
        }

        .spacer                     {height: 30px; line-height: 100% !important; font-size: 100% !important;}
        .divider th                 {height: 60px;}
        .mobile-padding-top         {padding-top: 30px !important;}
        .mobile-padding-top-mini    {padding-top: 10px !important;}
        .mobile-padding-bottom      {padding-bottom: 30px !important;}
        .mobile-padding-bottom-mini {padding-bottom: 10px !important;}
        .mobile-margin-top          {margin-top: 30px !important;}
        .mobile-margin-top-mini     {margin-top: 10px !important;}
        .mobile-margin-bottom       {margin-bottom: 30px !important;}
        .mobile-margin-bottom-mini  {margin-bottom: 10px !important;}
      }
    </style>
  </head>
  <body style="box-sizing: border-box; margin: 0; padding: 0; width: 100%;">

    <table class="wrapper" align="center" bgcolor="#EEEEEE" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td style="padding: 30px 0;">

          <!-- Header Left -->
          <table class="row" align="center" bgcolor="#FFFFFF" cellpadding="0" cellspacing="0">
            <tr>
              <td class="spacer" height="40" style="font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
            </tr>
            <tr>
              <th class="column" width="640" style="padding-left: 30px; padding-right: 30px; text-align: left;">
                <a href="<?= $base_url; ?>" style="text-decoration: none;">
                  <img class="mobile-center" src="#logo#" width="105" title="<?= $app_name; ?> Logo" alt="<?= $app_name; ?> Logo" style="border: 0; width: 100%; max-width: 105px;">
                </a>
              </th>
            </tr>
            <tr>
              <td class="spacer" height="40" style="font-size: 40px; line-height: 40px; mso-line-height-rule: exactly;">&nbsp;</td>
            </tr>
          </table>
          <!-- /Header Left -->

          <!-- Intro Basic -->
          <table class="row" align="center" bgcolor="#F8F8F8" cellpadding="0" cellspacing="0">
            <tr>
              <td class="spacer" height="80" style="font-size: 80px; line-height: 80px; mso-line-height-rule: exactly;">&nbsp;</td>
            </tr>
            <tr>
              <th class="column" width="640" style="padding-left: 30px; padding-right: 30px; font-weight: 400; text-align: left;position: relative;">
                <div class="serif" style="color: #1F2225; font-size: 18px; font-weight: 700; line-height: 50px; margin-bottom: 30px;text-align: center;">#caption#</div>
                
                <div class="sans-serif" style="color: #969AA1; font-size: 18px; line-height: 28px; margin-bottom: 5px;">#message#</div><br>

                <div class="sans-serif" style="color: #969AA1; font-size: 18px; line-height: 28px;text-align:left;">Yours Sincerely, <br> #name#.<br> #email# <br> #phone#</div>

              </th>
            </tr>
            <tr>
              <td class="spacer" height="80" style="font-size: 80px; line-height: 80px; mso-line-height-rule: exactly;">&nbsp;</td>
            </tr>
            <tr>
              <th class="column" width="640" style="padding-left: 30px; padding-right: 30px; font-weight: 400; text-align: left;position: relative;">
                <div class="sans-serif" style="font-size: 14px; margin-bottom: 15px;text-align: center;width: auto;">
                  IP Address logged from #city#, #location# (IP Address: #ip_address#)
                </div>

              </th>
            </tr>
          </table>
          <!-- /Intro Basic -->

          <!-- Footer 1 -->
          <table class="row" align="center" bgcolor="#1F2225" cellpadding="0" cellspacing="0">
            <tr>
              <th class="column has-columns" width="640" style="padding-left: 30px; padding-right: 30px;">
                <table class="row" cellpadding="0" cellspacing="0" style="padding: 5px auto;width: 100%;">
                  <tr valign="top" style="vertical-align: top;">
                    <th class="column" width="400" style="padding-right: 10px; color: #969AA1; font-weight: 400; text-align: center;">&nbsp;
                      <div class="sans-serif" style="font-size: 14px; margin-bottom: 15px;text-align: center;width: auto;">
                        You can reach us via live chat, email us at <?= $portfolio_user_email; ?> or write us on WhatsApp on <?= $portfolio_user_contact; ?>. We are always here to answer your questions or provide you with clarification.
                      </div>
                      <div class="sans-serif" style="font-size: 14px; margin-bottom: 15px;text-align: center;color: #969AA1;">
                        Address: <?= $portfolio_user_address; ?>
                      </div>
                      <div class="sans-serif">&copy; <?= $portfolio_user_email; ?>. All Rights Reserved. </div>
                    </th>
                  </tr>
                </table>

                <div class="spacer" style="font-size: 40px; line-height: 10px; mso-line-height-rule: exactly;">&nbsp;</div>

                <table class="row" cellpadding="0" cellspacing="0">
                  <tr>
                    <th class="column" width="640" style="color: #969AA1; font-weight: 400; text-align: left;"></th>
                  </tr>
                  <tr>
                    <td class="spacer" height="30" style="font-size: 30px; line-height: 30px; mso-line-height-rule: exactly;">&nbsp;</td>
                  </tr>
                </table>
              </th>
            </tr>
          </table>
          <!-- /Footer 1 -->
        </td>
      </tr>
    </table>

  </body>
</html>
