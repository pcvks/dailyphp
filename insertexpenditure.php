<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$expenditure = $_POST['expenditure'];
$ex_reason = $_POST['ex_reason'];
$m_status = $_POST['m_status'];
$sql = "INSERT INTO pdaily (expenditure, ex_reason, m_status) 
                          VALUES ('$expenditure','$ex_reason', '$m_status')";

if(mysqli_query($conn, $sql))
{
    header("Location: expenditureform.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>