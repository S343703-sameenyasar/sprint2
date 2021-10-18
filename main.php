<?php 
include 'db.php';
$query = "SELECT * FROM questions";
$total_questions = mysqli_num_rows(mysqli_query($connection,$query));


?>
<html>
<head>
	<title>Test</title>
</head>
<body>

	<header>
		<div class="container">
			<p>Testing you</p>
		</div>
	</header>

	<main>
			<div class="container">
				<h2>JUST DO IT</h2>
				
				<ul>
					<li><strong>Number of Questions:</strong><?php echo $total_questions; ?> </li>
					<li><strong>Type:</strong> Multiple Choice</li>
					<li><strong>Estimated Time:</strong> <?php echo $total_questions*1.5; ?></li>

				</ul>

				<a href="question.php?n=1" class="start">Start Quiz</a>

			</div>

	</main>


</body>
</html>
