<?php
    include 'db.php';
?>

<?php 
    $query = "SELECT * from questions";
    $result = mysqli_query($query,$connection);

    $questions = mysqli_fetch_assoc($result);
    echo($questions);
?>