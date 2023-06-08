<?php
include'connection.php';
include'header.php';
if(isset($_POST['submit']))
{
$filename=$_FILES['productimage']['name'];
$tempname=$_FILES['productimage']['tmp_name'];
$folder="images/".$filename;
move_uploaded_file($tempname,$folder);

$adp=$_POST['adp'];
$type=$_POST['type'];
$tname=$_POST['tname'];
$sql="INSERT INTO carreg( image,adp,type,tname)VALUES('".$folder."','".$adp."','".$type."','".$tname."')";
$result=mysqli_query($con,$sql);
if($result)
{
	echo ("<script LANGUAGE='JavaScript'>
    window.alert('Succesfully Updated');
    window.location.href='carupload.php';
    </script>");
}
else
{
	echo "Not";
}
}
?>
<html>
<head>
<Style>
body
{
	background-image:url('images/bg2.jpg');
}
</style>
<
<body>
<div class="container" style="margin-top:70px">
<div class="row">
<h3><center><b style="color:white;">Ecommerce site</b></center></h3>
<div class="col-md-1"></div>
<div class="col-md-5" style="background-color:white;">
<form class="" name="" action="" method="post" enctype="multipart/form-data">
<div class="form-group">
<br>
<input name="type" class="form-control">

</input>
</div>
<div class="form-group">
<label for="">home product</label>
<input type="file" class="form-control" name="productimage" required>
</div>
<div class="form-group">
<label for="">Name</label>
<input type="text" class="form-control" name="tname" required>
</div>
<div class="form-group">
<label for="">price</label>
<input type="number" class="form-control" name="adp" required>
</div>
<div class="form-group">
<label for=""></label>
<input type="submit" class="form-control btn btn-success" name="submit" value="Submit" required>
</div>
</form>
</div>
<div class="col-md-1"></div>
<div class="col-md-5" style="background-color:white;">
<?php
$col=0;
$sql="SELECT * FROM carreg";
$result=mysqli_query($con,$sql);
echo"<table class='table'>
<tr><th>Image</th>
<th>Type</th>
<th>Name</th>
<th>REMOVE</th>
</tr>"; 
while($row=mysqli_fetch_array($result))
{
	echo"<tr><td><img style='width:50px; height:50px; 'src='".$row['image']."'></td>";
	echo"<td>".$row['type']."</td>";
	echo"<td>".$row['tname']."</td>";
	
	echo"<td><button type='button' class='btn btn-Danger' id='".$row['id']."' onClick='delete1(this.id)'>X</button></td>";
	echo"</tr>";

}
echo "</table>";
?>
<script>
			function delete1(clicked_id)
			{
				window.location.href='delete_id.php?del_id='+clicked_id+'';
				return true;
			}
		</script>
</div>
</div>
</div>
</body>
</html>