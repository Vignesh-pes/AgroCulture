<?php
include('db.php');

// Create operation (Insert product)
if(isset($_POST['add_product'])){
    $name = $_POST['name'];
    $price = $_POST['price'];
    $quantity = $_POST['quantity'];

    $query = "INSERT INTO products (name, price, quantity) VALUES ('$name', '$price', '$quantity')";
    mysqli_query($conn, $query);
}

// Read operation (Display all products)
$query = "SELECT * FROM products";
$result = mysqli_query($conn, $query);
echo "<h3>Product List</h3><table><tr><th>Name</th><th>Price</th><th>Quantity</th><th>Actions</th></tr>";
while($row = mysqli_fetch_assoc($result)){
    echo "<tr><td>{$row['name']}</td><td>{$row['price']}</td><td>{$row['quantity']}</td>";
    echo "<td><a href='productCRUD.php?edit={$row['id']}'>Edit</a> | <a href='productCRUD.php?delete={$row['id']}'>Delete</a></td></tr>";
}
echo "</table>";
?>
