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
$host = "localhost";
$user = "postgres";
$pass = "postgresucks";
$db   = "online_shopping";
$con  = pg_connect("host=$host dbname=$db user=$user password =$pass");


$x=$_POST["name1"];
$y=$_POST["address"];
$z=$_POST["email"];
$w=$_POST["phone"];
$v=$_POST["password1"];

$n=array("'$x'");
$p=array("'$y'");
/*$sql=<<<LINE
	SELECT SIGN_UP($x,$y,$w,$z,$v);

LINE;*/
$ret = pg_query($con,'SELECT public.'.'"SIGN_UP"'."('$x','$y',$w,'$z','$v')");

$res=pg_fetch_row($ret);


if($res[0]!=0){


    echo "<a href= log_in.php>Click Here to back to log in page</a>";
} else{

    $ar=array('"','log',"_",'in',".",'php','"');
    $l1=join($ar);
    $ali="center";
    echo "Username or password already exists! please try with another.";
    echo "<br>";
    echo "<a href= log_in.php>Click Here to back to log in page</a>";
}

pg_close($con);
?>





</body>
</html>
