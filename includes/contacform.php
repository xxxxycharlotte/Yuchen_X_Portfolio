<?php
if(isset($_POST['submit']))
{
$name = $_POST['name'];
$subject = "Hello!";
$mailFrom = $_POST['email'];
$message = $_POST['message'];


// $mailTo = "azusakaworu@gmail.com";
$mailTo = "y_xia59790@fanshaweonline.ca";
$headers ="From: noreply@yuchenxia.com". "\r\n";
$headers .='Reply-To:'.$mailFrom;
$txt = "You have received an e-mail from".$name.".\n\n".$message;

if(mail($mailTo,$subject,$txt,$headers)){

header("Location:/index.html");
}else{
	echo 'Not send out';
}

       
}



?>