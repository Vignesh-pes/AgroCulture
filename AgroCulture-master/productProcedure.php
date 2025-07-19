<?php
include('db.php');

// Call stored procedure to display available products
$procedureQuery = "CALL getAvailableProducts()";
$result = mysqli_query($conn, $procedureQuery);

echo "<h3>Available Products</h3><table><tr><th>Name</th><th>Price</th><th>Quantity</th></tr>";
while($row = mysqli_fetch_assoc($result)){
    echo "<tr><td>{$row['name']}</td><td>{$row['price']}</td><td>{$row['quantity']}</td></tr>";
}
echo "</table>";
?>
