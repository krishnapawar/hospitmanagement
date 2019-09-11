<?php 
session_start();
if(isset($_SESSION['u']))
{
    header('location:show.php');
}
?>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
<div id="main"><div id="baner"><br>
<a href="index.php">Home</a>
<marquee><h1><i>This is hospital mannagemant system</i></h1></marquee>
</div>
<div id="t1">
<form method="post" >
<br>
<h1  align="center"><i>This is login page of admin</i></h1>
<br><br><br>
<table align="center">
<tr><td><i>User_name :-</i></td><td><input type="text" required placeholder="Enter your user name" name="uname"></td></tr>
<tr><td><i>Password :-</i></td><td><input type="password" required placeholder="Enter your password" name="pss"></td></tr>
<tr ><td colspan="2" align="center"><input type="submit" name="sub" value="Login"></td></tr>
</table></form></div>
<div id="futer">
<h2 align="center"> &copy <i>krishna_pawar</i> :-2017</h2>
</div></div>
</body>
</html>
<?php
include_once('include/dbconnect.php');
if(isset($_POST["sub"])){
    $uname=$_POST['uname'];
    $pwd=$_POST['pss'];
    $query="SELECT * FROM `admin` WHERE `uname`='$uname' AND `password`='$pwd';";
    $run=mysqli_query($con,$query);
    $row=mysqli_num_rows($run);
    if($row>0)
    {
        $data=mysqli_fetch_assoc($run);
        $id=$data['id'];

$_SESSION["u"]=$id;
header('location:show.php');
    }
    else
    {
     ?>
<script>alert('username or pasword not mache');
window.open('admin.php','self');</script>
<?php
}
}

?>