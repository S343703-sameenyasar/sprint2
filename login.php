<?include 'db.php'?>

<html>

<body>
    <form method = "POST" action = "formvalidation.php">

        <p>Username</p>
        <input type = "text" name = "username">
        <p>Password</p>
        <input type = "password" name = "password">
        <input type = "submit" name = "submit" value = "Login">
    </form>

    <form method = "GET" action = "registration.php">
        <button>Don't have an account?</button>
    </form>

</body>

</html>
