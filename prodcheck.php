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


$x=$_POST["prodname"];
$y=$_POST["category"];
$z = $_POST["quant"];
//$_SESSION["user_name"] = $_POST["name"];
//$_SESSION["user_pass"] = $_POST["password"];


$ret = pg_query($con,'SELECT public.'.'"PROD_CHANGE"'."('$x','$y',$z)");

$res=pg_fetch_row($ret);
echo $res[0];


if($res[0]=="t"){

    echo "<h2>YOU HAVE SUCCESSFULLY ADDED THE NEW PRODUCT!</h2>";
} else{

    $ar=array('"','prodins',"_",'in',".",'php','"');
    $l1=join($ar);
    $ali="center";

    echo "<a href= $l1>Click Here to Insert A new Product!</a>";
}
pg_close($con);
?>
</body>
</html>
