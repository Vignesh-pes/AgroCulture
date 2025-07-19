<?php
session_start();
require 'db.php';

if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] == 0) {
    $_SESSION['message'] = "You need to first login to access this page!";
    header("Location: Login/error.php");
    exit();
}

$bid = $_SESSION['id'];

// Add to cart with a default quantity of 1 or update if exists
if (isset($_GET['flag']) && $_GET['flag'] == 1) {
    $pid = $_GET['pid'];
    $sql = "INSERT INTO mycart (bid, pid, quantity) VALUES ('$bid', '$pid', 1)
            ON DUPLICATE KEY UPDATE quantity = quantity + 1";
    mysqli_query($conn, $sql);
}

// Update quantity in cart
if (isset($_POST['update_quantity'])) {
    $pid = $_POST['pid'];
    $quantity = $_POST['quantity'];
    $sql = "UPDATE mycart SET quantity = '$quantity' WHERE bid = '$bid' AND pid = '$pid'";
    mysqli_query($conn, $sql);
}

// Delete from cart
if (isset($_GET['delete'])) {
    $pid = $_GET['delete'];
    $sql = "DELETE FROM mycart WHERE bid = '$bid' AND pid = '$pid'";
    mysqli_query($conn, $sql);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
		<meta charset="UTF-8">
		<title>AgroCulture</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="bootstrap\css\bootstrap.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="bootstrap\js\bootstrap.min.js"></script>
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="login.css"/>
		<link rel="stylesheet" type="text/css" href="indexFooter.css">
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<?php require 'menu.php'; ?>
<body>

    <!-- Main Section -->
    <section id="one" class="wrapper style1 align-center" style="height: 600px">
        <div class="container">
            <h2>My Cart</h2>
            <br /><br />

            <div class="row 200%">
                <?php
                    $sql = "SELECT * FROM mycart WHERE bid = '$bid'";
                    $result = mysqli_query($conn, $sql);
                    $totalPrice = 0;

                    while ($row = $result->fetch_array()):
                        $pid = $row['pid'];
                        $quantity = $row['quantity'];
                        $sql = "SELECT * FROM fproduct WHERE pid = '$pid'";
                        $result1 = mysqli_query($conn, $sql);
                        $row1 = $result1->fetch_array();
                        $picDestination = "images/productImages/" . $row1['pimage'];
                        $subtotal = $row1['price'] * $quantity;
                        $totalPrice += $subtotal;
                ?>
                    <section class="4u 12u$(small)">
                        <a href="review.php?pid=<?php echo $row1['pid']; ?>">
                            <img class="image fit" src="<?php echo $picDestination; ?>" alt="" style="width: 200px; height: 200px;" />
                        </a>
                        <h3><?php echo $row1['product']; ?></h3>
                        <p>Type: <?php echo $row1['pcat']; ?></p>
                        <p>Price: <?php echo $row1['price']; ?> /-</p>
                        <p>Subtotal: <?php echo $subtotal; ?> /-</p>
                        
                        <form method="POST" action="">
                            <input type="hidden" name="pid" value="<?php echo $pid; ?>">
                            Quantity: <input type="number" name="quantity" value="<?php echo $quantity; ?>" min="1">
                            <button type="submit" name="update_quantity" class="btn btn-primary btn-sm">Update</button>
                        </form>
                        <a href="mycart.php?delete=<?php echo $pid; ?>" class="btn btn-danger btn-sm">Delete</a>
                    </section>
                <?php endwhile; ?>
            </div>
            
            <br>
            <h3>Total Price: <?php echo $totalPrice; ?> /-</h3>
            <a href="buyNow.php" class="btn btn-primary">Buy Now</a>
        </div>
    </section>
</body>
</html>
