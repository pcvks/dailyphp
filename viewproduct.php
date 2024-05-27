<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ບັນທຶກທີ່ສຳຄັນ</title>
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

    // Get user ID from URL parameter
    $id = $_GET["id"];

    // Retrieve user information from database
    $sql = "SELECT * FROM products WHERE id=$id";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    
    mysqli_close($conn); // Close database connection
    ?>

    <!-- HTML form to display user information and allow editing -->


    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <!-- <h1>General Form</h1> -->
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">General Form</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->
              <h1 class="text-center">ລາຍລະອຽດສິນຄ້າ</h1>
              <div class="card card-info">
                <div class="card-header">
                  <h3 class="card-title">ຂໍ້ມູນສິນຄ້າ</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <div class="card-body">
                    <p class="text-center">
                    <?php $filePath = $row["image"];
                          echo '<img src="' . $filePath . '" alt="Uploaded Image" width="200" style="border-radius:20%">'; ?>
                    </p>
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-3">
                            <div class="row form-group ml-1">
                                <p class="text-bold">ລະຫັດສິນຄ້າ : <?php echo$row['Pid'];?></p>
                            </div>
                            <div class="row form-group ml-1">
                                <p class="text-bold">ຊື່ສິນຄ້າ : <?php echo$row['name'];?></p>
                            </div>
                            <div class="row form-group ml-1">
                                <p class="text-bold">ລາຄາປົກກະຕິ : <?php echo$row['regular_price'];?> ກີບ</p>
                            </div>
                            <div class="row form-group ml-1">
                                <p class="text-bold">ລາຄາຂາຍ : <?php echo$row['sale_price'];?> ກີບ</p>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="row form-group ml-1">
                                <p class="text-bold">ຈຳນວນ : <?php echo$row['quantity'];?></p>
                            </div>
                            <div class="row form-group ml-1">
                                <p class="text-bold">ຫົວໜ່ວຍ :<?php echo$row['unit'];?></p> 
                            </div>
                            <div class="row form-group ml-1">
                                <p class="text-bold">ປະເພດ : <?php echo$row['category'];?></p>
                            </div>
                            <div class="row form-group ml-1">
                                <p class="text-bold">ວັນທີ່ : <?php echo$row['timestamp'];?></p>
                            </div>
                        </div>
                        <div class="col-md-3"></div>
                    </div>
                </div>
              </div>
              <!-- /.card -->

            </div>
            <!--/.col (left) -->
            <!-- right column -->

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
</body>

</html>