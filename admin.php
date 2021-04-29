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


$x=$_POST["anam"];
$y=$_POST["apass"];
$z = $_POST["gid"];

$ret = pg_query($con,'SELECT public.'.'"ADMIN_LOGIN"'."($y,'$x',$z)");

$res=pg_fetch_row($ret);

if($res[0]!=0)
{

    $ar3=array('"','admin',"_",'change',".",'php','"');
    $l3=join($ar3);
    $ali="center";
    $ar2 = array('"','admin',"_",'remove',".",'php','"');
    $l2 = join($ar2);

    echo "<a href= $l3>ADD NEW PRODUCTS</a><br>";
    echo "<a href= $l2>REMOVE PRODUCTS</a>";


} else{

    $ar=array('"','Admin',"_",'login',".",'php','"');
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
