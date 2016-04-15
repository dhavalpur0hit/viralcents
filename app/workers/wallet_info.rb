class WalletInfo

  include Sidekiq::Worker
  include Sidetiq::Schedulable

  sidekiq_options queue: "high"


 recurrence backfill: true do
    minutely
  end




  def perform(param)

   
        require 'sendgrid-ruby'
          sendgrid = SendGrid::Client.new do |c|
             c.api_key ='Secret'  
            end

          email = SendGrid::Mail.new do |m|
              m.to      =  param
              m.from    = 'Viralcents'
              m.subject = 'welcome'
                      m.html    = '<!DOCTYPE html>
<html>
<head>
<style>

.table
{
  style="border-collapse:collapse; height:100%; margin:0; padding:0; width:100%; font-family: "Source Sans Pro", "Georgia", "Arial", sans-serif !important; font-weight: 300; mso-table-lspace:0pt; mso-table-rspace:0pt;"
}


</style>


</head>


<body style="background-color:#e5e5e5">


  <h1 style="font-family: Georgia;margin-left: 10%;color:#009ce6;text-shadow: 2px 2px #FFF;"> ViralCents </h1>
              
<div style="background-color:#fff;width:80%;margin-left: 10%"> 

  <table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" id="bodyTable" width="100%">
    <tr>
      <td align="center" id="bodyCell" style="height:100%;  margin:0; padding:0; width:100%; font-family: "Georgia", "Arial", sans-serif !important; font-weight: 300;" valign="top">
        
        <table border="0" cellpadding="0" cellspacing="0" class="templateContainer" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; max-width:564px;" width="100%">
          <tr>
            <td id="templatePreheader" style="border-top:0;border-bottom:0;padding-top:9px;padding-bottom:9px;color:#323232;text-align: center" valign="top">

              
            </td>
          </tr>
          

          <tr>

            <td id="templateHeader" valign="top"></td>
          </tr>
          <tr>
            <td id="templateBody" valign="top">
              <table border="0" cellpadding="0" cellspacing="0" class="mcnTextBlock" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                <tbody class="mcnTextBlockOuter">
                  <tr>
                    <td class="mcnTextBlockInner" valign="top">
                      <table align="left" border="0" cellpadding="0" cellspacing="0" class="mcnTextContentContainer" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                        <tbody>
                          <tr>
                            <td class="mcnTextContent" style="padding-top:9px; padding-right: 18px; padding-bottom: 9px; padding-left: 18px;" valign="top">
                              <h1 style="text-align: left; display:block; margin:0; padding:0; color:#323232;    font-family:Georgia;font-size:26px;font-style:normal;   font-weight:bold; line-height:125%;   letter-spacing:normal;">Hello User</h1>
                              <span style="color: #323232;line-height: 30px;font-size:20px;font-family:Georgia">
                              <br>
                              See how much you earn this week on viralcents
                              <br>
                              <h1>
                                  2000 <span style="font-size:20px">  Rs </span> 
                                </h1>
                                Total Money in your wallet.
                                <br><br>
                                <button style="background-color:#009ce6;color:#fff;border:10px;border-radius:10px;padding: 12px 12px 12px 12px;font-size: 15px"> 
                                <b>Continue  on Viralcents</b></button>
                                
                                <button style="background-color:#009ce6;color:#fff;border:10px;border-radius:10px;padding: 12px 12px 12px 12px;font-size: 15px"> 
                                <b>Earn More Money</b></button>
                                
                                </span>

                              </br>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                </tbody>
              </table>
            </td>
          </tr>
          <tr>
            <td id="templateFooter" style="text-align:center; /*@editable*/ /*@editable*/border-top:0;color: #323232 /*@editable*/border-bottom:0; /*@editable*/padding-top:9px; /*@editable*/padding-bottom:9px;" valign="top">
              <table border="0" cellpadding="0" cellspacing="0" class="mcnFollowBlock" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                <tbody class="mcnFollowBlockOuter">
                  <tr>
                    <td align="center" class="mcnFollowBlockInner" style="padding:9px" valign="top">
                      <table border="0" cellpadding="0" cellspacing="0" class="mcnFollowContentContainer" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                        <tbody>
                          <tr>
                            <td align="center" style="padding-left:9px;padding-right:9px;">
                              <table border="0" cellpadding="0" cellspacing="0" class="mcnFollowContent" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                                <tbody>
                                  <tr>
                                    <td align="center" style="padding-top:9px; padding-right:9px; padding-left:9px;" valign="top">
                                      <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                                        <tbody>
                                          <tr>
                                            <td align="center" valign="top">
                                              <!--[if mso]>
                                                <table align="center" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                              <![endif]-->
                                              <!--[if mso]>
                                                <td align="center" valign="top">
                                              <![endif]-->
                                              <table align="left" border="0" cellpadding="0" cellspacing="0" style="display:inline; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                                                <tbody>
                                                  <tr>
                                                    <td class="mcnFollowContentItemContainer" style="padding-right:10px; padding-bottom:9px;" valign="top">
                                                      <table border="0" cellpadding="0" cellspacing="0" class="mcnFollowContentItem" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                                                        <tbody>
                                                          <tr>
                                                            <td align="left" style="padding-top:5px; padding-right:10px; padding-bottom:5px; padding-left:9px;" valign="middle">
                                                              <table align="left" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="">
                                                                <tbody>
                                                                  <tr>
                                                                    <td align="center" class="mcnFollowIconContent" valign="middle" width="24">                            
                          <a href="http://zurb.com/playground/projects/responsive-email-templates/newsletter.html#" style="margin: 0;padding: 10px 2px;font-family: &quot;Georgia Neue&quot;, &quot;Georgia&quot;, Georgia, Arial, sans-serif;color: #323232;font-size: 20px;margin-bottom: 10px;text-decoration: none;font-weight: bold;display: block;text-align: center;background-color: #3B5998!important;border-radius:30px 30px 30px 30px;width: 35px;height: 15px;text-align: center;color:#fff">f</a>


                                                                    </td>
                                                                  </tr>
                                                                </tbody>
                                                              </table>
                                                            </td>
                                                          </tr>
                                                        </tbody>
                                                      </table>
                                                    </td>
                                                  </tr>
                                                </tbody>
                                              </table>
                                              <!--[if mso]>
                                                </td>
                                              <![endif]-->
                                              <!--[if mso]>
                                                <td align="center" valign="top">
                                              <![endif]-->
                                              <table align="left" border="0" cellpadding="0" cellspacing="0" style="display:inline; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;">
                                                <tbody>
                                                  <tr>
                                                    <td class="mcnFollowContentItemContainer" style="padding-right:10px; padding-bottom:9px;" valign="top">
                                                      <table border="0" cellpadding="0" cellspacing="0" class="mcnFollowContentItem" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                                                        <tbody>
                                                          <tr>
                                                            <td align="left" style="padding-top:5px; padding-right:10px; padding-bottom:5px; padding-left:9px;" valign="middle">
                                                              <table align="left" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="">
                                                                <tbody>
                                                                  <tr>
                                                                    <td align="center" class="mcnFollowIconContent" valign="middle" width="24">
                                                                                                  
                          <a href="http://zurb.com/playground/projects/responsive-email-templates/newsletter.html#" style="margin: 0;padding: 10px 2px;font-family: &quot;Georgia Neue&quot;, &quot;Georgia&quot;, Georgia, Arial, sans-serif;color: #FFF;font-size: 20px;margin-bottom: 10px;text-decoration: none;font-weight: bold;display: block;text-align: center;background-color: #1daced!important;border-radius:30px 30px 30px 30px;width: 35px;height: 15px;text-align: center">t</a>


                                                                    </td>
                                                                  </tr>
                                                                </tbody>
                                                              </table>
                                                            </td>
                                                          </tr>
                                                        </tbody>
                                                      </table>
                                                    </td>
                                                  </tr>
                                                </tbody>
                                              </table>
                                              <!--[if mso]>
                                                </td>
                                              <![endif]-->
                                              <!--[if mso]>
                                                <td align="center" valign="top">
                                              <![endif]-->
                                            </td>
                                          </tr>
                                        </tbody>
                                      </table>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                </tbody>
              </table> 

              <table border="0" cellpadding="0" cellspacing="0" class="mcnDividerBlock" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                <tbody class="mcnDividerBlockOuter">
                  <tr>
                    <td class="mcnDividerBlockInner" style="min-width: 100%; padding: 10px 18px 25px;">
                      <table border="0" cellpadding="0" cellspacing="0" class="mcnDividerContent" style="min-width: 100%;border-top: 2px solid #EEEEEE; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                        <tbody>
                          <tr>
                            <td>
                              <span></span>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <!--
                        <td class="mcnDividerBlockInner" style="padding: 18px;">
                        <hr class="mcnDividerContent" style="border-bottom-color:none; border-left-color:none; border-right-color:none; border-bottom-width:0; border-left-width:0; border-right-width:0; margin-top:0; margin-right:0; margin-bottom:0; margin-left:0;" />
                      -->
                    </td>
                  </tr>
                </tbody>
              </table>

              <table border="0" cellpadding="0" cellspacing="0" class="mcnTextBlock" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                <tbody class="mcnTextBlockOuter">
                  <tr>
                    <td class="mcnTextBlockInner" valign="top">
                      <table align="center" border="0" cellpadding="0" cellspacing="0" class="mcnTextContentContainer" style="min-width:100%; border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;" width="100%">
                        <tbody>
                          <tr>
                            <td class="mcnTextContent" style="padding-top:9px; padding-right: 18px; padding-bottom: 9px; padding-left: 18px; *@editable*/color:#fff;/*@editable*/font-family:Georgia; /*@editable*/font-size:12px; /*@editable*/line-height:150%; /*@editable*/text-align:center;" valign="top">
                            <span style="color: #323232"> 
                              <em>Copyright © 2016 Techritzy, All rights reserved.</em>
                              <br>
                                <br>
                                  <strong>any-email@gmail.com</strong>
                                  </span>
                                </br>
                              </br>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                </tbody>
              </table>
            </td>
          </tr>
        </table>
        <!--[if gte mso 9]>
          </td>
          </tr>
          </table>
        <![endif]-->
        <!-- // END TEMPLATE -->
      </td>
    </tr>
  </table>

</body>
</html>'
            end
        sendgrid.send(email)

    
  end



end










  

