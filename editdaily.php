<?php
include("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ບັນທຶກປະຈຳວັນ</title>
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
$sql = "SELECT * FROM pdaily WHERE id=$id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

// Process form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){

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

    // Update user information in database
    $sql = "UPDATE pdaily SET five_six='$five_six', six_seven='$six_seven', seven_eight='$seven_eight', eight_nine='$eight_nine',
            nine_ten='$nine_ten', ten_eleven='$ten_eleven', eleven_twelve='$eleven_twelve', twelve_thirteen='$twelve_thirteen',thirteen_fourteen='$thirteen_fourteen',
            fourteen_fifteen='$fourteen_fifteen', fifteen_sixteen='$fifteen_sixteen', sixteen_seventeen='$sixteen_seventeen', seventeen_eighteen='$seventeen_eighteen', eighteen_nineteen='$eighteen_nineteen', nineteen_twenty='$nineteen_twenty', twenty_twentyone='$twenty_twentyone', twentyone_twentytwo='$twentyone_twentytwo', twentytwo_twentythree='$twentytwo_twentythree', twentythree_five='$twentythree_five', days='$days' WHERE id=$id";
    mysqli_query($conn, $sql);
       // Redirect to user profile page
}

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
            <h1 class="text-center">ແກ້ໄຂຂໍ້ມູນຊີວິດປະຈຳວັນ</h1>
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form method="POST" action="">
              <div class="card-body">
                  
                  <div class="row">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">5:00-6:00</label>
                    <input type="text" name="five_six" class="form-control" value="<?php echo $row['five_six']?>" id="exampleInputEmail1" required >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">6:00-7:00</label>
                    <input type="text" name="six_seven" class="form-control" value="<?php echo $row['six_seven']?>" id="exampleInputPassword1" >
                  </div>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">7:00-8:00</label>
                    <input type="text" name="seven_eight" class="form-control" value="<?php echo $row['seven_eight']?>" id="exampleInputEmail1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">8:00-9:00</label>
                    <input type="text" name="eight_nine" class="form-control" value="<?php echo $row['eight_nine']?>" id="exampleInputPassword1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">9:00-10:00</label>
                    <input type="text" name="nine_ten" class="form-control" value="<?php echo $row['nine_ten']?>" id="exampleInputEmail1" >
                  </div>
                  
                </div>
                <div class="row">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">10:00-11:00</label>
                    <input type="text" name="ten_eleven" class="form-control" value="<?php echo $row['ten_eleven']?>" id="exampleInputEmail1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">11:00-12:00</label>
                    <input type="text" name="eleven_twelve" class="form-control" value="<?php echo $row['eleven_twelve']?>" id="exampleInputPassword1" >
                  </div>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">12:00-13:00</label>
                    <input type="text" name="twelve_thirteen" class="form-control" value="<?php echo $row['twelve_thirteen']?>" id="exampleInputEmail1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">13:00-14:00</label>
                    <input type="text" name="thirteen_fourteen" class="form-control" value="<?php echo $row['thirteen_fourteen']?>" id="exampleInputPassword1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">14:00-15:00</label>
                    <input type="text" name="fourteen_fifteen" class="form-control" value="<?php echo $row['fourteen_fifteen']?>" id="exampleInputEmail1" >
                  </div>
                  
                </div>
                <div class="row">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">15:00-16:00</label>
                    <input type="text" name="fifteen_sixteen" class="form-control" value="<?php echo $row['fifteen_sixteen']?>" id="exampleInputEmail1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">16:00-17:00</label>
                    <input type="text" name="sixteen_seventeen" class="form-control" value="<?php echo $row['sixteen_seventeen']?>" id="exampleInputPassword1" >
                  </div>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">17:00-18:00</label>
                    <input type="text" name="seventeen_eighteen" class="form-control" value="<?php echo $row['seventeen_eighteen']?>" id="exampleInputEmail1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">18:00-19:00</label>
                    <input type="text" name="eighteen_nineteen" class="form-control" value="<?php echo $row['eighteen_nineteen']?>" id="exampleInputPassword1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">19:00-20:00</label>
                    <input type="text" name="nineteen_twenty" class="form-control" value="<?php echo $row['nineteen_twenty']?>" id="exampleInputEmail1" >
                  </div>
                  
                </div>
                <div class="row">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">20:00-21:00</label>
                    <input type="text" name="twenty_twentyone" class="form-control" value="<?php echo $row['twenty_twentyone']?>" id="exampleInputEmail1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">21:00-22:00</label>
                    <input type="text" name="twentyone_twentytwo" class="form-control" value="<?php echo $row['twentyone_twentytwo']?>" id="exampleInputPassword1" >
                  </div>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputEmail1">22:00-23:00</label>
                    <input type="text" name="twentytwo_twentythree" class="form-control" value="<?php echo $row['twentytwo_twentythree']?>" id="exampleInputEmail1" >
                  </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">23:00-5:00</label>
                    <input type="text" name="twentythree_five" class="form-control" value="<?php echo $row['twentythree_five']?>" id="exampleInputPassword1" >
                  
                </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="form-group">
                    <label for="exampleInputPassword1">ວັນ</label>
                    <select name="days" id="" class="form-control">
                      <option value="">-- ກະລຸນາເລືອກ --</option>
                      <option value="ຈັນ">ຈັນ</option>
                      <option value="ອັງຄານ">ອັງຄານ</option>
                      <option value="ພຸດ">ພຸດ</option>
                      <option value="ພະຫັດ">ພະຫັດ</option>
                      <option value="ສຸກ">ສຸກ</option>
                      <option value="ເສົາ">ເສົາ</option>
                      <option value="ທິດ">ທິດ</option>
                    </select>
                </div>
                
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-success">ອັບເດດ</button>
                </div>
              </form>
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