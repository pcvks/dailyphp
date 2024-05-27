<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in

include("./includes/db.php");

$id = $_GET['id'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ແຜນໃນແຕ່ລະວັນລະຫັດທີ່: <?php echo $id;?></title>
    <link rel="icon" href="image/logo.jpg">
      <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">

  <link href='https://fonts.googleapis.com/css?family=Noto Sans Lao' rel='stylesheet'>
<style>
body {
    font-family: 'Noto Sans Lao';
}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
<?php
include("./includes/navbar.php");
include("./includes/sidebar.php");


$sql = "SELECT * FROM pdaily WHERE id = $id";
$result = mysqli_query($conn, $sql);
if (isset($_GET['success']) && $_GET['success'] === 'true') {
  echo ' 
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  <script>
    // Check the condition for success
    var isSuccess = true; // Replace this with your actual condition

    // If the condition is met, show the success message
    if (isSuccess) {
      Swal.fire({
            title: "ບັນທຶກສຳເລັດ",
            text: "ຂໍ້ມູນໄດ້ຖືກບັນທຶກສຳເລັດແລ້ວ",
            icon: "success",
            timer: 2000, // 2-3 seconds
        timerProgressBar: true,
        didOpen: () => {
          Swal.showLoading();
        }}
  )};
</script>';
} elseif (isset($_GET['success']) && $_GET['success'] === 'false') {
  echo '<script>alert("Error inserting data.");</script>';
}
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <h4 class="mt-2 text-center text-bold">ສາທາລະນະລັດ ປະຊາທິປະໄຕ ປະຊາຊົນລາວ</h4>
    <h4 class="mt-2 text-center text-bold">ສັນຕິພາບ ເອກະລາດ ປະຊາທິປະໄຕ ເອກະພາບ ວັດທະນາຖາວອນ</h4><br>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-2">
                    <h1 class="text-center text-primary"><b>Daily</b></h1><br><br>
                    <!-- <img src="image/logo.jpg" alt="Logo" class="w-50 h-100 rounded-circle">   -->
                </div>
                <div class="col-md-5"></div>
            </div>
            <div class="row">

                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <h5 class="text-bold">ຊື່ຜູ້ດູແລ: ປໍ້ຈົວວ່າງ</h5>
                </div>
                <div class="col-md-4">
                    <h2 class="text-center text-success text-bold">ໃບບິນແຜນທີ່ສຳເລັດແລ້ວ</h2>
                </div>
                <div class="col-md-3">
                  <h6 class="text-bold" id="datetime"></h6>
                </div>

            </div><br>
        <div class="row">
          <div class="col-md-2"></div>
          <div class="col-md-8" style="overflow: auto;">
          <?php 
                include('./includes/db.php');
                if (isset($_GET['query'])) {
                  $query = $_GET['query'];
                  // Write the SQL query to search for data
                  $sql = "SELECT * FROM pdaily WHERE is_delete=0";
                  $result = mysqli_query($conn, $sql);
          
                  if (mysqli_num_rows($result) > 0) {
                      // Display the search results
                      while ($row = mysqli_fetch_assoc($result)) {

                          echo "<tr>"."<td>".$row['id'] ."</td>"."<td>".$row['timestamp'] ."</td>"."</tr>";
                      }
                  } else {
                      echo "<b><h3 class='text-red text-center'>ຂໍອະໄພຂໍ້ມູນທີ່ທ່ານຕ້ອງການຍັງບໍ່ມີໃນລະບົບຂອງພວກເຮົາ</h3></b>";
                  }
              }
                while ($row = mysqli_fetch_assoc($result)) { ?>
                <div class="row">
                    <p class="text-bold mr-5">05:00-06:00 <br><?php echo $row['five_six']?></p>
                    <p class="text-bold mr-5">06:00-07:00 <br><?php echo $row['six_seven']?></p>
                    <p class="text-bold mr-5">07:00-08:00 <br><?php echo $row['seven_eight']?></p>
                    <p class="text-bold mr-5">08:00-09:00 <br><?php echo $row['eight_nine']?></p>
                    <p class="text-bold mr-5">09:00-10:00 <br><?php echo $row['nine_ten']?></p>
                    <p class="text-bold mr-5">10:00-11:00 <br><?php echo $row['ten_eleven']?></p>
                    <p class="text-bold mr-5">11:00-12:00 <br><?php echo $row['eleven_twelve']?></p>
                    <p class="text-bold mr-5">12:00-13:00 <br><?php echo $row['twelve_thirteen']?></p>
                    <p class="text-bold mr-5">13:00-14:00 <br><?php echo $row['thirteen_fourteen']?></p>
                    <p class="text-bold mr-5">14:00-15:00 <br><?php echo $row['fourteen_fifteen']?></p>
                    <p class="text-bold mr-5">15:00-16:00 <br><?php echo $row['fifteen_sixteen']?></p>
                    <p class="text-bold mr-5">16:00-17:00 <br><?php echo $row['sixteen_seventeen']?></p>
                    <p class="text-bold mr-5">17:00-18:00 <br><?php echo $row['seventeen_eighteen']?></p>
                    <p class="text-bold mr-5">18:00-19:00 <br><?php echo $row['eighteen_nineteen']?></p>
                    <p class="text-bold mr-5">19:00-20:00 <br><?php echo $row['nineteen_twenty']?></p>
                    <p class="text-bold mr-5">20:00-21:00 <br><?php echo $row['twenty_twentyone']?></p>
                    <p class="text-bold mr-5">21:00-22:00 <br><?php echo $row['twentyone_twentytwo']?></p>
                    <p class="text-bold mr-5">22:00-23:00 <br><?php echo $row['twentytwo_twentythree']?></p>
                    <p class="text-bold mr-5">23:00-05:00 <br><?php echo $row['twentythree_five']?></p>

                </div>
                <?php }?>
          </div>
          <div class="col-md-2"></div>
          <!--/.col (right) -->
        </div>
        
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div><br>
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-2">
                <h1 class="text-center text-bold">ຂໍຂອບໃຈ</h1>
                <!-- <img src="image/logo.jpg" alt="Logo" class="w-50 h-100 rounded-circle">   -->
            </div>
            <div class="col-md-5"></div>
        </div><br><br>
    </div>



<script>
function confirmDelete($id) {
    // Using SweetAlert2 for the confirmation dialog
    Swal.fire({
        title: 'ຕ້ອງການລຶບແທ້ ຫຼື ບໍ່?',
        text: 'ທ່ານແນ່່ໃຈບໍ ທີ່ຈະລຶບລະຫັດທີ່: '+$id,
        icon: 'warning',
        showCancelButton: true,
        cancelButtonText: 'ຍົກເລີກ',
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'ຢືນຢັນ!'
    }).then((result) => {
        if (result.isConfirmed) {
            // If the user confirms, redirect to the PHP script handling the delete
            window.location.href = 'deleteplan.php?id=' + $id;
        }
    });
}
</script>
<script>
    // Function to get current date and time
    function showDateTime() {
      var date = new Date();
      var year = date.getFullYear();
      var month = (date.getMonth() + 1).toString().padStart(2, '0');
      var day = date.getDate().toString().padStart(2, '0');
      var hours = date.getHours().toString().padStart(2, '0');
      var minutes = date.getMinutes().toString().padStart(2, '0');
      var seconds = date.getSeconds().toString().padStart(2, '0');
      var formattedDateTime = year + "-" + month + "-" + day + " " + hours + ":" + minutes + ":" + seconds;
      document.getElementById("datetime").innerHTML = "ວັນທີ່ເວລາ : " + formattedDateTime;
    }

    // Call the function to display date and time
    showDateTime();
  </script>
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- Include SweetAlert2 from CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript">
        window.print();
</script>
</body>
</html>