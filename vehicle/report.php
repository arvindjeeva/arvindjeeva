<html>

<head>
<Style>
body
{
	background-image:url('images/bg5.jpg');
}
</style>
</head>
<body>
<div class="container" style="margin-top:50px; color:white">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-4">
<h3><center><b>Vehicle Report</b></center></h3>
<form method="post" action="" >
<div class="form-group">
<label for=""></label>
<input type="text" class="form-control" name="sdate" placeholder="Enter Starting date (YYYY-MM-DD)">
</div>
<div class="form-group">
<label for=""></label>
<input type="text" class="form-control" name="edate" placeholder="Enter Ending date (YYYY-MM-DD)">
</div>
<div class="form-group">
<input type="submit" class="form-control" name="submit" value="submit">
</div>
</form>
</div>
<div class="col-md-4">
<h3><center><b>Customer Report</b></center></h3>
<form method="post" action="" >
<div class="form-group">
<label for=""></label>
<input type="Number" class="form-control" name="cno" placeholder="Enter Customer Number">
</div>
<div class="form-group">
<input type="submit" class="form-control" name="confirm" value="submit">
</div>
</form>
</div>
<div class="col-md-2"></div>
</div>
<div class="row">
<?php
include 'header.php';
include 'connection.php';
if(isset($_POST['submit']))
{
$tot=0;$ct=0;
$sdate=$_POST['sdate'];
$edate=$_POST['edate'];
$sql ="SELECT * FROM bookingg WHERE date >= '".$_POST['sdate']."' AND date <= '".$_POST['edate']."'";
$res=mysqli_query($con,$sql);
echo"<table class='table' style='color:white'><tr><th>Name</th><th>Number</th><th>CarName</th><th>Total Amount</th></tr>";
while($row=mysqli_fetch_array($res))
{
echo"<tr><td>".$row['name']."</td>";
echo"<td>".$row['number']."</td>";
echo"<td>".$row['carid']."</td>";
echo"<td>".$row['amt']."</td></tr>";
$tot+=$row['amt'];
$ct+=1;

}
echo"</table>";
echo "Total Amount :";
echo $tot;
echo "<br>Total Number Of Transport :";
echo $ct;
}
?>
<?php
if(isset($_POST['confirm']))
{
$tot=0;$ct=0;
$number=$_POST['cno'];
$sql ="SELECT * FROM bookingg WHERE number='".$number."'";
$res=mysqli_query($con,$sql);
echo"<table class='table' style='color:white'><tr><th>Name</th><th>Number</th><th>CarName</th><th>Total Amount</th></tr>";
while($row=mysqli_fetch_array($res))
{echo"<tr><td>".$row['name']."</td>";
echo"<td>".$row['number']."</td>";
echo"<td>".$row['carid']."</td>";
echo"<td>".$row['amt']."</td></tr>";
$ct+=1;
$tot+=$row['amt'];
}
echo"</table>";
echo "Total Amount:";
echo $tot;
echo "<br>Total Number Of Transport :";
echo $ct;
}
?>
</div>
</div>
</body>
</html>
