<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title> E-COMMERCE WEBSITE </title>

    <style>
        .card {
            box-shadow: 5px 3px 8px 3px #888888;
        }

        .error {
            color: red;
        }

        /* .container{
            height: 75px;
        } */
    </style>
</head>

<body>
    <?php
    $name = $eml = $pswd = $cpswd = '';
    $nameErr = $emlErr = $perr = $cpswdErr = '';
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (empty($_POST["fname"])) {
            $nameErr = "Name is required";
        } else {
            $name = test($_POST["fname"]);
            if (!preg_match("/^[a-zA-Z-' ]*$/", $name))
                $nameErr = "Only letters and white spaces allowed";
        }
        if (empty($_POST["eml"])) {
            $emlErr = "Email is required";
        } else {
            $eml = test($_POST["eml"]);
            if (!filter_var($eml, FILTER_VALIDATE_EMAIL))
                $emlErr = "Invalid Email id";
        }
        if (empty($_POST["pswd"]))
            $perr = "Password is required";
        else {
            $pswd = test($_POST["pswd"]);
            // if (!preg_match("/^[(a-zA-Z0-9-'){8}]$/", $pswd))
            //     $perr = "Only letters are allowed";
        }
        if (empty($_POST["cpswd"]))
            $cpswdErr = "Enter Password Once again";
        else {
            $cpswd = test($_POST["cpswd"]);
        }
    }
    function test($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    ?>
    <section class="vh-100" style="background-color: #eee;">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-11 col-xl-21">
                    <div class="card text-black" style="border-radius: 25px;">
                        <!-- <div class="card-body p-md-5"> -->
                        <div class="row justify-content-center">
                            <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                <form class="mx-1 mx-md-4" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">

                                    <div class="d-flex flex-row align-items-center mb-4">
                                        <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                        <div class="form-outline flex-fill mb-0">
                                            <label class="form-label" for="form3Example1c">Your Name</label>
                                            <input type="text" id="form3Example1c" class="form-control" name="fname" /><span class="error"><?php echo $nameErr; ?></span>
                                        </div>
                                    </div>

                                    <div class="d-flex flex-row align-items-center mb-4">
                                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                        <div class="form-outline flex-fill mb-0">
                                            <label class="form-label" for="form3Example3c">Your Email</label>
                                            <input type="email" id="form3Example3c" class="form-control" name="eml" /><span class="error"><?php echo $emlErr; ?></span>
                                        </div>
                                    </div>

                                    <div class="d-flex flex-row align-items-center mb-4">
                                        <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                        <div class="form-outline flex-fill mb-0">
                                            <label class="form-label" for="form3Example4c">Password</label>
                                            <input type="password" id="form3Example4c" class="form-control" name="pswd" /><span class="error"><?php echo $perr; ?></span>
                                        </div>
                                    </div>

                                    <div class="d-flex flex-row align-items-center mb-4">
                                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                        <div class="form-outline flex-fill mb-0">
                                            <label class="form-label" for="form3Example4cd">Repeat your
                                                password</label>
                                            <input type="password" id="form3Example4cd" class="form-control" name="cpswd" /> <span class="error"><?php echo $cpswdErr; ?></span>
                                        </div>
                                    </div>

                                    <div class="form-check d-flex justify-content-center mb-5">
                                        <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" required />
                                        <label class="form-check-label" for="form2Example3">
                                            I agree all statements in <a href="#!">Terms of service</a>
                                        </label>
                                    </div>

                                    <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-2">
                                        <input type="submit" class="btn btn-primary btn-lg" value="Register" />
                                    </div>
                                    <p class="text-center text-muted mt-3 mb-0">Have already an account? <a href="Login.php" class="fw-bold text-body"><u>Login here</u></a></p><br>

                                </form>

                            </div>
                            <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                <img src="https://www.kindpng.com/picc/m/732-7329685_e-commerce-website-background-image-e-commerce-website.png" class="img-fluid" alt="Sample image">

                            </div>
                        </div>
                        <!-- </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $db = 'ecommerce';

    $con = mysqli_connect($server, $username, $password, $db);
    if (!$con) {
        echo mysqli_connect_error();
    }
    // $sql = 'Create Database ecommerce';
    // $sql = 'Create table user (name varchar(20),email varchar(20), password varchar(20), cpassword varchar(20))';
    $sql = "Insert into user(name,email,password,cpassword) values ('$name','$eml','$pswd','$cpswd')";
    if (mysqli_query($con, $sql))
        echo "Record Inserted";
    else
        echo mysqli_connect_error();
    ?>
</body>

</html>