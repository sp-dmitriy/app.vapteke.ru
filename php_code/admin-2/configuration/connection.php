<?php
    /* Database credentials. Assuming you are running MySQL server with default setting (user 'root' with no password) */
    define('DB_SERVER', getenv('DB_SERVER'));
    define('DB_USERNAME', getenv('DB_USERNAME'));
    define('DB_PASSWORD', getenv('DB_PASSWORD'));
    define('DB_NAME', getenv('DB_NAME_ADMIN_2'));
    /* Attempt to connect to MySQL database */
    $mysqli = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

    // Check connection
    if($mysqli->connect_error){
        header("Location: login.php?error=connect_error");
        // die("ERROR: Could not connect. " . $mysqli->connect_error);
    }
?>