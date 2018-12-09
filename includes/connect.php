<?php
$db_dsn = array(
	'host' => 'localhost',
	'dbname' => '',
	'charset' => 'utf8',
	);

$dsn = 'mysql:'.http_build_query($db_dsn,'',';');
$dsn = 'mysql:host=localhost;dbname=db_movies;charset=utf8';
//This is the DB credentials
$db_user =  'root';
$db_pass = ''; //change this to 'root' if you are using MAMP;

try{
	$pdo = new PDO($dsn,$db_user,$db_pass);

}catch(PDOExpection $expection){
	ecHo 'Found ==>'.$expection->getMessage();
	exit();
}
?>