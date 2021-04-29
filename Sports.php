<?php


function product_type()
{
    $host = "localhost";
    $user = "postgres";
    $pass = "postgresucks";
    $db = "online_shopping";
    $con = pg_connect("host=$host dbname=$db user=$user password =$pass");
    echo "connected";

    $sql2 = <<<LINE
       SELECT *
FROM public."PRODUCT"
ORDER BY "Name" ASC;

LINE;

    $sql = <<<LINE
   SELECT distinct split_part("Name", '#', 1)
   FROM public."PRODUCT"
   WHERE "Category" = 'Sports';
   
LINE;






    $sql3 = <<<LINE
       SELECT "Name"
FROM public."PRODUCT"
WHERE "Category" = 'Sports';


LINE;


    $ans = array();
    $ans2 = array();
    $ans3 = array();
    $ret = pg_query($con, $sql);
    $ret2 = pg_query($con,$sql2);
    $ret3 = pg_query($con,$sql3);
    while ($row = pg_fetch_row($ret) and $row2=pg_fetch_row($ret2) and $row3=pg_fetch_row($ret3))
    {

        array_push($ans, $row[0]);
        array_push($ans2,$row2[0]);
        array_push($ans3,$row3[0]);
    }
    $arrlength = count($ans);

    for ($x = 0; $x < $arrlength; $x++) {
        $aa = $ans[$x];
        $arr = array('"', $aa,'.','php','"');
        //$l = join($arr);
        $axr = array('"', '_', 'blank', '"');
        $b = join($axr);
        // $abc = array('"',$x,'"');
        $page = join($arr);
        // echo $page;
        $ali = "center";
        //echo "<h1 align=$ali ><a href =$page target=$b>$ans[$x]</a><h1>";
        echo "<h1 align=left ><ul style=\"list-style-type:inline;\">
  <li>$ans[$x]</li></ul> ";
        echo "<h1>$ans3[$x]</h1>";


        echo"<input type=\"button\" id=\"buttonId\" onclick=\"alert('PLEASE LOG IN FIRST!')\" value=\"Add to Cart\"/>";




        echo "<br>";

    }
    pg_close($con);
}



function addcart($x)


{

    $host = "localhost";
    $user = "postgres";
    $pass = "postgresucks";
    $db = "online_shopping";
    $con = pg_connect("host=$host dbname=$db user=$user password =$pass");
    echo "connected";
    echo "enter the quantity";




    $sql4 = <<<LINE
    SELECT Add_Cart($x,Eli,456,3);
LINE;

    $ret = pg_query($con,$sql4);

    $res=pg_fetch_row($ret);
    if(res==null)
    {
        echo"Item is not available";
    }
    else
    {
        echo"you have added it to the cart";
    }

}
?>


<!DOCTYPE html>
<head>
    <title>Insert data to PostgreSQL with php - creating a simple web application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        ul#menu li {
            display:inline;
        }



    </style>

    <script type="text/javascript">
        function onoff () {


            if (document.getElementById)
                document.getElementById("buttonId").style.visibility = "hidden";


        }
    </script>


</head>

<body>

<p>
    <a href="javascript:onoff()">.</a>


    <a href="log_in.php" target="_blank">log in OR sign up</a>

<h1 align=right></h1> <a  href = "message.php" target ="_blank">MESSAGE</a>

<h1 align=right></h1> <a  href = "review.php" target ="_blank">REVIEW</a>

<h1 align=right></h1> <a  href = "addtocart.php" target ="_blank">CART</a>


</p>
<?php
product_type();
?>

<h2></h2>

</body>
</html>
