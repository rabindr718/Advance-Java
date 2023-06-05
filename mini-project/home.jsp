<%-- 
    Document   : home
    Created on : 21 Mar, 2022, 10:55:38 AM
    Author     : HARSHIT DWIVEDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page import= 'javax.servlet.http.*' %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online MCQ Software</title>
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
            body{
                overflow-x: hidden;
            }
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
                <a href="#" style="border-bottom:3px solid rgb(14, 13, 13)">Home</a>
                <a href="features.jsp" class="feat">Features</a>
                <a href="test.jsp">Test</a>
                <a href="about.jsp">AboutUs</a>
                <div class="dropdown">
                    <a class="LogUser"><b>
                            <%
                                response.setHeader("Cache-Control", "no-cache, no-store,must-revalidate");
                                HttpSession session1 = request.getSession();
                                String name = (String) session.getAttribute("uname");
//                        String email = (String) session.getAttribute("emal");
                                out.println("Hi " + name);
//                                out.println("Hi " + email);
                            %>
                        </b></a>
                    <div class="dropdown-content">
                        <a href="dashboard.jsp">Dashboard</a>
                        <a href="LogOut">Log Out</a>
                    </div>
                </div>

            </nav>
        </div>
        <!-- <div class="blur"> -->

        <!-- </div> -->
        <div class="header">
            <img src="https://www.kindpng.com/picc/m/242-2423295_online-exam-system-call-centre-cartoon-gif-hd.png"
                 width="60%" height="500px" class="fix">
            <span class="mcq">MCQ</span>
            <h2>Your Online Testing Partner</h2>
            <span class="about">Online exam system for all your testing needs for <br> <b>assessment, recruitment,
                    selection and certifications.</b></span>
        </div><br>
        <div class="feature">
            <a href="#">Adaptive Mode</a>
            <a href="#">Coding Tests</a>
            <a href="#">Aptitude Tests</a>
            <a href="#">Seamless API Integration</a>
        </div>
        <br><br>
        <div class="types">
            <h3 align="center">Online Assessment Types</h3><br><br>
            <div class="typesin">
                <div class="viewTypes">
                    <img src="https://www.eklavvya.in/images-eklavvya/testing.png" width="100px" height="70px">
                    <span>Competative Exam Custom Test</span>
                </div>
                <div class="viewTypes">
                    <img src="https://www.eklavvya.in/images-eklavvya/web-coding-1.png" width="100px" height="70px">
                    <span>Coding Tests</span>
                </div>
                <div class="viewTypes">
                    <img src="https://www.eklavvya.in/images-eklavvya/exam-1.png" width="100px" height="70px">
                    <span>School Olympiad Tests</span>
                </div>
            </div>
        </div>
        <br><br>
        <div class="brief1">
            <div class="brief">
                <h3>An Online Examination System For Secure And Seamless Online Exams</h3><br>
                <span>A Robust Online Testing Platform For Conducting Remote Online Examinations</span>
            </div>
            <img src="https://www.eklavvya.in/images-eklavvya/we-made.png" width="200px" height="200px">
        </div>
        <br><br>
        <div class="footer">
            <div class="element"><img
                    src="https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-bird-symbols-png-logo-0.png"
                    width="50px" height="50px"><a href="#">@OnlineMCQ</a>
                <div class="element">
                    <i class="fa fa-google" aria-hidden="true" id="logoGoogle"></i> &nbsp;<a href="#">Get
                        Email Updates</a>
                </div>
            </div>
            <hr style="color: white;">
            <div class="lstfoot">
                <div class="lstfoot1"><a href="about.jsp">Copyright©2022 OnlineMCQ</a></div>
                <div class="lstfoot2"><a href="about.jsp">Privacy Policy</a></div>
                <div class="lstfoot3"><a href="about.jsp">Terms of Use</a></div>
            </div>
        </div>

    </body>

</html>
