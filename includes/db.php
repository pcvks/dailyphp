<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "porchouadaily";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if(!$conn){
    
    die("ການເຊື່ອມຕໍ່ກັບຖານຂໍ້ແມ່ນລົ້ມແຫລວ: ". mysqli_connect_error());
}

?>