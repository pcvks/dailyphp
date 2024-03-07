<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$price = $_POST['price'];
$m_pay = $_POST['m_pay'];
$sql = "INSERT INTO products (price, m_pay) 
                          VALUES ('$price','$m_pay')";

if(mysqli_query($conn, $sql))
{
    header("Location: productsform.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>