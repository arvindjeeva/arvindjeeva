
<html>
<head>
<Style>
body
{
	background-image:url('images/bg4.jpg');
}
</style>
</head>
<body style="background-color:green;">
<div class="container" style="Margin-top:70px;">
<div class="row">
<div class="col-md-6">
<?php
	include'connection.php';
	include'header.php';
	$select="SELECT * FROM carreg where id='".$_GET['del_id']."'";
	$result=mysqli_query($con,$select);
	echo"<table class='table'>";
	while($row=mysqli_fetch_array($result))
	{
		echo"<br><tr style='border-style:double; background-color:white;'><td ><center><img style='width:300px; height:300px; 'src='".$row['image']."'><br><b>Name:</b>".$row['tname']."<br><b>Price:</b>".$row['adp']."</center></td></tr>";
	}
	echo "</table>";
	if(isset($_POST['submit']))
	{
		$psd=$_POST['psd'];
		$number=$_POST['number'];
		$sql="SELECT * FROM user where number='".$number."' AND pas1='".$psd."'";
		$res=mysqli_query($con,$sql);
		if($res)
		{
			$sqlc="SELECT * FROM user where number='".$number."' AND pas1='".$psd."'";
			$resc=mysqli_query($con,$sqlc);
		while($r=mysqli_fetch_array($resc))
		{
			
			
			{
			$tname=$row['tname'];
			$amt=$dateDiff*$row['adp'];
			$sql="INSERT INTO bookingg( name,number,qty,carid,amt,date,ads) VALUES('".$name."','".$number."','".$dateDiff."','".$tname."','".$amt."','".$start_date."','".$ads."')";
echo $sql;			
			$result=mysqli_query($con,$sql);
			if($result)
			{
				header('location:info.php');
			}
			else
			{
				echo "Not";
			}
		}
	}
	}
}
?>
</div>
<div class="col-md-2"></div>

<div class="col-md-4" style='background-color:white; margin-top:25px;'>

<h3><center><b>Product Details</b><center></h3>

<form action="" method="post" enctype="multipart/form-data">
<div class="form-group">
<label for="">Product Name</label>
<input type="text" class="form-control" name="d1" placeholder="Enter name" required>
</div>
<div class="form-group">
<label for="">Desicption</label>
<input type="text" class="form-control" name="d2" placeholder="Enter desicption" required>
</div>
<div class="form-group">
<label for="">Price</label>
<input type="number" class="form-control" name="number" placeholder="Enter Your Contact Number" required>
</div>
 

<div class="form-group">
<div class="form-group">
<label for=""></label>
<input type="submit" class="form-control btn btn-success" name="submit" value="Booking">
</div>

</form>
 
</div>
</div>
</div>

</body>
</html>