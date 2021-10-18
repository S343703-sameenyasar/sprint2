<?php include 'db.php'; ?>
<?php session_start(); ?>

<?php 
	
	$number = $_GET['n'];

	
	$query = "SELECT * FROM questions WHERE question_number = $number";

	
	$result = mysqli_query($connection,$query);
	$question = mysqli_fetch_assoc($result); 

	
	$query = "SELECT * FROM options WHERE question_number = $number";
	$choices = mysqli_query($connection,$query);
	
	$query = "SELECT * FROM questions";
	$total_questions = mysqli_num_rows(mysqli_query($connection,$query));
 	
	
?>
<html>
<head>
	<title>Testing you</title>
	
</head>
<body>

	

	<main>
			<div class="container">
				<div class="current">Question <?php echo $number; ?> of <?php echo $total_questions; ?> </div>
				<p class="question"><?php echo $question['question_description']; ?> </p>
				<form method="POST" action="process.php">
					<ul class="choices">
						<?php while($row=mysqli_fetch_assoc($choices)){ ?>
						<li><input type="radio" name="choice" value="<?php echo $row['id']; ?>"><?php echo $row['question_option']; ?></li>
						<?php } ?>
						
						
					</ul>
					<input type="hidden" name="number" value="<?php echo $number; ?>">
					<input type="submit" name="submit" value="Submit">


				</form>
				

			</div>

	</main>










</body>
</html>