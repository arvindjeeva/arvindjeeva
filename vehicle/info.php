<?php
include'connection.php';
?>
<html>
<head>
 <meta http-equiv="refresh" content="0;URL=index.php" />
</head>
<body>
<div class="container" style="margin-top:20%;">
<div class="row">
<?php
$sql="SELECT *FROM bookingg ORDER BY id DESC LIMIT 1";
			$res=mysqli_query($con,$sql);
			while($row=mysqli_fetch_array($res))
			{
				echo"<script language='javascript'>";
				echo"alert('Thank you Mr/Ms/Mrs.".$row['name']."Your Billing Price".$row['amt']."We Will Contact You Soon.....!')";
				echo"</script>";
			}
			
?>
</div>
</div>
</body>
</html>