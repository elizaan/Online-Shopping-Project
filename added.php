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


$prod_id2 = $_SESSION["prod_id2"];
$u_name = $_SESSION["user_name"];
$u_pass = $_SESSION["user_pass"];
$q = $_POST["quantity"];


$ret = pg_query($con,'SELECT public.'.'"Add_Cart"'."($prod_id2,'$u_name','$u_pass',$q)");
$final = pg_fetch_row($ret);

if($final[0]!=null)
{
    echo"<h1>ADDED TO THE CART! </h1>";
    echo"<h1>$final[0] is the total price! </h1>";
    echo "<a href= payment.php>Click Here to Place the ORDER!</a>";
}
else
{
    echo"<h1>THE PRODUCT IS OUT OF STOCK!</h1>";
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
