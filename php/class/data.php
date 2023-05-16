<?php

$dsn = 'mysql:host=mysql;port=3306;dbname=ktz';
$username = 'root';
$password = '1974';

try {
    $conn = new PDO($dsn, $username, $password);
    // Continue with database operations...
} catch (PDOException $e) {
    echo 'Connection Failed: ' . $e->getMessage();
}

?>