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

$sql2 = <<<LINE
       SELECT *
FROM public."PRODUCT"
ORDER BY "Name" ASC;

LINE;

$sql3 = <<<LINE
       SELECT "Name"
FROM public."PRODUCT"
WHERE "Category" = 'Stationary';


LINE;




$prodname=NULL;
$ret = pg_query($con, $sql3);
error_reporting(0);
while($res= pg_fetch_row($ret)){
    echo <<<HTML

<form action="#" method="post" align="center"><div align ="center">
<br>



            <button style="..." type ="submit" name ='productname' value ='$res[0]'>$res[0]</button>
            <br>
            </div>
        </form>
HTML;

    if(isset($_POST["productname"]))
    {
        $prodname = $_POST["productname"];
    }
}
$sq =<<<LINE
SELECT "Product_Id"
FROM public."PRODUCT" 
WHERE "Name" like '$prodname';
LINE;


$ret = pg_query($con,$sq);
$prod_id=pg_fetch_row($ret);

$u_name = $_SESSION["user_name"];
$u_pass = $_SESSION["user_pass"];
if($prod_id[0]!=null)
$_SESSION["prod_id"]= $prod_id[0];
//echo $prod_id[0];
error_reporting(0);

echo <<<HTML

<form action="#" method="post" align="center">



 Your Review: <input type="text" name="review" required><br>



            <button type="submit">SUBMIT</button>
        </form>
HTML;

$comnt = $_POST["review"];
//echo $comnt;
$prod_id=  $_SESSION["prod_id"];
//echo $prod_id;
//echo $u_name;
$ret = pg_query($con,'SELECT public.'.'"REVIEW_FUNC"'."(32, $prod_id,'$comnt','$u_name','$u_pass')");
error_reporting(0);
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
