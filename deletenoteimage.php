<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");

$id = $_GET['id'];

$sql = "UPDATE notes SET  is_delete=1 WHERE id=$id";
$result = mysqli_query($conn, $sql);

if($result){
    
    header("Location: noteimage.php");
}else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>