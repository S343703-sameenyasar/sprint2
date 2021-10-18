<?php include 'db.php'; ?>
<?php session_start(); ?>
<?php 
	
 if($_POST){
	
 	$query = "SELECT * FROM questions";
	$total_questions = mysqli_num_rows(mysqli_query($connection,$query));
	
	
 	$number = $_POST['number'];
	
	
	
 	$next = $number+1;
	
 	 if($number == $total_questions){
 	 	header("LOCATION: final.php");
 	 }else{
 	 	header("LOCATION: question.php?n=". $next);
 	 }

 }



?>