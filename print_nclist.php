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
								<th>SECTION</th>
								<th>VIOLATION</th>
								<th>ACTION TAKEN BY THE DEAN/ASSOC. </br> DEAN/ PROGRAM COORDINATOR/OSA</th>
								<th>COMPLIANCE BY THE STUDENT</th>
								<th>REMARKS</th>
								<th>DATE</th>
							</thead>
							<tbody>
							 <?php
                                   $sql="SELECT * FROM tbl_violation tv JOIN tbl_students ts ON tv.student_id=ts.student_id WHERE b2='0' ORDER BY date desc";
                                    $student = mysqli_query($con,$sql);
                                    foreach ($student as $key => $row) {
                                        $fullname = $row['lastname'].", ".$row['firstname']." ".$row['middlename'];
                                        $student_id = $row['student_id'];
                                        $course = $row['course'];
                                        $year = $row['year'];
                                        $section = $row['section'];
                                        ?>
                                        <tr> 
                                            <td><?=$student_id ?></td>
                                            <td><?=$fullname ?></td>
                                            <td><?=$course ?></td>
                                            <td><?=$year ?></td>
                                            <td><?=$section ?></td>

										<?php
                                            echo '<td>';

                                                switch ($row['violation']) {
                                                    case 'A':
                                                    echo "A. Haircut/punky hair ";
                                                    break;
                                                    case 'B':
                                                    echo "B. Coloured Hair ";
                                                    break;
                                                    case 'C':
                                                    echo "C. Unprescribed Undergarment ";
                                                    break;
                                                    case 'D':
                                                    echo "D. Unprescribed Shoes ";
                                                    break;
                                                    case 'E':
                                                    echo "E. Long/Short Skirt ";
                                                    break;
                                                    case 'F':
                                                    echo "F. Being noisy along corridors";
                                                    break;
                                                    case 'G':
                                                    echo "G. Not wearing of ID Properly";
                                                    break;
                                                    case 'H':
                                                    echo "H. Earring/Tounge Ring";
                                                    break;
                                                    case 'I':
                                                    echo "I. Wearing of Cap inside the Campus";
                                                    break;
                                                }
                                            echo '</td>';

                                            echo '<td >';

                                                switch ($row['b1']) {
                                                    case '0':
                                                    echo "NO";
                                                    break;
                                                    case '1':
                                                    echo "CHECKED";
                                                    break;
                                                }
                                            echo '</td>';

                                            echo '<td >';

                                                switch ($row['b2']) {
                                                    case '0':
                                                    echo "NO";
                                                    break;
                                                    case '1':
                                                    echo "COMPLIED";
                                                    break;
                                                }
                                            echo '</td>';
										
										echo '<td >';

                                                switch ($row['remarks']) {
                                                    case '1':
                                                    echo "1st warning";
                                                    break;
                                                    case '2':
                                                    echo "2nd warning";
                                                    break;
                                                    case '3':
                                                    echo "3rd warning";
                                                    break;
                                                }
                                            echo '</td>';
                        // date column
                                            echo '<td >';

                                                $date = $row['date'];
                                                echo $date;
                                            echo '</td>';
                                            echo '</tr>';

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
