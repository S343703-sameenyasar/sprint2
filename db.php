<?php
	$dbhost	= "sql103.epizy.com";
	$dbuser = "epiz_30096549";
	$dbpass = "LSMoU4rmK6F";
	$dbname = "epiz_30096549_assignment";

	$connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

	if(mysqli_connect_errno()){ 
		die("Database Connection Failed" . mysqli_connect_error() . "(" . mysqli_connect_errno() . ")");
	}

?>