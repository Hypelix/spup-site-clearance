<?php 
	//TITLE OF PAGE
$title = "Add Violation";

	//INCLUDE head.php
include 'includes/head.php';
?>
<style>
	.error {
		color:#c30000;
		font-size:70%;
		font-weight:bold;
	}
	.cb {
		display:none;
	}
</style>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	
	<?php include 'includes/nav.php' ?>
	
	<!-- end -->
	
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<?php 
					if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    					$id = isset($_POST['wew']) ? $_POST['wew'] : '';
					}
					if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    					$id = isset($_GET['id']) ? $_GET['id'] : '';
					}

					$sql_student = mysqli_query($con, "SELECT * FROM `tbl_students` WHERE `salt` = '$id' ");

					$row = mysqli_fetch_array($sql_student, MYSQLI_BOTH);

					$for_officer = $row['officer'];
					$ss = $row['student_id'];
					
					echo "<a href='violations'>Violation</a>";
					?>
				</li>
				<li class="breadcrumb-item active">Add Violation</li>
			</ol>
			<div class="row">
				<div class="col-md-9">
					<div class="card-header">Add Violation(s)</div>
					<div class="card-body">
						<?php
				//GET STUDENT DATA
						$sql_event = mysqli_query($con, "SELECT * FROM `tbl_students` WHERE `salt` = '$id' ");
						$row = mysqli_fetch_array($sql_event, MYSQLI_BOTH);
						$student_id = $row['student_id'];
						$firstname = $row['firstname'];
						$middlename = $row['middlename'];
						$lastname = $row['lastname'];
						$fullname = strtoupper($lastname.", ".$firstname." ".$middlename);
						$course = $row['course'];
						$year = $row['year'];
						$section = $row['section'];
				//start of insert
				// define variables and set to empty values
						
						$item_name = $quantity = "";
						if(($_SERVER["REQUEST_METHOD"] == "POST") && (isset($_POST['save']) == "Send")){
							
							$viol = $_POST["viol"];
							$existviol=0;$successmsg=0;
							foreach($viol as &$value)
							{
								$zz = test_input($_POST["studid"]);

								$sanction_date = date($_POST["sanction_date"]);
								
								$date = date("Y-m-d");
								$time = date("h:i:sa");
								$salt = sha1($date.$time);
								$remarks = $_POST["remarks"];

								
							//CHECK IF STUDENT SANCTION EXIST
								$sql_event= "SELECT * FROM tbl_violation WHERE violation ='$value' AND date = '$sanction_date' AND student_id='$student_id'";
								$result1 = mysqli_query($con, $sql_event);
								$count = mysqli_num_rows($result1);

								if ($count >= 1){
									$existviol=1;
								}
								else {
								// INSERT DATA
									$sql_insert = ("INSERT INTO tbl_violation (violation, student_id, date, salt, remarks) 
										VALUES ('$value', '$zz', STR_TO_DATE('$sanction_date', '%Y-%m-%d'), '$salt', '$remarks')");

									$log_name = "Insert Violation ".$zz;
									$sql_insert_log = ("INSERT INTO tbl_logs (log_name, username, fullname, date, time) 
										VALUES ('$log_name','$uname','$user_flname', '$current_date', '$current_time')");

									if (mysqli_query($con, $sql_insert) && mysqli_query($con, $sql_insert_log) ) {
										$successmsg=1;
										} else {
											echo "Error: " . $sql_insert . "<br>" . mysqli_error($con);
										}
								}
							}
							if ($existviol==1) {
								echo "<div class='alert alert-danger'>Sorry, Violation already exists.</div>";
								}
							if ($successmsg==1) {
								echo "<script> alert('Successfully added!');"; 
								echo "windows.location.href = 'violations';</script>";
								$item_name = $quantity = "";
								}							
						}
				//end of insert

						?>
						<form name="frmUploadFile" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" role="form" enctype="multipart/form-data" onsubmit="return checkForm(this);" autocomplete="off">
							<input type="hidden" name="wew" value="<?php echo $id;?>">
							<input type="hidden" name="studid" value="<?php echo $ss;?>">
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">
										<label for="event_id">Student ID No. </label>
										<input class="form-control" type="text" value="<?php echo $student_id ;?>" readonly>
									</div>
									<div class="col-md-6">
										<label for="sanction_date">Date of Violation</label>
										<input class="form-control" type="date" name="sanction_date" required>
									</div>
								</div>
							</div>	
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">
										<label for="event_id">Student Name </label>
										<input class="form-control" type="text" value="<?php echo $fullname ;?>" readonly>
									</div>
									<div class="col-md-6">
										<label for="event_id">Student Name </label>
										<input class="form-control" type="text" value="<?php echo $course." - ".$year;?>" readonly>
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">
										<label for="sanction_id">Select Sanction</label>
										<div class="radio">
											<label>
												<input type="checkbox" name="viol[]" value="A"> A. Haircut/punky hair (Male) <br/>
												<input type="checkbox" name="viol[]" value="B"> B. Coloured Hair (Male/Female) <br/>
												<input type="checkbox" name="viol[]" value="C"> C. Unprescribed Undergarment (Male/Female) <br/>
												<input type="checkbox" name="viol[]" value="D"> D. Unprescribed Shoes (Male/Female) <br/>
												<input type="checkbox" name="viol[]" value="E"> E. Long/Short Skirt (Female) <br/>
												<input type="checkbox" name="viol[]" value="F"> F. Being noisy along corridors <br/>
												<input type="checkbox" name="viol[]" value="G"> G. Not wearing of ID Properly  <br/>
												<input type="checkbox" name="viol[]" value="H"> H. Earring/Tounge Ring <br/>
												<input type="checkbox" name="viol[]" value="I"> I. Wearing of Cap inside the Campus <br/>
											</label>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">
										<label for="remarks">Remarks</label>
										<select class="form-control" name="remarks">
											<option value="1">1st warning</option>
											<option value="2">2nd warning</option>
											<option value="3">3rd warning</option>
										</select>
									</div>
								</div>
							</div>
							
							<input type="submit" class="btn btn-primary btn-block"  name="save" value="Save">  
						</form>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="card-header">Guide</div>
					<div class="card-body">
						<ol class="small alert alert-info">
							
							
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->
		<!-- FOOTER -->
		
		<?php include 'includes/footer.php'; ?>
		
		<!--END OF FOOTER -->
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top">
			<i class="fa fa-angle-up"></i>
		</a>
		<!-- Logout Modal-->
		<?php include 'includes/logout_btn.php'; ?>
		
		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin.min.js"></script>
		<script src="js/form.js"></script>
	</div>
</body>

</html>