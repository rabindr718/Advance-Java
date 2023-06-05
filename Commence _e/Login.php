<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> E-COMMERCE WEBSITE </title>

    <style>
        .card {
            box-shadow: 5px 3px 8px 3px #888888;
        }

        .err {
            color: red;
        }

        /* .container{
            height: 75px;
        } */
    </style>
</head>

<body>
    <?php
    $eml = $pswd = '';
    $emlErr = $perr = '';
    if ($_SERVER["REQUEST_METHOD"] == 'POST') {
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
    }
    function test($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    ?>
    <?php
    $server = 'localhost';
    $username = 'root';
    $password = '';
    $db = 'ecommerce';
    $con = mysqli_connect($server, $username, $password, $db);
    if (!$con) {
        die("Connection failed" . mysqli_connect_error());
    }
    if ($_SERVER["REQUEST_METHOD"] == 'POST') {
        $username = $_POST["eml"];
        $password = $_POST["pswd"];
        $username = stripcslashes($username);
        $password = stripcslashes($password);
        $username = mysqli_real_escape_string($con, $username);
        $password = mysqli_real_escape_string($con, $password);

        $sql = "select * from user where email = '$username' and password = '$password'";
        $result = mysqli_query($con, $sql);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
        $count = mysqli_num_rows($result);

        if ($count == 1) {
            echo "<h1><center> Login successful </center></h1>";
        } else {
            echo "<h1> Login failed. Invalid username or password.</h1>";
        }
    }
    ?>
    <section class="vh-100" style="background-color: #eee;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-2-strong" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                                <h3 class="mb-5">Sign in</h3>
                                <div class="form-outline flex-fill mb-2">
                                    <!-- <label class="form-label" for="form3Example1c">Your Name</label> -->
                                    <input type="text" name="eml" id="form3Example1c" class="form-control" placeholder="Email" /><span class="err"><?php echo $emlErr ?></span>
                                </div>
                                <br>

                                <div class="form-outline mb-3">
                                    <!-- <label class="form-label" for="typePasswordX-2">Password</label> -->
                                    <input type="password" id="typePasswordX-2" name="pswd" placeholder="Password" class="form-control form-control-lg" /><span class="err"><?php echo $perr ?></span>
                                </div>

                                <!-- Checkbox -->
                                <div class="form-check d-flex justify-content-start mb-4">
                                    <input class="form-check-input" type="checkbox" value="" id="form1Example3" />
                                    <label class="form-check-label" for="form1Example3"> Remember password </label>
                                </div>

                                <input value="Login" class="btn btn-primary btn-lg btn-block" type="submit" />

                                <hr class="my-4">

                                <button class="btn btn-lg btn-block btn-primary" style="background-color: #dd4b39;" type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button> <br><br>
                                <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;" type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</body>

</html>