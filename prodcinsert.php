<!DOCTYPE html>
<head>
    <title>Insert data to PostgreSQL with php - creating a simple web application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        li {listt-style: none;}
    </style>
</head>

<body>

<?php
//session_start();
$host = "localhost";
$user = "postgres";
$pass = "postgresucks";
$db   = "online_shopping";
$con  = pg_connect("host=$host dbname=$db user=$user password =$pass");


$x=$_POST["prodname2"];
$y=$_POST["price"];
$z = $_POST["dat1"];
$a = $_POST["dat2"];
$b = $_POST["quant2"];
$c = $_POST["cat2"];
//$_SESSION["user_name"] = $_POST["name"];
//$_SESSION["user_pass"] = $_POST["password"];


pg_query($con,'SELECT public.'.'"NEW_PROD_INS"'."('$x',$y,'$z','$a',$b,'$c')");






echo "<h2>YOU HAVE SUCCESSFULLY ADDED THE NEW PRODUCT!</h2>";

pg_close($con);
?>
</body>
</html>
