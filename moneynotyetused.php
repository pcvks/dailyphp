<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ເງິນທີ່ເຫຼືອ</title>
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
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>
                  <?php
                  $sql = "SELECT (SUM(income)-SUM(expenditure)) as expend_today FROM pdaily WHERE is_delete=0 AND m_status = 0";
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

                <p>ເງິນສົດ</p>
              </div>
              <div class="icon">
                <i class="fas fa-dollar-sign"></i>
              </div>
              <a href="#" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>
                  <?php
                  $sql = "SELECT SUM(income) as expen_sum FROM pdaily WHERE is_delete=0 AND DATE(timestamp) = CURDATE()";
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
                </h3>

                <p>ເງິນໃນບັນຊີ</p>
              </div>
              <div class="icon">
                <i class="fas fa-dollar-sign"></i>
              </div>
              <a href="./expendituredetailform.php" class="small-box-footer">ລາຍລະອຽດ<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
       <div class="col-md-1"></div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
        <div class="col-md-5" style="overflow: auto;">
        <h1 class="text-center">ລາຍຈ່າຍເງິນສົດ</h1>
            <table class="table table-striped ">
              <thead>
                <tr>
                  <th>#</th>
                  <th>ຈຳນວນເງິນ</th>
                  <th>ເຫດຜົນ</th>
                  <th>ສະຖານະ</th>
                  <th>ວັນທີ່ເວລາ</th>
                  <th>ປຸ່ມຄຳສັ່ງ</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                include('./includes/db.php');
                $sql = "SELECT * FROM pdaily WHERE is_delete=0 AND m_status = 0 AND expenditure is not NULL ORDER BY id DESC limit 5";
                  $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) { ?>
                <tr>
                  <td><?php echo $row['id']; ?></td>
                  <td><?php echo "<b class='text-danger'>".$row['expenditure']." ₭";"</b>"; ?></td>
                  <td><?php echo "<b>".$row['ex_reason']."</b>"; ?></td>
                  <td><?php if($row['m_status'] == 0)
                      {
                        echo "<b class='text-danger'>ເງິນສົດ</b>";
                      }
                      else {
                        echo "<b class='text-danger'>ເງິນໃນບັນຊີ</b>";
                      }; ?></td>
                  <td><?php echo $row['timestamp']; ?></td>
                  <td><a class="btn btn-warning" href="editexpenditure.php?id=<?php echo $row["id"]; ?>"><i class="fas fa-edit"></i></a>&nbsp;<a onclick="confirmDelete(<?php echo $row['id'];?>)" class="btn btn-danger"><i class="fas fa-times"></i></a></td>
                </tr>
               <?php } ?>
              </tbody>
            </table>
          </div>
          <div class="col-md-5" style="overflow: auto;">
        <h1 class="text-center">ລາຍຈ່າຍເງິນໃນບັນຊີ</h1>
            <table class="table table-striped ">
              <thead>
                <tr>
                  <th>#</th>
                  <th>ຈຳນວນເງິນ</th>
                  <th>ເຫດຜົນ</th>
                  <th>ສະຖານະ</th>
                  <th>ວັນທີ່ເວລາ</th>
                  <th>ປຸ່ມຄຳສັ່ງ</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                include('./includes/db.php');
                $sql = "SELECT * FROM pdaily WHERE is_delete=0 AND m_status = 1 AND expenditure is not NULL ORDER BY id DESC limit 5";
                  $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) { ?>
                <tr>
                  <td><?php echo $row['id']; ?></td>
                  <td><?php echo "<b class='text-danger'>".$row['expenditure']." ₭";"</b>"; ?></td>
                  <td><?php echo "<b>".$row['ex_reason']."</b>"; ?></td>
                  <td><?php if($row['m_status'] == 0)
                      {
                        echo "<b class='text-danger'>ເງິນສົດ</b>";
                      }
                      else {
                        echo "<b class='text-danger'>ເງິນໃນບັນຊີ</b>";
                      }; ?></td>
                  <td><?php echo $row['timestamp']; ?></td>
                  <td><a class="btn btn-warning" href="editexpenditure.php?id=<?php echo $row["id"]; ?>"><i class="fas fa-edit"></i></a>&nbsp;<a onclick="confirmDelete(<?php echo $row['id'];?>)" class="btn btn-danger"><i class="fas fa-times"></i></a></td>
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