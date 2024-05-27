<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$content = $_POST['content'];
$date = $_POST['date'];
$sql = "INSERT INTO necessary (content, date) VALUES ('$content','$date')";

if(mysqli_query($conn, $sql))
{
    header("Location: necessary.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>