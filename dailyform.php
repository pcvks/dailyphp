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


 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
          <div class="row">
          <a href="./dailydetailform.php" class="btn btn-primary"><i class="fas fa-arrow-circle-right"></i>ລາຍລະອຽດ</a>
          
          <?php
          include("./includes/db.php");
          $mysql = "SELECT five_six FROM pdaily ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn, $mysql);

if ($result) {
  $row = mysqli_fetch_assoc($result);
  if ($row['five_six'] == "ນອນ") {
      echo "<b class='text-red'><h4><i class='fas fa-times'></i> ກະລຸນາຕື່ນໃຫ້ເຊົ້າແດເດີ່! ຍ້ອນຕື່ນສາຍຫຼາຍເທື່ອແລ້ວ!</h4></b>";
      // echo "<audio id='myAudio'><source src='./sounds/danger.wav' type='audio/wav'>Your browser does not support the audio element.</audio>";
      // echo "<script>var audio = document.getElementById('myAudio'); audio.play();</script>";
  } else {
      echo "<b><h4 class='text-success'><i class='fas fa-check'></i> ປົກກະຕິດີ</h4></b>";
      // echo "<audio id='myAudio'><source src='./sounds/success.wav' type='audio/wav'>Your browser does not support the audio element.</audio>";
      // echo "<script>var audio = document.getElementById('myAudio'); audio.play();</script>";
  }
} else {
  echo "Error retrieving data from the database.";
}
?>
          </div>
            </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="nav-item">
              <?php
            include("./includes/db.php");
            $mysql = "SELECT twentythree_five FROM pdaily ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn, $mysql);

if ($result) {
    $row = mysqli_fetch_assoc($result);
    if ($row['twentythree_five'] !== "ນອນ" && $row['twentythree_five'] !== null) {
        echo "<b class='text-red'><h4><i class='fas fa-times'></i> ເວລາ23:00 ທ່ານຄວນນອນໄດ້ແລ້ວ!</h4></b>";
        // echo "<audio id='myAudio'><source src='./sounds/danger.wav' type='audio/wav'>Your browser does not support the audio element.</audio>";
        // echo "<script>var audio = document.getElementById('myAudio'); audio.play();</script>";
    } else {
        echo "<b><h4 class='text-success'><i class='fas fa-check'></i> ປົກກະຕິດີ</h4></b>";
        // echo "<audio id='myAudio'><source src='./sounds/success.wav' type='audio/wav'>Your browser does not support the audio element.</audio>";
        // echo "<script>var audio = document.getElementById('myAudio'); audio.play();</script>";
    }
} else {
    echo "Error retrieving data from the database.";
}
?>
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline" action="dailyform.php" method="GET">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" name="query" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>
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
            <h1 class="text-center">ຟອມບັນທຶກຊີວິດປະຈຳວັນຂອງຂ້ອຍຕັ້ງແຕ່(01 January 2024)</h1>
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div>
              <?php 
include("./includes/db.php");
$sql = "SELECT * FROM pdaily WHERE is_delete=0 AND income IS NULL AND expenditure IS NULL ORDER BY id DESC limit 5";
$result = mysqli_query($conn, $sql);
if (isset($_GET['success']) && $_GET['success'] === 'true') {
  echo '<script>alert("ຂໍ້ມູນທີ່ປ້ອນຖືກບັນທຶກສຳເລັດແລ້ວ!");</script>';
} elseif (isset($_GET['success']) && $_GET['success'] === 'false') {
  echo '<script>alert("Error inserting data.");</script>';
}
?>
              <!-- /.card-header -->
              <!-- form start -->
              <form method="POST" action="insertdaily.php">
                <div class="card-body">
                  
                  <div class="row">
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">5:00-6:00</label>
                    <input type="text" name="five_six" class="form-control" id="exampleInputEmail1" required placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">6:00-7:00</label>
                    <input type="text" name="six_seven" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">7:00-8:00</label>
                    <input type="text" name="seven_eight" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">8:00-9:00</label>
                    <input type="text" name="eight_nine" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">9:00-10:00</label>
                    <input type="text" name="nine_ten" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  
                </div>
                <div class="row">
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">10:00-11:00</label>
                    <input type="text" name="ten_eleven" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">11:00-12:00</label>
                    <input type="text" name="eleven_twelve" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">12:00-13:00</label>
                    <input type="text" name="twelve_thirteen" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">13:00-14:00</label>
                    <input type="text" name="thirteen_fourteen" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">14:00-15:00</label>
                    <input type="text" name="fourteen_fifteen" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  
                </div>
                <div class="row">
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">15:00-16:00</label>
                    <input type="text" name="fifteen_sixteen" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">16:00-17:00</label>
                    <input type="text" name="sixteen_seventeen" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">17:00-18:00</label>
                    <input type="text" name="seventeen_eighteen" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">18:00-19:00</label>
                    <input type="text" name="eighteen_nineteen" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">19:00-20:00</label>
                    <input type="text" name="nineteen_twenty" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  
                </div>
                <div class="row">
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">20:00-21:00</label>
                    <input type="text" name="twenty_twentyone" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">21:00-22:00</label>
                    <input type="text" name="twentyone_twentytwo" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  
                  <div class="form-group ml-4">
                    <label for="exampleInputEmail1">22:00-23:00</label>
                    <input type="text" name="twentytwo_twentythree" class="form-control" id="exampleInputEmail1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">23:00-5:00</label>
                    <input type="text" name="twentythree_five" class="form-control" id="exampleInputPassword1" placeholder="ສິ່ງທີ່ໄດ້ກະທຳ">
                  
                </div>
                  <div class="form-group ml-4">
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
                  <button type="submit" class="btn btn-primary">ສົ່ງຟອມ</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

          </div>
          <!--/.col (left) -->
          <!-- right column -->
         
          <!--/.col (right) -->
        </div>
        <div class="row" style="overflow: auto;">
        <div class="col-md-12">
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
                  <th>ວັນ</th>
                  <th>ວັນທີ່ & ເວລາ</th>
                  <th>ປຸ່ມຄຳສັ່ງ</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                include('./includes/db.php');
                if (isset($_GET['query'])) {
                  $query = $_GET['query'];
                  // Write the SQL query to search for data
                  $sql = "SELECT * FROM pdaily WHERE five_six LIKE '%$query%' OR six_seven LIKE '%$query%' OR seven_eight LIKE '%$query%' OR eight_nine LIKE '%$query%' OR nine_ten LIKE '%$query%' OR ten_eleven LIKE '%$query%' OR eleven_twelve LIKE '%$query%' OR twelve_thirteen LIKE '%$query%' OR thirteen_fourteen LIKE '%$query%' OR fourteen_fifteen LIKE '%$query%' OR fifteen_sixteen LIKE '%$query%' OR sixteen_seventeen LIKE '%$query%' OR seventeen_eighteen LIKE '%$query%' OR eighteen_nineteen LIKE '%$query%' OR nineteen_twenty LIKE '%$query%' OR twenty_twentyone LIKE '%$query%' OR twentyone_twentytwo LIKE '%$query%' OR twentytwo_twentythree LIKE '%$query%' OR days LIKE '%$query%'";
                  $result = mysqli_query($conn, $sql);
          
                  if (mysqli_num_rows($result) > 0) {
                      // Display the search results
                      while ($row = mysqli_fetch_assoc($result)) {

                          echo "<tr>"."<td>".$row['id'] ."</td>"."<td>". $row['five_six'] ."</td>"."<td>". $row['six_seven'] ."</td>"."<td>". $row['seven_eight'] ."</td>"."<td>". $row['eight_nine'] ."</td>"."<td>". $row['nine_ten'] ."</td>"."<td>". $row['ten_eleven'] ."</td>"."<td>". $row['eleven_twelve'] ."</td>"."<td>". $row['twelve_thirteen'] ."</td>"."<td>". $row['thirteen_fourteen'] ."</td>"."<td>". $row['fourteen_fifteen'] ."</td>"."<td>". $row['fifteen_sixteen'] ."</td>"."<td>". $row['sixteen_seventeen'] ."</td>"."<td>". $row['seventeen_eighteen'] ."</td>"."<td>". $row['eighteen_nineteen'] ."</td>"."<td>". $row['nineteen_twenty'] ."</td>"."<td>". $row['twenty_twentyone'] ."</td>"."<td>". $row['twentyone_twentytwo'] ."</td>"."<td>". $row['twentytwo_twentythree'] ."<td>". $row['timestamp'] ."<td>". $row['days'] ."</td>"."</td>"."</td>". "</tr>";
                      }
                  } else {
                      echo "<b><h3 class='text-red text-center'>ຂໍອະໄພຂໍ້ມູນທີ່ທ່ານຕ້ອງການຍັງບໍ່ມີໃນລະບົບຂອງພວກເຮົາ</h3></b>";
                  }
              }
                while ($row = mysqli_fetch_assoc($result)) { ?>
                <tr>
                  <td><?php echo $row['id']; ?></td>
                  <td><?php if($row['five_six'] == "ນອນ")
                      {
                        echo "<b class='text-danger'>".$row['five_six']."</b>";
                      }
                      else {
                        echo "<b class='text-success'>".$row['five_six']."</b>";
                      }; ?></td>
                      <td><?php if($row['six_seven'] == "ນອນ")
                      {
                        echo "<b class='text-danger'>".$row['six_seven']."</b>";
                      }
                      else {
                        echo "<b class='text-success'>".$row['six_seven']."</b>";
                      }; ?></td>
                      <td><?php if($row['seven_eight'] == "ນອນ")
                      {
                        echo "<b class='text-danger'>".$row['seven_eight']."</b>";
                      }
                      else {
                        echo "<b class='text-success'>".$row['seven_eight']."</b>";
                      }; ?></td>
                      <td><?php if($row['eight_nine'] == "ນອນ")
                      {
                        echo "<b class='text-danger'>".$row['eight_nine']."</b>";
                      }
                      else {
                        echo "<b class='text-success'>".$row['eight_nine']."</b>";
                      }; ?></td>
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
                  <td><?php echo $row['days']; ?></td>
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