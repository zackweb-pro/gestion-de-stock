<?php

$sname= "sql309.infinityfree.com";

$unmae= "if0_36445207";

$password = "dHqeJXFIbj";

$db_name = "if0_36445207_gestion_qualite";

$conn = mysqli_connect($sname, $unmae, $password, $db_name);

if (!$conn) {

    echo "Connection failed!";

}