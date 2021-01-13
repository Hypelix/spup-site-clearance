<?php 
//session_start();
$title = "Home";
include 'includes/head.php';
$user_type = $_SESSION['user_type'];
if ($user_type == "2" || $user_type == "4" || $user_type == "5"){
	header('location:home');
} 
?>

<body onload="notifyMe()" class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
	
	<?php include 'includes/nav.php' ?>
  
  <!-- end -->
	
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->

	  <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> User(s)
        </div>
        <div class="card-body">
				<form action="#" method="get">
					<div class="row">
						<div class="col-lg-8">
						</div>
						<div class="col-lg-4">
							<div class="input-group">
								<!-- eto yung pang search -->
								<input class="form-control" id="system-search" name="q" placeholder="Search student..." required>
								<span class="input-group-btn">
									<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</div>
					</div>
				</form>
				<div class="table-responsive" style="margin-top:10px;">
					<table  class="table table-list-search table-bordered table-condensed custab small">
						<thead>
							<tr>
								<th>#</th>
								<th>Username</th>
								<th>Full Name</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Gender</th>
								<th>User Type</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
								//DELETE
								if(isset ($_GET['del'])) {
									$salt = $_GET['del'];
									$archive = "0";
									mysqli_query($con, "UPDATE tblusers SET archive='$archive'  WHERE salt='$salt'");
									echo "<script>setTimeout(\"location.href = 'home';\",100);</script>";
								}
								
								$sql="SELECT * FROM tblusers WHERE archive = '1' ORDER BY username asc";
								$result = $con->query($sql);
								if ($result->num_rows > 0) {
								  // output data of each row
									$x = 1;
								  while($row = $result->fetch_assoc()) {
									$fullname = $row['lastname'].", ".$row['firstname'];
									$fullname = strtoupper($fullname);
									$user_type = $row['user_type'];

									echo  "
									  <td>".$x++."</td>
									  <td>".$row['username']."</td>
									  <td>".$fullname."</td>
									  <td>".$row['email']."</td>
									  <td>".$row['contactno']."</td>
									  <td>".$row['gender']."</td>";
									  if ($user_type == "1") {
										echo " <td>Secretary/Admin</td>";
									}
									if ($user_type == "2") {
										echo " <td>Student Governor</td>";
									}
									if ($user_type == "3") {
										echo " <td>Dean/Admin</td>";
									}
									if ($user_type == "4") {
										echo " <td>Faculty</td>";
									}
									if ($user_type == "5") {
										echo " <td>DSA</td>";
									}
									echo "<td>";
											?>
												<a onclick="return confirm('Are you sure you want to retrieve this user?')" href="archive_user?del=<?php echo $row['salt']; ?>" class="btn btn-primary btn-sm"><i class='fa fa-fw fa-undo'></i></a>
											<?php
									echo "</td></tr>";	
									  
								  }
								}
								else {
								  echo "<div class='alert alert-warning'>No data available!</div>";
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
				//LAST UPDATE OF THE TABLE
				$sqla = "SELECT * FROM tblusers ORDER BY user_id DESC LIMIT 1";
				$result = mysqli_query($con, $sqla);
				$row = mysqli_fetch_assoc($result);
				echo "Last update was " . date("F d, Y", strtotime($row['timestamp']));
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

