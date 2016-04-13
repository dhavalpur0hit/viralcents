$(document).ready(function() {
  // Facebook Login
  $('#fb_login').click(function(){
    fbLogin();  
  });
});  

// Load the SDK asynchronously
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '1357150584310400',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.5' // use graph api version 2.5
  });

}

//login for facebook
function fbLogin() {
  FB.login(function(response) {
    console.log(response);
    if (response.authResponse) {
      console.log("creating user session");
      window.location = '/auth/facebook/callback'
    }
  });
}
