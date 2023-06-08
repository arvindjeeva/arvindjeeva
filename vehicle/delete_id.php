<?php
	include('connection.php');
	$select="delete from carreg where id='".$_GET['del_id']."'";
	if ($con->query($select)===TRUE)
	{
		header('location:carupload.php');
	}
	ELSE
	{
		ECHO"NOT OK".$con->error;
	}
?>