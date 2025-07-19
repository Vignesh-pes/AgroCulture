<?php
include('db.php');

// SQL to create a trigger
$triggerQuery = "CREATE TRIGGER update_inventory AFTER INSERT ON orders FOR EACH ROW BEGIN UPDATE products SET quantity = quantity - NEW.quantity WHERE id = NEW.product_id; END";

if(mysqli_query($conn, $triggerQuery)){
    echo "<p>Inventory update trigger created successfully!</p>";
} else {
    echo "<p>Error creating trigger: " . mysqli_error($conn) . "</p>";
}
?>
