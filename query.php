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



$sql1 = <<<LINE
SELECT "Name"
FROM PUBLIC."PRODUCT"
WHERE "In_Stock"=false;
LINE;

$ans=array();


$ret1=pg_query($con,$sql1);
echo "they are out of stock :<br>";
while($row1=pg_fetch_row($ret1)){
    echo $row1[0];
    echo '<br>';
    //array_push($ans,$row[0]);
}
echo '<br>';
$sql2 = <<<LINE
SELECT A."Admin_Name",g."Category"
FROM public."ADMIN" A, public."GROUP" g
WHERE A."Group_Id" = g."Group_Id";

LINE;

$ret2 =pg_query($con,$sql2);
echo "cATEGORY/groups UNDER ADMIN :<br>";
while($row2=pg_fetch_row($ret2)){
    echo $row2[0];
    echo"-";
    echo $row2[1];

    echo '<br>';
    //array_push($ans,$row[0]);
}
echo '<br>';

$sql3=<<<LINE
SELECT "Product_Id",p."Category"
FROM public."PRODUCT" p, public."GROUP" g
WHERE p."Category" = g."Category";

LINE;
$ret3 = pg_query($con,$sql3);
echo "Which product is under which group  :<br>";
while($row3=pg_fetch_row($ret3)){
    echo $row3[0];
    echo"-";
    echo $row3[1];

    echo '<br>';
    //array_push($ans,$row[0]);
}

echo '<br>';

$sql4 =<<<LINE
SELECT "Name"
FROM public."PRODUCT"
WHERE "Category" IN (SELECT "Category" 
FROM public."PRODUCT"
GROUP BY "Category" HAVING "Category" IS NOT NULL)

LINE;

$ret4 = pg_query($con,$sql4);
echo "All products in the shop :<br>";
while($row4=pg_fetch_row($ret4)){
    echo $row4[0];
    echo '<br>';
    //array_push($ans,$row[0]);
}

echo '<br>';

$sql5= <<<LINE
SELECT A."Admin_Name", (
	SELECT P."Name" 
	FROM public."PRODUCT" P 
	WHERE P."Product_Id" = R."Product_Id"), R."Comment"
FROM public."REVIEW" R join public."ADMIN" A on (R."Group_Id" = A."Group_Id")
ORDER BY A."Admin_Name" 

LINE;


$ret5 = pg_query($con,$sql5);
echo "Which Admin gets Review  :<br>";
while($row5=pg_fetch_row($ret5)){
    echo $row5[0];
    echo"-";
    echo $row5[1];
    echo"-";
    echo $row5[2];

    echo '<br>';
    //array_push($ans,$row[0]);
}

echo '<br>';

$sql6 =<<<LINE
SELECT C."Name", M."Message"
FROM public."MESSAGE" M join public."CUSTOMER" C 
on (M."Customer_Id" = C."Customer_Id")
WHERE (M."Customer_Id") in
(
	SELECT O."Customer_Id"
	FROM public."ORDER" O
	WHERE O."Customer_Id" = M."Customer_Id"
)

LINE;
$ret6 = pg_query($con,$sql6);
echo "WhICH Customers BUYS products and gives messages :<br>";
while($row6=pg_fetch_row($ret6)){
    echo $row6[0];
    echo"-";
    echo $row6[1];


    echo '<br>';
    //array_push($ans,$row[0]);
}

echo '<br>';




$sql8=<<<LINE
INSERT INTO public."Consists_Of" SELECT distinct C."Customer_Id", G."Group_Id" FROM public."CUSTOMER" C, public."ORDER" O, public."OrderProducts" op, public."PRODUCT" P, public."GROUP" G WHERE C."Customer_Id" = O."Customer_Id" and O."Order_Id" = op."Order_Id" and op."Product_Id" = P."Product_Id" and P."Category" = G."Category";

LINE;
$RET = pg_query($con,$sql8);
echo "WhICH Customers In which group added by this :<br>";
$res8 = pg_fetch_row($RET);
echo $res8[0];


$sql7 =<<<LINE
 SELECT DISTINCT (SELECT C."Name"
	    FROM public."CUSTOMER" C
	    WHERE C."Customer_Id" = B."Customer_Id"), 
		(SELECT G."Category"
		FROM public."GROUP" G
		WHERE G."Group_Id" = B."Group_Id")
FROM public."CUSTOMER" C, public."GROUP" G, public."Consists_Of" B;


LINE;

$ret7 = pg_query($con,$sql7);
echo "WhICH Customers is in which groupname :<br>";
while($row7=pg_fetch_row($ret7)){
    echo $row7[0];
    echo"-";
    echo $row7[1];


    echo '<br>';
    //array_push($ans,$row[0]);
}




pg_close($con);

?>



</body>
</html>
