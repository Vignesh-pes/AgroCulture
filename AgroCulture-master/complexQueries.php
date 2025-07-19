<?php
include('db.php');

// Nested Query Example: Display products below average stock
$nestedQuery = "SELECT * FROM products WHERE quantity < (SELECT AVG(quantity) FROM products)";
$result = mysqli_query($conn, $nestedQuery);

echo "<h3>Low Stock Products</h3><table><tr><th>Name</th><th>Quantity</th></tr>";
while($row = mysqli_fetch_assoc($result)){
    echo "<tr><td>{$row['name']}</td><td>{$row['quantity']}</td></tr>";
}

// Join Query Example: Display orders with customer names and product details
$joinQuery = "SELECT orders.id, users.username, products.name, orders.quantity FROM orders JOIN users ON orders.user_id = users.id JOIN products ON orders.product_id = products.id";
$result = mysqli_query($conn, $joinQuery);

echo "<h3>Order Details</h3><table><tr><th>Order ID</th><th>Customer</th><th>Product</th><th>Quantity</th></tr>";
while($row = mysqli_fetch_assoc($result)){
    echo "<tr><td>{$row['id']}</td><td>{$row['username']}</td><td>{$row['name']}</td><td>{$row['quantity']}</td></tr>";
}

// Aggregate Query Example: Show total sales per product
$aggregateQuery = "SELECT product_id, SUM(quantity) as total_sales FROM orders GROUP BY product_id";
$result = mysqli_query($conn, $aggregateQuery);

echo "<h3>Total Sales by Product</h3><table><tr><th>Product ID</th><th>Total Sales</th></tr>";
while($row = mysqli_fetch_assoc($result)){
    echo "<tr><td>{$row['product_id']}</td><td>{$row['total_sales']}</td></tr>";
}
?>
