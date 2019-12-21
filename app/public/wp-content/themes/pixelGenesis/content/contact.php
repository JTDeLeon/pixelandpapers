<?php

/**
 * Template Name: Contact
 * Pixel&Papers
 * 
 *
 * @author     Jonathan Deleon <Jondeleon856@gmail.com> & Clay Skougard <>
 */


 
if($_POST) {
    $visitor_name = "";
    $visitor_email = "";
    $visitor_phone = "";
    $concerned_service = "";
    $visitor_foundus = "";
     
    if(isset($_POST['visitor_name'])) {
        $visitor_name = filter_var($_POST['visitor_name'], FILTER_SANITIZE_STRING);
    }
     
    if(isset($_POST['visitor_email'])) {
        $visitor_email = str_replace(array("\r", "\n", "%0a", "%0d"), '', $_POST['visitor_email']);
        $visitor_email = filter_var($visitor_email, FILTER_VALIDATE_EMAIL);
    }
     
    if(isset($_POST['visitor_phone'])) {
        $visitor_phone = filter_var($_POST['visitor_phone'], FILTER_SANITIZE_STRING);
    }
     
    if(isset($_POST['concerned_service'])) {
        $concerned_service = filter_var($_POST['concerned_service'], FILTER_SANITIZE_STRING);
    }
     
    if(isset($_POST['visitor_foundus'])) {
        $visitor_foundus = htmlspecialchars($_POST['visitor_foundus']);
    }
     
    if($concerned_service == "web-design") {
        $recipient = "info@rezolutionsdesign.com";
    }
    else {
        $recipient = "info@rezolutionsdesign.com";
    }

    $message = 'Name ' . $visitor_name . "\r\n" . 'Email ' . $visitor_email . "\r\n" . 'Phone ' . $visitor_phone . "\r\n" . 'Found us: ' . $visitor_foundus . "\r\n" . 'Service interested: ' . $concerned_service;
     
    $headers  = 'MIME-Version: 1.0' . "\r\n"
    .'Content-type: text/html; charset=utf-8' . "\r\n"
    .'From: ' . $visitor_email . "\r\n";
     
    if(mail($recipient, $visitor_phone, $message, $headers)) {
        echo "<p>Thank you for contacting us, $visitor_name. You will get a reply within 24 hours.</p>";
    } else {
        echo '<p>We are sorry but the email did not go through.</p>';
    }
     
} else {
    echo '<p>Something went wrong</p>';
}
 
?>