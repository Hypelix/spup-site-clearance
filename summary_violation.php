<?php 
    //TITLE OF PAGE
$title = "Violation";

    //INCLUDE head.php
include 'includes/head.php';
?>


<body class="fixed-nav sticky-footer bg-dark" id="page-top"> 
    <!-- Navigation-->
    
    <?php include 'includes/nav.php' ?>

    <!-- end -->
    
    <div class="content-wrapper ">
        <div class="container-fluid">
            <!-- FORM UPDATE SEM -->
            <!-- Example DataTables Card-->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fa fa-users"></i> Student Violation Summary <span><a href="print_slist" class="btn btn-success btn-sm pull-right"><i class="fa fa-print"></i> print summary </a></span></div>
                    <div class="card-body">
                        <div class="table-responsive" style="margin-top:10px;">
                            <table class="table table-list-search table-bordered table-condensed custab small diplay" id="tblvio">
                                <thead>
                                    <tr>
                                        <th class="select-filter">Student ID</th>
                                        <th class="select-filter">Student Name</th>
                                        <th>Course</th>
                                        <th>Year</th>
                                        <th>Section</th>
                                        <th >Violation</th>
                                        <th>Action taken by the Dean/Assoc. </br> Dean/ Program Coordinator/OSA</th>
                                        <th>Compliance by the Student</th>
                                        <th>Remarks</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $sql="SELECT * FROM tbl_violation tv JOIN tbl_students ts ON tv.student_id=ts.student_id";
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
                        // remarks column
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
                    </div>
                </div>
            </div>
        </div>


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

    </div>


    <script>
        $(document).ready(function () {
            'use strict';

            var oTable,
            oTable2;


            function myCustomFilterFunction(filterVal, columnVal) {
                var found;
                if (columnVal === '') {
                    return true;

                }

                switch (filterVal) {
                    case 'A':
                    found = columnVal.search(/Haircut/g);
                    break;
                    case 'B':
                    found = columnVal.search(/Coloured/g);
                    break;
                    case 'C':
                    found = columnVal.search(/Undergarment/g);
                    break;
                    case 'D':
                    found = columnVal.search(/Shoes/g);
                    break;
                    case 'E':
                    found = columnVal.search(/Skirt/g);
                    break;
                    case 'F':
                    found = columnVal.search(/noisy/g);
                    break;
                    case 'G':
                    found = columnVal.search(/ID/g);
                    break;
                    case 'H':
                    found = columnVal.search(/Tounge/g);
                    break;
                    case 'I':
                    found = columnVal.search(/Cap/g);
                    break;
                    default:
                    found = 1;
                    break;
                }

                if (found !== -1) {
                    return true;
                }
                return false;
            }

            oTable = $('#tblvio').DataTable({
            "targets": 'no-sort',
            "bSort": false
                
            });

            //----------------------------------------------
                        //notice the new yadcf API for init the filters:
                        //----------------------------------------------
                        
                        yadcf.init(oTable, [{
                            column_number: 0,
                            filter_default_label: "Select ID"
                        },{
                            column_number: 5,
                            filter_type: 'custom_func',
                            custom_func: myCustomFilterFunction,
                            data: [{
                                value: 'A',
                                label: 'A. Haircut\/punky hair'
                            }, {
                                value: 'B',
                                label: 'B. Coloured Hair'
                            }, {
                                value: 'C',
                                label: 'C. Unprescribed Undergarment'
                            }, {
                                value: 'D',
                                label: 'D. Unprescribed Shoes'
                            }, {
                                value: 'E',
                                label: 'E. Long\/Short Skirt'
                            }, {
                                value: 'F',
                                label: 'F. Being noisy along corridors'
                            }, {
                                value: 'G',
                                label: 'G. Not wearing of ID Properly'
                            }, {
                                value: 'H',
                                label: 'H. Earring\/Tounge Ring'
                            }, {
                            }, {
                                value: 'I',
                                label: 'I. Wearing of Cap inside the Campus'
                            }],
                            filter_default_label: "Select Violation"
                        },{
                            column_number: 1,
                            filter_default_label: "Select Name"
                        },{
                            column_number: 9,
                            filter_type: 'date',
                            datepicker_type: 'bootstrap-datepicker', 
                            date_format: 'yyyy-mm-dd'
                        }]);

                    });

                </script>


<!-- <script>
    $(function() {
        $('input[name="date"]').daterangepicker({
            singleDatePicker: true,

        });
    });

</script> -->




</body>

</html>


