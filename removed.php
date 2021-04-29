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


$x=$_POST["pid"];




$ret = pg_query($con,'SELECT public.'.'"PROD_REMOVEbyADMIN"'."($x)");
$res = pg_fetch_row($ret);
echo $res[0];
if($res[0]=='t')
{
    echo "<h1>YOU HAVE REMOVED IT SUCCESSFULLY!</h1>";
}
else
{
    echo "<h1> THIS PRODUCT ID DOES NOT EXISTS!</h1>";
}
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
