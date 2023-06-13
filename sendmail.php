<?php
 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
 
require 'vendor/autoload.php';

function sendmail($subject,$msg,$receiver)
{
        
    $mail = new PHPMailer(true);
    
    try {
        $mail->SMTPDebug = 2;                                      
        $mail->isSMTP();                                           
        $mail->Host       = 'smtp.gmail.com;';                   
        $mail->SMTPAuth   = true;                            
        $mail->Username   = 'avenuefashion.vf@gmail.com';                
        $mail->Password   = 'pnnocaizyrhhklqg';                       
        $mail->SMTPSecure = 'tls';                             
        $mail->Port       = 587; 
    
        $mail->setFrom('avenuefashion.vf@gmail.com', 'Avenue Fashion');          
        $mail->addAddress($receiver);
        // $mail->addAddress('receiver2@gfg.com', 'Name');
        
        $mail->isHTML(true);                                 
        $mail->Subject = $subject;
        $mail->Body    = $msg;
        $mail->AltBody = 'Some error occurs';
        $mail->SMTPDebug = 0;
        $mail->send();
        // $_SESSION['msg'] = "Mail has been sent successfully!";
        echo "Mail has been sent successfully!";
    } catch (Exception $e) {
        // $_SESSION['msg'] = $mail->ErrorInfo;
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
    
    }

?>