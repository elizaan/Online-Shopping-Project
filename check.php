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


$x=$_POST["name"];
$y=$_POST["password"];
$_SESSION["user_name"] = $_POST["name"];
$_SESSION["user_pass"] = $_POST["password"];

echo $x;
echo $y;

echo "hi1";
$ret = pg_query($con,'SELECT public.'.'"LOG_IN"'."('$x','$y')");
echo $ret;
$res=pg_fetch_row($ret);


if($res[0]==1){
    session_start();

    $ali="center";
    header("location: Stationary.php");
} else{

    $ar=array('"','log',"_",'in',".",'php','"');
    $l1=join($ar);
    $ali="center";
    echo "Wrong Password";
    echo "<br>";
    echo "<a href= $l1>Click Here to back to log in page</a>";
}
pg_close($con);
?>
</body>
</html>
