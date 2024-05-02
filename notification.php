<?php
require 'vendor/autoload.php'; // Include the Twilio PHP library

use Twilio\Rest\Client;

// Your Twilio Account SID and Auth Token

// Create a Twilio client
$client = new Client($accountSid, $authToken);

// User's WhatsApp phone number
$userWhatsAppNumber = 'whatsapp:+918696384756'; // Replace with the user's WhatsApp number in E.164 format

// Attendant's WhatsApp phone number (assuming you have this information)
$attendantWhatsAppNumber = 'whatsapp:+918839694436'; // Replace with the attendant's WhatsApp number in E.164 format

// Message to send
$message = "Your parking slot request has been approved.";

try {
    // Send the WhatsApp message to the user
    $client->messages->create(
        $userWhatsAppNumber,
        [
            'from' => 'whatsapp:+14155238886', // Replace with your Twilio WhatsApp number
            'body' => $message,
        ]
    );

    echo "WhatsApp message sent to the user successfully.";

    // You can also send a WhatsApp message to the attendant if needed
    $client->messages->create(
        $attendantWhatsAppNumber,
        [
            'from' => 'whatsapp:+14155238886', // Replace with your Twilio WhatsApp number
            'body' => "Parking slot approval notification sent to the user.",
        ]
    );

    echo "WhatsApp message sent to the attendant successfully.";
} catch (Exception $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
