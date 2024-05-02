<?php
session_start();
require 'mysqlConnect.php';
require 'update_slots.php';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Smart Parking Web Portal</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="custom.css" rel="stylesheet">

<style>
/* .modal-fullscreen size: we use Bootstrap media query breakpoints */

.modal-fullscreen .modal-dialog {
  margin: 0;
  margin-right: auto;
  margin-left: auto;
  width: 100%;
}
@media (min-width: 768px) {
  .modal-fullscreen .modal-dialog {
    width: 750px;
  }
}
@media (min-width: 992px) {
  .modal-fullscreen .modal-dialog {
    width: 970px;
  }
}
@media (min-width: 1200px) {
  .modal-fullscreen .modal-dialog {
     width: 1170px;
  }
}

/* .modal-transparent */

#regForm label{
color: #000 !important; /* makes the text-black */
}


</style>
<script type="text/javascript">
function checkPass()
{


    //Store the password field objects into variables ...
    var pass1 = document.getElementById('password');
    var pass2 = document.getElementById('password_confirm');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match.
        //Set the color to the good color and inform
        //the user that they have entered the correct password
        pass2.style.backgroundColor = goodColor;

        $('#regBtn').prop('disabled', false);
        $('#regOwner').prop('disabled', false);
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        $('#regBtn').prop('disabled', true);
        $('#regOwner').prop('disabled', true);
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
}

// validate email
function email_validate(email)
{
var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
   var status = document.getElementById("emailstatus");
    if(regMail.test(email) == false)
    {
    document.getElementById("emailstatus").innerHTML    = "<span class='warning'>Email address is not valid.</span>";
        status.style.color = "#f44336";
        $('#regBtn').prop('disabled', true);
        $('#regOwner').prop('disabled', true);
    }
    else
    {
    document.getElementById("emailstatus").innerHTML  = "<span class='valid'>Email address is Valid!</span>";
        status.style.color = "#00838f ";
        $('#regBtn').prop('disabled', false);
        $('#regOwner').prop('disabled', false);
    }
}

$(".modal-fullscreen").on('show.bs.modal', function () {
  setTimeout( function() {
    $(".modal-backdrop").addClass("modal-backdrop-fullscreen");
  }, 0);
});
$(".modal-fullscreen").on('hidden.bs.modal', function () {
  $(".modal-backdrop").addClass("modal-backdrop-fullscreen");
});

$(".modal-transparent").on('show.bs.modal', function () {
  setTimeout( function() {
    $(".modal-backdrop").addClass("modal-backdrop-transparent");
  }, 0);
});
$(".modal-transparent").on('hidden.bs.modal', function () {
  $(".modal-backdrop").addClass("modal-backdrop-transparent");
});
</script>
  </head>
  <body>
   

  <div class="row">
      <div class="container">
         <div class="col-md-4"></div>
         <div class="col-md-4">
               <div class="page-header">
                 <center><h1 class="colors">SMART PARKING PORTAL</h1></center>
               </div>
         </div>
         <div class="col-md-4"></div>
      </div>
    </div>
    <center><h3 class="colors">Please select your role:</h3></center>
    
    <form action="redirect.php" method="GET">
        <button type="submit" name="role" value="admin">Admin</button>
        <button type="submit" name="role" value="attendant">Attendant</button>
        <button type="submit" name="role" value="user">User</button>
    </form>
  </body>
</html>
