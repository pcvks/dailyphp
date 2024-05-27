<?php
include ("./includes/common.php");
checkLoggedIn(); // Check if the user is logged in
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ລາຍຮັບ</title>
    <link rel="icon" href="image/logo.jpg">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
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
        include ("./includes/navbar.php");
        include ("./includes/sidebar.php");
        include ("./includes/db.php");

        // Get user ID from URL parameter
        $id = $_GET["id"];

        // Retrieve user information from database
        $sql = "SELECT * FROM products WHERE id=$id";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        // Include your database connection file
        include "./includes/db.php";

        // Check if form is submitted
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $Pid = $_POST['Pid'];
            $name = $_POST['name'];
            $regular_price = $_POST['regular_price'];
            $sale_price = $_POST['sale_price'];
            $quantity = $_POST['quantity'];
            $unit = $_POST['unit'];
            $category = $_POST['category'];

            // Check if an image is uploaded
            if (!empty($_FILES["fileToUpload"]["name"])) {
                $targetDirectory = "products/";
                $targetFile = $targetDirectory . basename($_FILES["fileToUpload"]["name"]);
                $uploadOk = 1;
                $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

                // ... (same validation checks as before) ...
        
                // Check if $uploadOk is set to 0 by an error
                if ($uploadOk == 0) {
                    echo "Sorry, your file was not uploaded.";
                } else {
                    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $targetFile)) {
                        $filePath = $targetFile; // File path relative to your server
                    } else {
                        echo "Sorry, there was an error uploading your file.";
                    }
                }
            } else {
                // If no new image uploaded, keep the existing image path
                $filePath = $_POST['current_image'];
            }

            // Update the database record
            $sql = "UPDATE products SET image='$filePath', name='$name', regular_price='$regular_price', sale_price='$sale_price', quantity='$quantity', unit='$unit', category='$category' WHERE Pid='$Pid'";

            if ($conn->query($sql) === TRUE) {
                header("Location: totalproducts.php?success=true");
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
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
                            <h1 class="text-center">ແກ້ໄຂລາຍຮັບ</h1>
                            <div class="card card-info">
                                <div class="card-header">
                                    <h3 class="card-title">ແກ້ໄຂຂໍ້ມູນລາຍຮັບ</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form method="POST" action="">
                                    <div class="card-body">
                                        <div class="mb-3">
                                            <div class="row">
                                                <div class="form-group ml-4">
                                                    <label for="exampleInputPassword1">ລະຫັດສິນຄ້າ</label>
                                                    <input type="text" class="form-control" required name="Pid" value="<?php echo $row['Pid']?>"
                                                        placeholder="ລະຫັດສິນຄ້າ">
                                                </div>
                                                <div class="form-group ml-4">
                                                    <label for="exampleInputPassword1">ຮູບພາບ</label>
                                                    <input type="file" class="form-control" required name="fileToUpload"  value="<?php echo $row['fileToUpload']?>"
                                                        id="fileToUpload">
                                                </div>
                                                <div class="form-group ml-4">
                                                    <label for="">ຊື່ສິນຄ້າ</label>
                                                    <input type="text" class="form-control" required name="name" value="<?php echo $row['name']?>"
                                                        placeholder="ຊື່ສິນຄ້າ">
                                                </div>
                                                <div class="form-group ml-4">
                                                    <label for="">ລາຄາປົກກະຕິ</label>
                                                    <input type="number" class="form-control" required value="<?php echo $row['regular_price']?>"
                                                        name="regular_price" placeholder="ລາຄາປົກກະຕິ">
                                                </div>
                                                <div class="form-group ml-4">
                                                    <label for="">ລາຄາຂາຍ</label>
                                                    <input type="number" class="form-control" required name="sale_price" value="<?php echo $row['sale_price']?>"
                                                        placeholder="ລາຄາຂາຍ">
                                                </div>
                                                <div class="form-group ml-4">
                                                    <label for="">ຈຳນວນ</label>
                                                    <input type="number" class="form-control" required name="quantity" value="<?php echo $row['quantity']?>"
                                                        placeholder="ຈຳນວນສິນຄ້າ">
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
        include ("./includes/footer.php");
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