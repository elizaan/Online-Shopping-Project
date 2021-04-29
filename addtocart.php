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

error_reporting(0);
$prodname=NULL;
$ret = pg_query($con, $sql3);
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

error_reporting(0);
$ret = pg_query($con,$sq);
$prod_id2 =pg_fetch_row($ret);

$u_name = $_SESSION["user_name"];
$u_pass = $_SESSION["user_pass"];
if($prod_id2[0]!=null)
    $_SESSION["prod_id2"]= $prod_id2[0];
//echo $prod_id[0];

echo <<<HTML

<form action="added.php" method="post" align="center">



 How many?: <input type="integer" name="quantity" required><br>



            <button type="submit">ADD</button>
        </form>
HTML;

/*$q = $_POST["quantity"];
//echo $comnt;
$prod_id2=  $_SESSION["prod_id2"];
//echo $prod_id;
//echo $u_name;
$ret = pg_query($con,'SELECT public.'.'"Add_Cart"'."($prod_id2,'$u_name','$u_pass',$q)");
$final = pg_fetch_row($ret);

if($final!=null)
{
    echo"<h1>ADDED TO THE CART! </h1>";
}
else
{
    echo"<h1>THE PRODUCT IS OUT OF STOCK!</h1>";
}*/
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
