<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$income = $_POST['income'];
$in_reason = $_POST['in_reason'];
$m_status = $_POST['m_status'];
$sql = "INSERT INTO pdaily (income, in_reason, m_status) 
                          VALUES ('$income','$in_reason','$m_status')";

if(mysqli_query($conn, $sql))
{
    header("Location: incomeform.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>