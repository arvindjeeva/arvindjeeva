<html>
<head>
<Style>
body
{
	background-image:url('images/bg1.jpg');
}
</style>
</head>
<body>
<div class="container" style="margin-top:70px;">
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">
<?php
include'connection.php';
include'header.php';

$col=0;
$sql="SELECT * FROM carreg WHERE type='bike'";
$result=mysqli_query($con,$sql);
echo"<table class='table' style='background-color:white; opacity:0.9; ' ><tr>";
while($row=mysqli_fetch_array($result))
{
	echo"<td style='border-style:double;'><center><img style='width:180px; height:150px; 'src='".$row['image']."'><br>Name :".$row['tname']."<br>Amouunt Per Day :".$row['adp']."<br><button type='button' class='btn btn-Success' id='".$row['id']."' onClick='delete1(this.id)'>Click Here</button></center></td>";
	$col+=1;
	if($col%5==0)
	{
		echo"</tr>";
	}

}
echo "</table>";

?>

<script>
			function delete1(clicked_id)
			{
				window.location.href='booking.php?del_id='+clicked_id+'';
				return true;
			}
		</script>
</div>
<div class="col-md-1"></div>
</div>
</div>
</body>
</html>