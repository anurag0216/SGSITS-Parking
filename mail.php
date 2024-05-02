<?php

function SendOtp( $sendTo, $otp) {

//  echo($sendTo);
//  echo($otp);
//  echo(" is the authentication code sent to registered email ID.");
echo '<div style="background-color: green; color: white; padding: 10px;">' . $otp . ' is the authentication code sent to registered email ID:-</div>';

require_once 'vendor/autoload.php';

// Create the Transport
$transport = (new Swift_SmtpTransport('smtp.gmail.com', 587, 'tls'))
  ->setUsername('sgsitsparking@gmail.com')
  ->setPassword('ugjl yoew pwxd fkro')
;

// Create the Mailer using your created Transport
$mailer = new Swift_Mailer($transport);

// Create a message
// $message = (new Swift_Message('Smart Parking Notification'))
//   ->setFrom(['happy.smart17@gmail.com' => 'SGSITS Parking'])
//   ->setTo([$sendTo=>$sendTo])
//   ->setBody('Welcome to SGSITS smart Parking! 
//   Your authentication code For Parking is '.$otp)
//   ;
$message = (new Swift_Message('Smart Parking Notification'))
    ->setFrom(['happy.smart17@gmail.com' => 'SGSITS Parking'])
    ->setTo([$sendTo => $sendTo])
    ->setBody('Welcome to SGSITS Smart Parking! 

Thank you for choosing our parking services. Before arriving at the parking gate, we kindly request you to complete the payment for your parking spot. Please click the link below to make the payment:

Payment Link: https://pay.upilink.in/pay/8696364656@ybl

Your authentication code for parking is: ' . $otp . '

Please keep this authentication code handy, as you will need to enter it at the parking gate to open the smart gate and gain access to the parking facility.

If you have already made the payment, kindly ignore this message. We look forward to serving you at our parking facility.

Safe travels!

SGSITS Parking Team');


// Send the message
if($mailer->send($message))
{
	// echo("Otp Sent to Registered Email ID");
  echo("");
}
//echo($result);
//print($result);
//printf($result);
}

?>
