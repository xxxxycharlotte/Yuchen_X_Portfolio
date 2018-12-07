<?php
if(isset($_POST['submit']))
{
$name = $_POST['name'];
$subject = "Hello";
$mailForm = $_POST['email'];
$message = $_POST['message'];


$mailTo = "550356048xyc@gmail.com";
$headers = "From: noreply@yuchenxia.com". "\r\n";
$headers = 'Reply-To:'.$mailForm;
$text ="You have received an e-mail from" .$name. ".\r\n".$message;

if (mail($mailTo, $subject, $tet, $headers)) {
	
header("Location:/index.html");
}else {
	echo 'Not send out';
}

}


?>