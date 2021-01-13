<?php 
	//INCLUDE head.php
	include 'includes/head.php';
?>

<body>
	<?php
		//GET EVENT DATA FROM TABLE
		$id = isset($_GET['id']) ? $_GET['id'] : '';
		$rowid=isset($_GET['rid']) ? $_GET['rid'] : '';
		$sql1 = mysqli_query($con, "SELECT * FROM `tbl_students` WHERE `salt` = '$id' ");
		$row1 = mysqli_fetch_array($sql1, MYSQLI_BOTH);
		$studid = $row1['student_id'];
		

		//UPDATE EVENT DATA
		$sql_update = "UPDATE tbl_violation SET b1=1 WHERE student_id='$studid' AND id='$rowid'";						
										
		$log_name = "Update violation";
		$sql_insert_log = ("INSERT INTO tbl_logs (log_name, username, fullname, date, time) 
							VALUES ('$log_name','$uname','$user_flname', '$current_date', '$current_time')");
								
		if (mysqli_query($con, $sql_update) && mysqli_query($con, $sql_insert_log) ) {
				//header('Location: home?id=".$id."');
				echo "<script>setTimeout(\"location.href = 'show_violation?id=".$id."';\",1);</script>";
				exit;
		} else {
			echo "Error: " . $sql_update . "<br>" . mysqli_error($con);
		}

	?>
</body>
</html>