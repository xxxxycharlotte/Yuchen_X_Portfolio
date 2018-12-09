<?php
$db_user='root';  //username
$db_pass='';  //password
   
   try {$conn = new PDO("mysql:host=localhost;dbname=db_portfolio", "$db_user", "$db_pass");
		
	  
  } catch(PDOException $exception) {
      echo'connect Error!'.$exception->getMessage();
  }
?>
