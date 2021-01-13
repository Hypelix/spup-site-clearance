<?php 
	//TITLE OF PAGE
	$title = "Student Violations";

	//INCLUDE head.php
	include 'includes/head.php';
?>

<body onload="notifyMe()" class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
	
	<?php include 'includes/nav.php' ?>
  
  <!-- end -->
	
  <div class="content-wrapper">
    <div class="container-fluid">
       <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="home">Home</a>
        </li>
        <li class="breadcrumb-item active">Student Violation(s)</li>
      </ol>

	  <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
        <i class="fa fa-table"></i> Student Violations </div>
        <div class="card-body">
				<?php
					$id = isset($_GET['id']) ? $_GET['id'] : '';
					$sql_student = mysqli_query($con, "SELECT * FROM `tbl_students` WHERE `salt` = '$id' ");
					$row = mysqli_fetch_array($sql_student, MYSQLI_BOTH);
					$ss = $row['id'];
					$student_id = $row['student_id'];
					$fullname = $row['lastname'].", ".$row['firstname']." ".$row['middlename'];
					$officer = $row['officer'];
					if ($officer == "Y") {
						echo "<h3 style='color:#28a745;'>".$student_id." - ".strtoupper($fullname)."</h3>";
					}
					else {
						echo "<h3>".$student_id." - ".strtoupper($fullname)."</h3>";
					}
				?>
				<hr/>
				
				<form  method="post" action="" role="form" enctype="multipart/form-data">
					<div class="row">
						<div class="col-lg-6">
						<?php 
							echo "<a href='add_violation?id=".$id."' title='add violation' class='btn btn-danger'><i class='fa fa-plus'></i> add violation </a>&nbsp";  
							//if($officer == "Y" || $officer == "y") {
								//echo "<a href='add_requirements?id=".$id."' title='edit' class='btn btn-success'><i class='fa fa-plus'></i> add requirements </a>&nbsp";
							//}
							echo "<a href='print_violation?id=".$id."' title='print violation' class='btn btn-success'><i class='fa fa-print'></i> print violation </a>"; 
							
							
						?>
						</div>
				</form>
					<hr/>
					<div class="col-lg-4">
								<div class="input-group">
									<!-- eto yung pang search -->
									<input class="form-control" id="system-search" name="q" placeholder="Search violation..." required>
									<span class="input-group-btn">
										<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
									</span>
								</div>
							</div>
				
				<div class="table-responsive" style="margin-top:10px;">
					<table  class="table table-list-search table-bordered table-condensed custab small">
						<thead>
							<tr>
								<th>Violation</th>
								<th>Date</th>
								<th>Signature</th>
								<th>Action Taken by the Dean/Assoc. <br/> Dean/Program Coordinator/OSA</th>
								<th>Compliance by the student</th>
								<th>Remarks</th>
							</tr>
						</thead>
						<tbody>
							<?php
								$sql="SELECT * FROM tbl_violation WHERE student_id = '$student_id' ORDER BY timestamp asc";
								$result = $con->query($sql);
								$S = 1;
								if ($result->num_rows > 0) {
								  // output data of each row
								  while($row = $result->fetch_assoc()) {
									$violation = $row['violation'];
									$remarks = $row['remarks'];
									$violation_id = $row['id'];
									$date = date("F d, Y", strtotime($row['date']));
									$B1 = $row['b1'];
									$B2 = $row['b2'];
									
									//GET EVENT
									// $sql_event = mysqli_query($con, "SELECT * FROM `tbl_event` WHERE `event_id` = '$event_id' ");
									// $event_row = mysqli_fetch_array($sql_event, MYSQLI_BOTH);
									// $event_name = $event_row['event_name'];
									// $start_date = date("M d, Y", strtotime($event_row['start_date']));
									// $end_date =  date("M d, Y", strtotime($event_row['end_date']));
									
									echo "<tr>
									  <td>".$violation."</td>
									  <td>".$date."</td>
									  <td> &nbsp </td>";
									  
										if ($B1 == 1) {
											echo "<td align='center'><a href='approved_b1null?id=".$id."&rid=".$violation_id."' class='btn btn-success btn-sm'><i class='fa fa-fw fa-check'></i></a></td>";
										}
										else {
											echo "<td align='center'><a href='approved_b1checked?id=".$id."&rid=".$violation_id."' class='btn btn-danger btn-sm'><i class='fa fa-fw fa-ban'></i></a></td>";
										}

										if ($B2 == 1) {
											echo "<td align='center'><a href='approved_b2null?id=".$id."&rid=".$violation_id."' class='btn btn-success btn-sm'><i class='fa fa-fw fa-check'></i></a></td>";
										}
										else {
											echo "<td align='center'><a href='approved_b2checked?id=".$id."&rid=".$violation_id."' class='btn btn-danger btn-sm'><i class='fa fa-fw fa-ban'></i></a></td>";
										}

										if ($remarks == "1") {
										echo " <td>1st warning</td>";
									}

									if ($remarks == "2") {
										echo " <td>2nd warning</td>";
									}

									if ($remarks == "3") {
										echo " <td>3rd warning</td>";
									}

										
									/// --------------- ///
								  }
								}
								else {
								  $S = 0;
								  echo "<div class='alert alert-info'><h3><b>NO SANCTION FOR THIS STUDENT!</b></h3></div>";
								}
								// Free result set
								mysqli_free_result($result);
							  ?>
						</tbody>
					</table>
				</div>

        </div>
        <div class="card-footer small text-muted">
			<?php 
				//CHECK IF NON-COMPLIANT
				//$sql= "SELECT COUNT (C1) AS C1 FROM tbl_sanctionlink WHERE student_id ='$ss'";
				$sql1 = " SELECT COUNT(*) c FROM tbl_violation WHERE `student_id` = '$student_id' AND B1 = 0";
				$result1 = mysqli_query($con,$sql1);
				$row1=mysqli_fetch_assoc($result1);
				 $c1 = $row1['c'];
				
				$sql2 = " SELECT COUNT(*) c FROM tbl_violation WHERE `student_id` = '$student_id' AND B2 = 0";
				$result2 = mysqli_query($con,$sql2);
				$row2 = mysqli_fetch_assoc($result2);
				 $c2 = $row2['c'];
				
				
			?>

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
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
  </div>
</body>

</html>
<script type="text/javascript">
	$(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');

    //something is entered in search form
    $('#system-search').keyup( function() {
       var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {
        
            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="9"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 1)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="9">No entries found.</td></tr>');
        }
    });

});
</script>

