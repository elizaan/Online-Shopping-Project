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
session_start();
$host = "localhost";
$user = "postgres";
$pass = "postgresucks";
$db   = "online_shopping";
$con  = pg_connect("host=$host dbname=$db user=$user password =$pass");


$OID = <<<LINE
SELECT MAX("Order_Id")
from public."OrderProducts";
LINE;

$ret =pg_query($con,$OID);
$oid = pg_fetch_row($ret);
$u_name = $_SESSION["user_name"];
$u_pass = $_SESSION["user_pass"];


pg_query($con,'SELECT public.'.'"PAYMENT_UPDATE"'."($oid[0],'$u_name','$u_pass')");






echo "<h2>YOU HAVE SUCCESSFULLY ORDERED THE PRODUCT!</h2>";
session_destroy();
pg_close($con);
?>
</body>
</html>
