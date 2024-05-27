<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$content = $_POST['content'];
$modules = $_POST['modules'];
$sql = "INSERT INTO notes (content, modules) VALUES ('$content','$modules')";

if(mysqli_query($conn, $sql))
{
    header("Location: noteform.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>