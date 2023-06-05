<%-- 
    Document   : resultPage
    Created on : 27 Mar, 2022, 2:26:43 AM
    Author     : HARSHIT DWIVEDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online MCQ Software</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="icon" href="1.png">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .LogUser{
                margin-top: 0rem;
                margin-right: 2rem;
                cursor: pointer;
            }
            .head nav{
                position: absolute;
                right: 2rem;
                top:-0.3rem;                
            }
            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 16px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                border-radius: 10px; 

            }

            .dropdown-content a {
                color: black;
                padding: 12px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #f1f1f1;
                                       padding: 12px;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }
            .result{
                text-align: center;
            }
            .result h2,h3{
                font-family: Georgia, 'Times New Roman', Times, serif;
            }
            .result h3{
                color: MediumSeaGreen;
            }
            .showResult{
                padding: 9px;
                cursor: pointer;
                color: white;
                background-color: black;
                border: none;
                border-radius: 10px;
            }
        </style>
        <script type="text/javascript">
            window.history.forward();
            function noBack() {
                window.history.forward();
            }
        </script>
    </head>
    <body>
        <div class="head">
            <h2>Online MCQ</h2>
            <nav class="navbar">
                <a href="home.jsp" >Home</a>
                <a href="features.jsp" class="feat">Features</a>
                <a href="#" style="border-bottom:3px solid rgb(14, 13, 13)">Test</a>
                <a href="about.jsp">AboutUs</a>
                <div class="dropdown">
                    <a class="LogUser"><b>
                            <%
                                HttpSession session1 = request.getSession();
                                String name = (String) session.getAttribute("uname");
                                out.println("Hi " + name);
                            %>
                        </b></a>
                    <div class="dropdown-content">
                        <a href="dashboard.jsp">Dashboard</a>
                        <a href="LogOut">Log Out</a>
                    </div>
                </div>
            </nav>
        </div><br><br>
        <div class="result">
            <h2>Thank you for giving us time and consideration.</h2>
            <br>
            <br>
            <button type="submit" class="showResult" onclick="viewResult()">View Result</button> <br><br>
            <h3 style="display: none" id="resview">${message}</h3>
        </div>

        <script>
            $(document).ready(function () {
                $(".showResult").click(function () {
                    $("#resview").css("display", "block");
                })
            })


        </script>
    </body>
</html>
