<?php 
session_start();
if(isset($_SESSION['u']))
{
    


include_once('include/dbconnect.php');
function show(){
    global $con;
    $query="SELECT * FROM `pasent`;";
    $run=mysqli_query($con,$query); 
    if($run==TRUE){
    ?><table border="1" align="center" id="tabl">
    <tr><td><i>Id</i></td><td><i>Name</i></td><td><i>Gender</i></td><td><i>Birthday</i></td><td><i>Address</i></td><td><i>Disisses</i></td><td><i>Admi_date</i></td><td><i>Time</i></td><td><i>Fee</i></td></tr>
    <?php
    while($data=mysqli_fetch_assoc($run)){
        ?>
    <tr>
    <td><?php echo $data['id'];?></td><td><?php echo $data['name'];?></td><td><?php echo $data['gender'];?></td><td><?php echo $data['birthdate'];?></td><td><?php echo $data['address'];?></td><td><?php echo $data['disisses'];?></td><td><?php echo $data['adate'];?></td><td><?php echo $data['time'];?></td><td><?php echo $data['fee'];?></td></tr>
<?php
    }
    ?></table><?php
}

else{

    echo "err";
}
}
?>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
<div id="main"><div id="baner1"><br>
    <i><h3> <b><a href="logout.php"><span>Logout</span></a></b></h3></i>
<marquee><h1><i>This is hospital managemant system</i></h1></marquee>
</div>
    <div id="t2">
<?php show(); ?></div>
    </div>
</body>
</html>
<?php
}
else{
header('location:admin.php');
}?>