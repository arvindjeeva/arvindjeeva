<?php
include'header.php';
?>
<html>
<head>
<style>
body
{
	background-image:url('images/pexels-fwstudio-129731.jpg');
}
</style>
</head>
<body>
<div class="container" style="margin-top:70px;">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-4">
			<form action="index1.php">
			<input type="hidden" name="bike" value="b">
				
			</form>
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-4">
			<form action="index2.php">
				
			</form>
		</div>
		<div class="col-md-1"></div>
		
				<div class="col-md-4">
			<form action="index3.php">
			<input type="hidden" name="car" value="b">
				<button name="car" class="btn btn-info"><p style="font-size:25px;">Car Booking For Click Here</p><br><img src="images/innova.jpg" style="width:450px; height:350px;"></img></button>
			</form>
		</div>
		
</div>
</div>
</body>
</html>