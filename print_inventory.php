<?php 
	//TITLE OF PAGE
	$title = "Print Sanction List";

	//INCLUDE head.php
	include 'includes/head.php';
?>

<body onload="window.print()">
	
    <div class="container-fluid">
		<hr/>
		<h3>REPORT OF SANCTIONS</h3>
		
		<hr/>
			<table border="1" class="small" style="font-size:75%;">
				<thead>
					<tr>
						<th>Item Name</th>
						<th>Quantity</th>
					</tr>
				</thead>
				<tbody>
					<?php
	
							//GET SANCTION
							$sql_sanction = mysqli_query($con, "SELECT * FROM `tbl_sanction` ");
							$sanction_row = mysqli_fetch_array($sql_sanction, MYSQLI_BOTH);
							$item_name = $sanction_row['item_name']; 
							$quantity = $sanction_row['quantity'];
							
					  ?>

					  <tr>
							<td><?= $item_name ?></td>
							<td><?= $quantity ?></td>

							</tr>
				</tbody>
			</table>
			<hr/>
    </div>
</body>

</html>

