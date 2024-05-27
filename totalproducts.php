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
  <link rel="stylesheet" href="./style.css">
  <style>
    body {
      font-family: 'Noto Sans Lao';
    }
    @media screen and (max-width:996px){
      .pdimg{
        width: 20%;
      }
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
    $sql = "SELECT * FROM products WHERE is_delete = 0 ORDER BY id DESC LIMIT 10";
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
            <div class="col-sm-6 row">
              <a href="./productsdetail.php" class="btn btn-primary"><i class="fas fa-arrow-circle-right"></i>&nbsp;ລາຍລະອຽດ</a>&nbsp;<a class="btn btn-success" data-toggle="modal" data-target="#modal-lg"><i class="fas fa-plus"></i>&nbsp;ເພີ່ມສິນຄ້າໃໝ່</a><h5 class="ml-1 text-primary">ສິນຄ້າທັງໝົດ: <?php if ($result_query) {
                      // Fetch the result_q$result_query as an associative array
                      $row = $result_query->fetch_assoc();
                      
                      // Display the user count
                      echo $row['all_products'];
                  } else {
                      echo "Error: " . $conn->error;
                  }
                  ?> ລາຍການ</h5>
            </div>
            <div class="col-sm-6">
              <div class="row">
                <div class="col-md-6">
                  <form action="totalproducts.php" method="GET" class="form-inline">
                    <select name="query" id="" class="form-control">
                      <option value="ໜ່ວຍ">ໜ່ວຍ</option>
                      <option value="ກັບ">ກັບ</option>
                      <option value="ຕຸກ">ຕຸກ</option>
                      <option value="ແກ້ວ">ແກ້ວ</option>
                      <option value="ປອງ">ປອງ</option>
                    </select>&nbsp;
                    <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>&nbsp;
                    </button>
                  </form>
                </div>
                <div class="col-md-6">
                  <form action="totalproducts.php" method="GET" class="form-inline">
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

            <!-- right column -->
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
                      <td><a href="editproduct.php?id=<?php echo $row['id']?>" class="btn btn-warning"><i class="fas fa-edit"></i></a><a onclick="confirmDelete(<?php echo $row['id']; ?>)" class="btn btn-danger ml-1"><i class="fas fa-times"></i></a><a href="viewproduct.php?id=<?php echo $row['id'];?>" class="btn btn-success ml-1"><i class="fas fa-eye"></i></a></td>
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

      <div class="modal fade" id="modal-lg">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header bg-primary">
              <h4 class="modal-title">ເພີ່ມສິນຄ້າໃໝ່</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="insertproduct.php" method="POST" enctype="multipart/form-data">
              <div class="modal-body">
                <div class="row">
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">ລະຫັດສິນຄ້າ</label>
                    <input type="text" class="form-control" required name="Pid" placeholder="ລະຫັດສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">ຮູບພາບ</label>
                    <input type="file" class="form-control" required name="fileToUpload" id="fileToUpload">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຊື່ສິນຄ້າ</label>
                    <input type="text" class="form-control" required name="name" placeholder="ຊື່ສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ລາຄາປົກກະຕິ</label>
                    <input type="number" class="form-control" required name="regular_price" placeholder="ລາຄາປົກກະຕິ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ລາຄາຂາຍ</label>
                    <input type="number" class="form-control" required name="sale_price" placeholder="ລາຄາຂາຍ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຈຳນວນ</label>
                    <input type="number" class="form-control" required name="quantity" placeholder="ຈຳນວນສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຫົວໜ່ວຍ</label>
                    <select name="unit" id="" class="form-control">
                      <option value="ໜ່ວຍ">ໜ່ວຍ</option>
                      <option value="ກັບ">ກັບ</option>
                      <option value="ຕຸກ">ຕຸກ</option>
                      <option value="ແກ້ວ">ແກ້ວ</option>
                      <option value="ປອງ">ປອງ</option>
                    </select>
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ປະເພດ</label>
                    <select name="category" id="" class="form-control">
                      <option value="ເຄື່ອງດື່ມ">ເຄື່ອງດື່ມ</option>
                      <option value="ເຄື່ອງກິນ">ເຄື່ອງກິນ</option>
                      <option value="ເຄື່ອງໃຊ້">ເຄື່ອງໃຊ້</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-danger" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" class="btn btn-primary">ບັນທຶກ</button>
              </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>

      <div class="modal fade" id="modal-lg-edit">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header bg-info">
              <h4 class="modal-title">ແກ້ໄຂສິນຄ້າ</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="editproduct.php" method="POST" enctype="multipart/form-data">
              <div class="modal-body">
                <div class="row">
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">ລະຫັດສິນຄ້າ</label>
                    <input type="text" class="form-control" required name="Pid" placeholder="ລະຫັດສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">ຮູບພາບ</label>
                    <input type="file" class="form-control" required name="fileToUpload" id="fileToUpload">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຊື່ສິນຄ້າ</label>
                    <input type="text" class="form-control" required name="name" placeholder="ຊື່ສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ລາຄາປົກກະຕິ</label>
                    <input type="number" class="form-control" required name="regular_price" placeholder="ລາຄາປົກກະຕິ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ລາຄາຂາຍ</label>
                    <input type="number" class="form-control" required name="sale_price" placeholder="ລາຄາຂາຍ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຈຳນວນ</label>
                    <input type="number" class="form-control" required name="quantity" placeholder="ຈຳນວນສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຫົວໜ່ວຍ</label>
                    <select name="unit" id="" class="form-control">
                      <option value="ໜ່ວຍ">ໜ່ວຍ</option>
                      <option value="ກັບ">ກັບ</option>
                      <option value="ຕຸກ">ຕຸກ</option>
                      <option value="ແກ້ວ">ແກ້ວ</option>
                      <option value="ປອງ">ປອງ</option>
                    </select>
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ປະເພດ</label>
                    <select name="category" id="" class="form-control">
                      <option value="ເຄື່ອງດື່ມ">ເຄື່ອງດື່ມ</option>
                      <option value="ເຄື່ອງກິນ">ເຄື່ອງກິນ</option>
                      <option value="ເຄື່ອງໃຊ້">ເຄື່ອງໃຊ້</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-danger" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" class="btn btn-info">ອັບເດດ</button>
              </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <div class="modal fade" id="modal-lg-view">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header bg-primary">
              <h4 class="modal-title">ເບິ່ງສິນຄ້າໃໝ່</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="insertproduct.php" method="POST" enctype="multipart/form-data">
              <div class="modal-body">
                <div class="row">
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">ລະຫັດສິນຄ້າ</label>
                    <input type="text" class="form-control" name="Pid" placeholder="ລະຫັດສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="exampleInputPassword1">ຮູບພາບ</label>
                    <input type="file" class="form-control" name="fileToUpload" id="fileToUpload">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຊື່ສິນຄ້າ</label>
                    <input type="text" class="form-control" required name="name" placeholder="ຊື່ສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ລາຄາປົກກະຕິ</label>
                    <input type="number" class="form-control" required name="regular_price" placeholder="ລາຄາປົກກະຕິ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ລາຄາຂາຍ</label>
                    <input type="number" class="form-control" required name="sale_price" placeholder="ລາຄາຂາຍ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຈຳນວນ</label>
                    <input type="number" class="form-control" required name="quantity" placeholder="ຈຳນວນສິນຄ້າ">
                  </div>
                  <div class="form-group ml-4">
                    <label for="">ຫົວໜ່ວຍ</label>
                    <select name="unit" id="" class="form-control">
                      <option value="ໜ່ວຍ">ໜ່ວຍ</option>
                      <option value="ກັບ">ກັບ</option>
                      <option value="ຕຸກ">ຕຸກ</option>
                      <option value="ແກ້ວ">ແກ້ວ</option>
                      <option value="ປອງ">ປອງ</option>
                    </select>
                  </div>
                  
                </div>
              </div>
              <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-danger" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" class="btn btn-primary">ບັນທຶກ</button>
              </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
    </div>
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
            window.location.href = 'deleteproduct.php?id=' + $id;
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