<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ບັນທຶກທີ່ຈຳເປັນ</title>
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
    ?>
    <?php
    include("./includes/db.php");
    $sql = "SELECT * FROM necessary WHERE is_delete = 0 ORDER BY id DESC";
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
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <!-- <a href="./notedetailform.php" class="btn btn-primary"><i class="fas fa-arrow-circle-right"></i>&nbsp;ລາຍລະອຽດ</a> -->
            </div>
            <div class="col-sm-6">
              <div class="row">
                <div class="col-md-6">
                  
                </div>
                <div class="col-md-6">
                  <form action="necessary.php" method="GET" class="form-inline">
                    <input name="query" type="search" class="form-control" required placeholder="Search">&nbsp;
                    <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>&nbsp;
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <!-- left column -->
            <div class="col-md-6">
              <!-- general form elements -->
              <h1 class="text-center">ຟອມບັນທຶກທີ່ຈຳເປັນ</h1>
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">ການບັນທຶກ</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form method="POST" action="insertnecessary.php">
                  <div class="card-body">

                    <div class="row">

                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="exampleInputPassword1">ເນື້ອໃນຕ່າງໆ</label>
                          <input type="text" name="content" class="form-control" required placeholder="ສິ່ງທີ່ຈຳເປັນ">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <label for="">ວັນ-ເວລາທີ່ເຮັດ</label>
                        <input type="text" name="date" required placeholder="ວັນ-ເວລາທີ່ເຮັດ" class="form-control">
                      </div>
                    </div>

                  </div>
                  <!-- /.card-body -->

                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary">ສົ່ງຟອມ</button>
                  </div>
                </form>
              </div>
              <!-- /.card -->

            </div>
            <!--/.col (left) -->
            <!-- right column -->
            <div class="col-md-6" style="overflow: auto;">
              <table class="table table-striped ">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>ເນື້ອໃນ</th>
                    <th>ວັນ-ເວລາທີ່ເຮັດ</th>
                    <th>ວັນທີ່ເວລາ</th>
                    <th>ປຸ່ມຄຳສັ່ງ</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  include('./includes/db.php');
                  if (isset($_GET['query'])) {
                    $query = $_GET['query'];
                    // Write the SQL query to search for data
                    $sql = "SELECT * FROM necessary WHERE is_delete = 0 AND id LIKE '%$query%' OR content LIKE '%$query%'OR date LIKE '%$query%' ";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                      // Display the search results
                      while ($row = mysqli_fetch_assoc($result)) {

                        echo "<tr>" . "<td>" . $row['id'] . "</td>" . "<td><b>" . $row['content'] . "</b></td>" . "<td><b class='text-primary'>" . $row['date'] . "</b></td>" . "<td>" . $row['timestamp'] . "</td>" . "</tr>";
                      }
                    } else {
                      echo "<b><h3 class='text-red text-center'>ຂໍອະໄພຂໍ້ມູນທີ່ທ່ານຕ້ອງການຍັງບໍ່ມີໃນລະບົບຂອງພວກເຮົາ</h3></b>";
                    }
                  }
                  while ($row = mysqli_fetch_assoc($result)) { ?>
                    <tr>
                      <td><?php echo $row['id']; ?></td>
                      <td class="text-danger"><?php echo "<b>" . $row['content'] . "</b>"; ?></td>
                      <td class="text-primary"><?php echo "<b>" . $row['date'] . "</b>"; ?></td>
                      <td><?php echo "<b class='text-success'>" . $row['timestamp'] . "</b>"; ?></td>
                      <td><a onclick="confirmDelete(<?php echo $row['id']; ?>)" class="btn btn-danger"><i class="fas fa-times"></i></a></td>
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
            <!--/.col (right) -->
          </div>

          <!-- /.row -->
        </div><!-- /.container-fluid -->
      </section>
      <!-- /.content -->
    </div>
    <?php
    include("./includes/footer.php");
    ?>
  </div>


  <script>
    function confirmDelete($id) {
      // Using SweetAlert2 for the confirmation dialog
      Swal.fire({
        title: 'ຕ້ອງການລຶບແທ້ ຫຼື ບໍ່?',
        text: 'ທ່ານແນ່່ໃຈບໍ ທີ່ຈະລຶບລະຫັດທີ່: ' + $id,
        icon: 'warning',
        showCancelButton: true,
        cancelButtonText: 'ຍົກເລີກ',
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'ຢືນຢັນ!'
      }).then((result) => {
        if (result.isConfirmed) {
          Swal.fire({
            title: "ລົບລ້າງ!",
            text: "ຂໍ້ມູນໄດ້ຖືກລຶບສຳເລັດແລ້ວ",
            icon: "success",
            timer: 2000, // 2-3 seconds
            timerProgressBar: true,
            didOpen: () => {
              Swal.showLoading();
            }
          }).then(() => {
            window.location.href = 'deletenecessary.php?id=' + $id;
          });
        }
      });
    }
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

</body>

</html>