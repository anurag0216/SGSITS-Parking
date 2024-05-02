<?php

function SendReject( $sendTo, $otp) {
 
//  echo($sendTo);
//  echo($otp);
require_once 'vendor/autoload.php';

// Create the Transport
$transport = (new Swift_SmtpTransport('smtp.gmail.com', 587, 'tls'))
  ->setUsername('sgsitsparking@gmail.com')
  ->setPassword('ugjl yoew pwxd fkro')
;

// Create the Mailer using your created Transport
$mailer = new Swift_Mailer($transport);

// Create a message
$message = (new Swift_Message('Smart Parking Notification'))
  ->setFrom(['happy.smart17@gmail.com' => 'SGSITS Parking'])
  ->setTo([$sendTo=>$sendTo])
  ->setBody('Welcome to SGSITS smart Parking! 
  Sorry for inconvenience. Your parking request has been rejected.')
  ;

// Send the message
// if($mailer->send($message))
// {
// 	echo("Reject Notification sent to Registered Email ID");
// }
if ($mailer->send($message)) {
    echo '<div style="background-color: red; color: white; padding: 10px;">Reject Notification sent to Registered Email ID:-</div>';
}

//echo($result);
//print($result);
//printf($result);
}

?>
