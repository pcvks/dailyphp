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
    $sql = "SELECT * FROM products WHERE is_delete = 0 ORDER BY id DESC";
    $query = "SELECT COUNT(id) as all_products FROM products WHERE is_delete = 0";
    $result_query = $conn->query($query);
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
          <div class="col-md-12" style="overflow: auto;">
              <table class="table table-striped ">
                <thead>
                  <tr>
                    <th>ລະຫັດສິນຄ້າ</th>
                    <th>ຮຸບພາບ</th>
                    <th>ຊື່ສິນຄ້າ</th>
                    <th>ລາຄາປົກກະຕິ</th>
                    <th>ລາຄາຂາຍ</th>
                    <th>ຈຳນວນ</th>
                    <th>ຫົວໜ່ວຍ</th>
                    <th>ປະເພດ</th>
                    <th>ເວລາວັນທີ່</th>
                    <th>ປຸ່ມຄຳສັ່ງ</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  include('./includes/db.php');
                  if (isset($_GET['query'])) {
                    $query = $_GET['query'];
                    // Write the SQL query to search for data
                    $sql = "SELECT * FROM products WHERE is_delete=0 AND image IS NOT NULL AND Pid LIKE '%$query%' OR name LIKE '%$query%' OR regular_price LIKE '%$query%' OR sale_price LIKE '%$query%' OR unit LIKE '%$query%' ";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                      // Display the search results
                      while ($row = mysqli_fetch_assoc($result)) {
                        $filePath = $row["image"];
                        echo "<tr >" . "<td>" . $row['Pid'] . "</td>" . "<td><b>" . '<img src="' . $filePath . '" class="pdimg" alt="Uploaded Image" width="100">' . "</b></td>" . "<td><b class='text-primary'>" . $row['name'] . "</b></td>"  . "<td><b class='text-primary'>" . $row['regular_price'] . "</b></td>" . "<td><b class='text-primary'>" . $row['sale_price']  . "</b></td>" . "<td><b class='text-primary'>" . $row['quantity'] . "</b></td>"  . "<td><b class='text-primary'>" . $row['unit'] . "</b></td>" . "<td><b class='text-primary'>" . $row['category'] . "</b></td>" . "<td>" . $row['timestamp'] . "</td>" . "</tr>";
                      }
                    } else {
                      echo "<b><h3 class='text-red text-center'>ຂໍອະໄພຂໍ້ມູນທີ່ທ່ານຕ້ອງການຍັງບໍ່ມີໃນລະບົບຂອງພວກເຮົາ</h3></b>";
                    }
                  }
                  while ($row = mysqli_fetch_assoc($result)) { ?>
                    <tr>
                      <td><?php echo $row['Pid']; ?></td>
                      <td class="pdimg"><?php $filePath = $row["image"];
                          echo '<img src="' . $filePath . '" alt="Uploaded Image" width="100">'; ?>
                      </td>
                      <td><?php echo $row['name']; ?></td>
                      <td><?php echo $row['regular_price']; ?></td>
                      <td><?php echo $row['sale_price']; ?></td>
                      <td><?php echo $row['quantity']; ?></td>
                      <td><?php echo $row['unit']; ?></td>
                      <td><?php echo $row['category']; ?></td>
                      <td><?php echo $row['timestamp']; ?></td>
                      <td><a href="#" class="btn btn-warning" data-toggle="modal" data-target="#modal-lg-edit"><i class="fas fa-edit"></i></a><a onclick="confirmDelete(<?php echo $row['id']; ?>)" class="btn btn-danger ml-1"><i class="fas fa-times"></i></a><a class="btn btn-success ml-1"  data-toggle="modal" data-target="#modal-lg-view"><i class="fas fa-eye"></i></a></td>
                    </tr>
                  <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <!-- left column -->
          
            <!--/.col (left) -->
            <!-- right column -->
            <div class="col-md-12" style="overflow: auto;">
              <table class="table table-striped ">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>ເນື້ອໃນ</th>
                    <th>ໂມດູນ</th>
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
                    $sql = "SELECT * FROM notes WHERE is_delete=0 AND image IS NOT NULL AND id LIKE '%$query%' OR modules LIKE '%$query%' ";
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                      // Display the search results
                      while ($row = mysqli_fetch_assoc($result)) {
                        $filePath = $row["image"];
                        echo "<tr>" . "<td>" . $row['id'] . "</td>" . "<td><b>" . '<img src="' . $filePath . '" alt="Uploaded Image" style="width:30%; height:30%;">' . "</b></td>" . "<td><b class='text-primary'>" . $row['modules'] . "</b></td>" . "<td>" . $row['timestamp'] . "</td>" . "</tr>";
                      }
                    } else {
                      echo "<b><h3 class='text-red text-center'>ຂໍອະໄພຂໍ້ມູນທີ່ທ່ານຕ້ອງການຍັງບໍ່ມີໃນລະບົບຂອງພວກເຮົາ</h3></b>";
                    }
                  }
                  while ($row = mysqli_fetch_assoc($result)) { ?>
                    <tr>
                      <td><?php echo $row['id']; ?></td>
                      <td><?php $filePath = $row["image"];
      echo '<img src="' . $filePath . '" alt="Uploaded Image" class="w-50 h-50">';?></td>
                      <td class="text-primary"><?php echo "<b>" . $row['modules'] . "</b>"; ?></td>
                      <td><?php echo "<b class='text-success'>" . $row['timestamp'] . "</b>"; ?></td>
                      <td><a onclick="confirmDelete(<?php echo $row['id']; ?>)" class="btn btn-danger"><i class="fas fa-times"></i></a>&nbsp;<a href="noteimageview.php?id=<?php echo $row['id']?>" class="btn btn-success"><i class="fas fa-eye"></i></a></td>
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
        text: 'ລຶບແລ້ວບໍ່ສາມາດກູ້ຄືນໄດ້! ID: '+$id,
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