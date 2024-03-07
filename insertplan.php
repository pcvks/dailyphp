<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$plan_name = $_POST['plan_name'];
$percent = $_POST['percent'];
$sql = "INSERT INTO plan (plan_name, percent) 
                          VALUES ('$plan_name','$percent')";

if(mysqli_query($conn, $sql))
{
    header("Location: plan.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>