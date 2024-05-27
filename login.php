<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ເຂົ້າສູ່ລະບົບ</title>
    <link rel="icon" href="image/logo.jpg">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link href='https://fonts.googleapis.com/css?family=Noto Sans Lao' rel='stylesheet'>
<style>
body {
    font-family: 'Noto Sans Lao';
}
</style>
</head>
<body class="hold-transition login-page">
<div class="login-box">

<?php
session_start();
include("./includes/db.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $phone = $_POST['phone'];
    $password = $_POST['password'];

    // Hash the provided password using MD5 for comparison
    // $hashedPassword = md5($password);

    $stmt = $conn->prepare("SELECT * FROM users WHERE phone = ? AND password = ? AND role = 4");
    $stmt->bind_param("ss", $phone, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $user = $result->fetch_assoc();
        $_SESSION['user_id'] = $user['id'];
        header("Location: index.php");
        
        exit();
    } else {
      echo ' 
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
      <script>
        // Check the condition for success
        var isSuccess = true; // Replace this with your actual condition
    
        // If the condition is met, show the success message
        if (isSuccess) {
          Swal.fire({
                title: "ເກີດຂໍ້ຜິດພາດ",
                text: "ອີເມວ ຫຼື ລະຫັດຜ່ານບໍ່ຖືກຕ້ອງ",
                icon: "warning",
                timer: 3000, // 2-3 seconds
            timerProgressBar: true,
            didOpen: () => {
              Swal.showLoading();
            }}
      )};
    </script>';
    echo "<audio id='myAudio'><source src='./sounds/1.ເກີດຂໍ້ຜິດພາດກະລຸນາລອງໃໝ.wav' type='audio/wav'>Your browser does not support the audio element.</audio>";
      echo "<script>var audio = document.getElementById('myAudio'); audio.play();</script>";
        
    }

    $stmt->close();
}
?>

  <div class="card">

    <div class="card-body">
    <p class="login-box-msg">
      <img src="image/logo.jpg" alt="Logo" style="border-radius: 100%; width:50%; height:50%;">  
      <h1 class="text-center text-primary"><b>ເຂົ້າສູ່ລະບົບ</b></h1></p>
      <form method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="phone" placeholder="ເບີໂທ" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="ລະຫັດຜ່ານ" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-key"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                ຍັງຈື່ລະຫັດບໍ?
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-sign-out-alt">Login</i></button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>
