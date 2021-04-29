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


$x=$_POST["message"];
$u_name = $_SESSION["user_name"];
$u_pass = $_SESSION["user_pass"];


$ret = pg_query($con,'SELECT public.'.'"Message_Asce"'."('$u_name','$u_pass',32,'$x')");
$res = pg_fetch_row($ret);


pg_close($con);

?>

<button onclick="goBack()">Go Back</button>

<script>
    function goBack() {
        window.history.back();
    }
</script>


</body>
</html>
