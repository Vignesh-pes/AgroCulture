<?php
include('db.php'); // Ensure this connects to your database

if(isset($_POST['create_user'])){
    $username = $_POST['username'];
    $password = md5($_POST['password']); // Use hashing for passwords
    $role = $_POST['role']; // Role selected from form dropdown

    $insertUserQuery = "INSERT INTO users (username, password, role) VALUES ('$username', '$password', '$role')";

    if(mysqli_query($conn, $insertUserQuery)){
        echo "<p>User successfully created with $role privileges!</p>";
    } else {
        echo "<p>Error: " . mysqli_error($conn) . "</p>";
    }
}
?>
<form method="POST">
    Username: <input type="text" name="username" required><br>
    Password: <input type="password" name="password" required><br>
    Role: 
    <select name="role">
        <option value="admin">Admin</option>
        <option value="farmer">Farmer</option>
        <option value="buyer">Buyer</option>
    </select><br>
    <input type="submit" name="create_user" value="Create User">
</form>
