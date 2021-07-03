<!DOCTYPE html>
<html lang="en">
	<head>


	 	<title>Relasi Data Orders dengan Shippers</title>
	 </head>


	<body style="width: 70%; margin: auto; padding-top: 50px;">
		<h3>Menampilkan Relasi Data Orders dengan Shippers</h3>
		<table class="table table-striped text-center">
			<tr>
				<th>Order ID</th>
				<th>Customer</th>
				<th>Shippers</th>
			</tr>
			<?php foreach($OrderID as $row): ?>
			<tr>
				<td><?=$row['OrderID'];?></td>
				<td><?=$row['CustomerID'];?></td>
				<td><?=$row['CustomerID'];?></td>
			</tr>
				<?php endforeach;?>
		</table>
	</body>
</html>