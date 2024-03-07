<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<?php
include("./includes/db.php");
$five_six = $_POST['five_six'];
$six_seven = $_POST['six_seven'];
$seven_eight = $_POST['seven_eight'];
$eight_nine = $_POST['eight_nine'];
$nine_ten = $_POST['nine_ten'];
$ten_eleven = $_POST['ten_eleven'];
$eleven_twelve = $_POST['eleven_twelve'];
$twelve_thirteen = $_POST['twelve_thirteen'];
$thirteen_fourteen = $_POST['thirteen_fourteen'];
$fourteen_fifteen = $_POST['fourteen_fifteen'];
$fifteen_sixteen = $_POST['fifteen_sixteen'];
$sixteen_seventeen = $_POST['sixteen_seventeen'];
$seventeen_eighteen = $_POST['seventeen_eighteen'];
$eighteen_nineteen = $_POST['eighteen_nineteen'];
$nineteen_twenty = $_POST['nineteen_twenty'];
$twenty_twentyone = $_POST['twenty_twentyone'];
$twentyone_twentytwo = $_POST['twentyone_twentytwo'];
$twentytwo_twentythree = $_POST['twentytwo_twentythree'];
$twentythree_five = $_POST['twentythree_five'];
$days = $_POST['days'];
$sql = "INSERT INTO pdaily (five_six, six_seven, seven_eight, eight_nine, nine_ten,
                          ten_eleven, eleven_twelve, twelve_thirteen, thirteen_fourteen, fourteen_fifteen, fifteen_sixteen,
 sixteen_seventeen, seventeen_eighteen, eighteen_nineteen, nineteen_twenty, twenty_twentyone, twentyone_twentytwo, twentytwo_twentythree, twentythree_five, days ) 
                          VALUES ('$five_six','$six_seven','$seven_eight','$eight_nine','$nine_ten',
 '$ten_eleven','$eleven_twelve','$twelve_thirteen','$thirteen_fourteen','$fourteen_fifteen','$fifteen_sixteen','$sixteen_seventeen',
                          '$seventeen_eighteen','$eighteen_nineteen','$nineteen_twenty','$twenty_twentyone','$twentyone_twentytwo','$twentytwo_twentythree','$twentythree_five', '$days')";

if(mysqli_query($conn, $sql))
{
    header("Location: dailyform.php?success=true");
    exit(); 
}
else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    mysqli_close($conn);
}
?>