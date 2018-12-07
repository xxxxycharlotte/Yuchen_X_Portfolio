<?php
if(isset($_POST['submit']))
{
$name = $_POST['name'];
$subject = "Hello!";
$mailFrom = $_POST['email'];
$message = $_POST['message'];


// $mailTo = "azusakaworu@gmail.com";
$mailTo = "l_ding5@fanshaweonline.ca";
$headers ="From: noreply@lingdingportfolio.ca". "\r\n";
$headers .='Reply-To:'.$mailFrom;
$txt = "You have received an e-mail from".$name.".\n\n".$message;

if(mail($mailTo,$subject,$txt,$headers)){

header("Location:/index.html");
}else{
	echo 'Not send out';
}

       
}



?>