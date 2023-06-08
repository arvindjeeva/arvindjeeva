<?php
	include 'connection.php';
?>
<?php
session_start();
?>
<?php
	if(isset($_POST['submit']))
	{	
		$username=$_POST['username'];
		$password=$_POST['password'];
		$sql="SELECT * From login where username='".$username."' AND password='".$password."'";
		$run= mysqli_query($con,$sql);
		$row= mysqli_fetch_assoc($run);
		if($row)
		{
			$_SESSION['name']=$username;
			echo $_SESSION['name'];
			header('location:login_page.php');
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert(User Name Or Password InCorrect...!)';  
			echo '</script>';
		}
	}	
?>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>
<body>	
<img src="images/bgimagelogin.jpg" style="height:100%; width:100%;">
	<div class="container">
		<div class="row">
		<div class="col-md-7"></div>
		
		<div class="col-md-4" style="border-style:solid; border-color:white; margin-top:-550px;">
			<h3><b><center style="color:white">LOG IN</center></b></h3>
			<br>
			<center><img src="images/login.gif" class="img-thumbnail" style="width:200px;height:200px;"></center>
			<hr>
			
			<form name="" action="" method="post">
				<div class="form-group">
					<input type="text"  class="form-control" name="username">
				</div>
				<div class="form-group">
					<input type="password"  class="form-control" name="password">
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-success" name="submit" Value="submit" id="submit">
				</div>
			</form>
		</div>
		</div>
	</div>
</body>
</html>