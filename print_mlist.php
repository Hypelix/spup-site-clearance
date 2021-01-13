<?php 
	//TITLE OF PAGE
	$title = "Print Masterlist";

	//INCLUDE head.php
	include 'includes/head.php';
?>

<body onload="window.print()">
	<br/>
    <div class="container-fluid" style="border:1px solid #d1d1d1; padding:10px;">
		
		
						<center><img src='img/spuplogo.png' width='40px;'><h5>St. Paul University Philippines<br/><small>Tuguegarao City, Cagayan 3500</small></h5></center>
				<div class='row text-center'>
					<div class='col-lg-12'>
			
						<table class='table small' style='font-size:70%;'>
							<thead>
								<th>STUDENT ID</th>
								<th>NAME</th>
								<th>COURSE</th>
								<th>YEAR</th>
								<th>GENDER</th>
							</thead>
							<tbody>
							<?php
			$sql_student = mysqli_query($con, "SELECT * FROM tbl_students ORDER BY year asc, course desc, gender desc, lastname asc");
			foreach ($sql_student as $key => $row) {
				$ss = $row['id'];
			$student_id = $row['student_id'];
			$course = $row['course'];
			$year = $row['year'];
			$gender = $row['gender'];
			$fullname = $row['lastname'].", ".$row['firstname']." ".$row['middlename'];
							
								?>
									<tr> 
									<td><?= $student_id ?></td>
										   <td><?=$fullname ?></td>
										   <td><?=$course ?></td>
										   <td><?=$year ?></td>
										   <td><?=$gender ?></td>
									</tr>
									<?php
		}
		?>
							</tbody>
						</table>
					
					</div>
				</div>
				<hr/>
		
    </div>
	<br/><br/>
</body>

</html>
