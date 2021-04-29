<html>
<body bgcolor="#DFDBDA">
<p>

<h1 align="center" color="green">Log In OR Sign Up</h1>
<h1 align="center">

    <h1 align="center">
        <form action="check.php" method="post">
            User Name: <input type="text" name="name"><br>
            Password : <input type="password" name="password" id="myInput"><br>
            <input type="checkbox" onclick="myFunction()">Show Password


            <button type="submit">Submit</button>
        </form>

        <form action="check2.php" method="post">
            Name         : <input type="text" name="name1"><br>
            Address         : <input type="text" name="address"><br>
            Email        : <input type="text" name="email"><br>
            Phone Number     : <input type="integer" name="phone"><br>
            Password     : <input type="text" name="password1">

    <h1 align="center">
        <button type="submit">Submit</button>
        </form></h1>
    </h1>
<script>
    function myFunction() {
        var x = document.getElementById("myInput");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>

    </p>
</body>
</html>