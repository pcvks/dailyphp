<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$first_time = $_POST['first_time'];
$second_time = $_POST['second_time'];
$third_time = $_POST['third_time'];
$fourth_time = $_POST['fourth_time'];
$days = $_POST['days'];
$sql = "INSERT INTO school_table (first_time, second_time, third_time, fourth_time, days ) 
                          VALUES ('$first_time','$second_time','$third_time','$fourth_time','$days')";

if(mysqli_query($conn, $sql))
{
    header("Location: school_tableform.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>