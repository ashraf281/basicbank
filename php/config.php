<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "user";

	$conn = mysqli_connect($servername, $username, $password, $dbname);

	if(!$conn){
		dir("Could not connect to the database due to the following error --> ".mysqli_connect_error());
	}

?>