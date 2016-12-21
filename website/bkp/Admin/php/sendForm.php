<?php
    require_once 'libs/swift/swift_required.php';
	include "db.php";
    // Check if the "Sender's Email" input field is filled out
    $postdata = file_get_contents("php://input");
    $request = json_decode($postdata);
//Get data
    $nome = $request->nome;
    $apelido = $request->apelido;
    $email=$request->email;
    $telefone = $request->telefone;
    $descricao = $request->descricao;

//STORE CONTACT IN DB
/*
	$dbconn = connect_db();	
    save_contact($nome, $apelido, $email, $telefone, $descricao, $dbconn);
	pg_close($dbconn);
*/
//SEND MAIL
    // Sanitize E-mail Address
    $email =filter_var($email, FILTER_SANITIZE_EMAIL);
    // Validate E-mail Address
    $email= filter_var($email, FILTER_VALIDATE_EMAIL);

    if (!$email){
        echo "Invalid Sender's Email";
    }
    else{
        
        $subject = 'Contacto de um cliente pelo site';
        $message = 'Nome: '.$nome." ".$apelido."\r\n".'Telefone: '.$telefone."\r\n".'Email: '.$email."\r\n".'Mensagem: '.$descricao."\r\n";
        $username = 'requilibriusMailserver@gmail.com';
        $password = 'requilibrius';
       
        $transport = Swift_SmtpTransport::newInstance('smtp.gmail.com', 465, "ssl")
         ->setUsername($username)
         ->setPassword($password);
        $mailer = Swift_Mailer::newInstance($transport);
        $message = Swift_Message::newInstance($subject)
         ->setFrom(array('requilibriusmailserver@gmail.com' => 'Site Requilibrius'))
         ->setTo(array('ft.requilibrius@gmail.com'))
         ->setBody($message);
        $result = $mailer->send($message);
    }
?>