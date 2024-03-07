<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ໜ້າຫຼັກ</title>
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
  *{
    font-family: 'Noto Sans Lao';
}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
<?php

include("./includes/navbar.php");
include("./includes/sidebar.php");
include('./includes/db.php');
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-bold text-primary">ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ລະບົບ DAILY</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                
                <h3>
                  <?php
                  $sql = "SELECT SUM(income) as income_sum FROM pdaily WHERE is_delete=0";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['income_sum']." ₭";
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?>
                </h3>

                <p>ລາຍຮັບທັງໝົດ</p>
              </div>
              <div class="icon">
                <i class="fas fa-dollar-sign"></i>
              </div>
              <a href="./incomedetailform.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>
                <h3>
                  <?php
                  $sql = "SELECT SUM(expenditure) as expen_sum FROM pdaily WHERE is_delete=0";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['expen_sum']." ₭";
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?>
                </h3></h3>

                <p>ລາຍຈ່າຍທັງໝົດ</p>
              </div>
              <div class="icon">
                <i class="fas fa-dollar-sign"></i>
              </div>
              <a href="./expendituredetailform.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>
                  <?php
                  $sql = "SELECT (SUM(income) - SUM(expenditure)) as income_minus_expenditure FROM pdaily WHERE is_delete=0";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['income_minus_expenditure']." ₭";
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?>
                </h3>

                <p>ເງິນທີ່ເຫຼືອ</p>
              </div>
              <div class="icon">
                <i class="fas fa-dollar-sign"></i>
              </div>
              <a href="./moneynotyetused.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>
                  <?php
                  $sql = "SELECT SUM(expenditure) as expend_today FROM pdaily WHERE is_delete=0 AND DATE(timestamp) = CURDATE()";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['expend_today']." ₭";
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?>
                </h3>

                <p>ລາຍຈ່າຍມື້ນີ້</p>
              </div>
              <div class="icon">
                <i class="fas fa-dollar-sign"></i>
              </div>
              <a href="./expendituretodayform.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                
                <h3>
                  <?php
                  $sql = "SELECT COUNT(*) as plan_count FROM plan WHERE is_delete=0";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['plan_count'];
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?>
                </h3>

                <p>ແຜນການປີນີ້</p>
              </div>
              <div class="icon">
                <i class="fas fa-book"></i>
              </div>
              <a href="./plan.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                
                <h3>
                  <?php
                  $sql = "SELECT COUNT(*) as plan_notyetsuccess FROM plan WHERE is_delete=0 AND status = 0";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['plan_notyetsuccess'];
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?>
                </h3>

                <p>ແຜນການປີນີ້ທີ່ຍັງບໍ່ສຳເລັດ</p>
              </div>
              <div class="icon">
                <i class="fas fa-book"></i>
              </div>
              <a href="./plannotyetsuccessform.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>
                  <?php
                  $sql = "SELECT COUNT(*) as plan_success FROM plan WHERE is_delete=0 AND status = 1";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['plan_success'];
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  
                  ?>
                </h3>

                <p>ແຜນການປີນີ້ສຳເລັດແລ້ວ</p>
              </div>
              <div class="icon">
                <i class="fas fa-book"></i>
              </div>
              <a href="./plansuccessform.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>
                  <?php
                  $sql = "SELECT COUNT(*) as user_count FROM pdaily WHERE is_delete=0 AND income is NULL AND expenditure is NULL";
                  $result = $conn->query($sql);
                  
                  // Check if the query was successful
                  if ($result) {
                      // Fetch the result as an associative array
                      $row = $result->fetch_assoc();
                      
                      // Display the user count
                      echo $row['user_count'];
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?>
                </h3>

                <p>ຈຳນວນມື້</p>
              </div>
              <div class="icon">
                <i class="fas fa-calendar-day"></i>
              </div>
              <a href="./dailydetailform.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
       
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
        <div class="col-md-12" style="overflow: auto;">
            <table class="table table-striped ">
              <thead>
                <tr>
                  <th>#</th>
                  <th>5:00-6:00</th>
                  <th>6:00-7:00</th>
                  <th>7:00-8:00</th>
                  <th>8:00-9:00</th>
                  <th>9:00-10:00</th>
                  <th>10:00-11:00</th>
                  <th>11:00-12:00</th>
                  <th>12:00-13:00</th>
                  <th>13:00-14:00</th>
                  <th>14:00-15:00</th>
                  <th>15:00-16:00</th>
                  <th>16:00-17:00</th>
                  <th>17:00-18:00</th>
                  <th>18:00-19:00</th>
                  <th>19:00-20:00</th>
                  <th>20:00-21:00</th>
                  <th>21:00-22:00</th>
                  <th>22:00-23:00</th>
                  <th>23:00-5:00</th>
                  <th>ວັນທີ່ & ເວລາ</th>
                  <th>ປຸ່ມຄຳສັ່ງ</th>
                </tr>
              </thead>
              <tbody>
              <?php 
include("./includes/db.php");
$sql = "SELECT * FROM pdaily WHERE is_delete=0 AND income IS NULL AND expenditure IS NULL ORDER BY id DESC LIMIT 3";
$result = mysqli_query($conn, $sql);?>
                <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                <tr>
                  <td><?php echo $row['id']; ?></td>
                  <td><?php if($row['five_six'] == "ນອນ")
                      {
                        echo "<b class='text-danger'>".$row['five_six']."</b>";
                      }
                      else {
                        echo "<b class='text-success'>".$row['five_six']."</b>";
                      }; ?></td>
                  <td><?php echo $row['six_seven']; ?></td>
                  <td><?php echo $row['seven_eight']; ?></td>
                  <td><?php echo $row['eight_nine']; ?></td>
                  <td><?php echo $row['nine_ten']; ?></td>
                  <td><?php echo $row['ten_eleven']; ?></td>
                  <td><?php echo $row['eleven_twelve']; ?></td>
                  <td><?php echo $row['twelve_thirteen']; ?></td>
                  <td><?php echo $row['thirteen_fourteen']; ?></td>
                  <td><?php echo $row['fourteen_fifteen']; ?></td>
                  <td><?php echo $row['fifteen_sixteen']; ?></td>
                  <td><?php echo $row['sixteen_seventeen']; ?></td>
                  <td><?php echo $row['seventeen_eighteen']; ?></td>
                  <td><?php echo $row['eighteen_nineteen']; ?></td>
                  <td><?php echo $row['nineteen_twenty']; ?></td>
                  <td><?php echo $row['twenty_twentyone']; ?></td>
                  <td><?php echo $row['twentyone_twentytwo']; ?></td>
                  <td><?php echo $row['twentytwo_twentythree']; ?></td>
                  <td><?php echo $row['twentythree_five']; ?></td>
                  <td><?php if($row['five_six'] == null ||  $row['six_seven'] == null ||  $row['seven_eight'] == null ||  $row['eight_nine'] == null ||  $row['nine_ten'] == null ||  $row['ten_eleven'] == null ||  $row['eleven_twelve'] == null ||  $row['twelve_thirteen'] == null ||  $row['thirteen_fourteen'] == null ||  $row['fourteen_fifteen'] == null ||  $row['fifteen_sixteen'] == null ||  $row['sixteen_seventeen'] == null ||  $row['seventeen_eighteen'] == null ||  $row['eighteen_nineteen'] == null ||  $row['nineteen_twenty'] == null ||  $row['twenty_twentyone'] == null || $row['twentyone_twentytwo'] == null ||  $row['twentytwo_twentythree'] == null || $row['twentythree_five'] == null)
                      {
                        echo "<b class='text-danger'><i class='fas fa-times'></i>  ".$row['timestamp']."</b>";
                      }
                      else {
                        echo "<b class='text-success'><i class='fas fa-check'></i>  ".$row['timestamp']."</b>";
                      }
                  ?></td>
                  <td><a class="btn btn-warning" href="editdaily.php?id=<?php echo $row['id'];?>"><i class="fas fa-edit"></i></a>&nbsp;<a onclick="confirmDelete(<?php echo $row['id'];?>)" class="btn btn-danger"><i class="fas fa-times"></i></a></td>
                </tr>
               <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
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
            window.location.href = 'deletedaily.php?id=' + $id;
        }
    });
}
</script>
<?php 
include("./includes/footer.php");
?>
</div>

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

</body>
</html>