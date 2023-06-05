<%-- 
    Document   : about
    Created on : 22 Mar, 2022, 11:47:48 PM
    Author     : HARSHIT DWIVEDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online MCQ Software</title>
    <link rel="icon" href="1.png">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

        </style>
</head>

<body>
    <div class="headAbout">
        <h2>Online MCQ</h2>
        <nav class="navbar">
            <a href="home.jsp">Home</a>
            <a href="features.jsp">Features</a>
            <a href="test.jsp">Test</a>
            <a href="about.jsp" style="border-bottom:3px solid rgb(14, 13, 13)">AboutUs</a>
            <div class="dropdown">
                    <a class="LogUser"><b>
                            <%
                                
                                HttpSession session1 = request.getSession();
                                String name = (String) session.getAttribute("uname");
                                out.println("Hi " + name);
                            %>
                        </b></a>
                    <div class="dropdown-content">
                        <a href="#">Dashboard</a>
                        <a href="LogOut">Log Out</a>
                    </div>
                </div>
        </nav>
    </div>
    <div class="header1">
        <img src="https://images.squarespace-cdn.com/content/v1/564b5826e4b04c6b569de9fe/1474055227100-J8TF0BOHH3OJR9438AJ3/about-us-background.jpg?format=1500w"
            width="100%" height="350px">
        <span>Our mission is to enable organisations to build winning teams by taking credible people decisions across
            two <br> key areas, talent acquisition, and development.</span>
    </div>
    <div class="bio">
        <div class="intro"><br>
            <span>What We Do ?</span><br><br>
            <div class="abstract">
                <p>Our research-backed assessments, efficient cloud platform, and in-depth analytics help us deliver
                    transformative results for our users. We create customized assessments across the
                    employee lifecycle, including pre-hiring screening, candidate skills assessment, training, and
                    development programs for employees/students, subject-wise exams, contests and beyond.</p>
            </div><br><br>
        </div>
        <div class="modes">
            <div class="assess">
                <img src="https://mettl.com/prelogin/resources/images/home/company/about-us/about-us-rewamp/i-05.svg?v=109.0.1"
                    width="200px" height="50px"><br>
                <span>Online Talent Assessment</span>
            </div>
            <div class="assess">
                <img src="https://mettl.com/prelogin/resources/images/home/company/about-us/about-us-rewamp/i-07.svg?v=109.0.1"
                    width="150px" height="50px"><br>
                <span>Subject Wise Exams</span>
            </div>
            <div class="assess">
                <img src="https://mettl.com/prelogin/resources/images/home/company/about-us/about-us-rewamp/i-06.svg?v=109.0.1"
                    width="150px" height="50px"><br>
                <span>Time Based Contest</span>
            </div>
        </div>
        <br><br>
        <a href="#"><button type="button" value="Explore More" href="#" id="explore">Explore Now</button></a><br><br>
    </div><br>
    <div class="about1">
        <h1>Secure Hosted Online Testing</h1>
        <br>
        <p>
        <ul>Our online testing system gives instant test results for you and your Test takers. With an easy-to-use quiz
            interface.

            Our first class hosted online testing service provides the best online testing solution which caters for all
            assessment needs and is easy-to-use with all common web browsers, operating systems and smart devices
            including: </ul> <br>
        <ul>
            <li>Windows, Macintosh, Linux, ChromeOS/Chromebook</li>
            <li>Internet Explorer, FireFox, Chrome, Safari, Opera</li>
        </ul>
        </p>
    </div><br><br>
    <div class="about2"><br>
        <h1>Affordable & Reliable</h1><br>
        <p>
            Using this system means you don't have to pay Web Developers, Designers, Network engineers or a security
            team to keep you online exams up & running. That's our job!
            <br><br>
            This system is built to be highly available using redundant load-balanced servers, failover techniques &
            multiple backups for maximum uptime & reliability.
        </p><br>
    </div><br>
    <div class="about3">
        <h1>Contact Us</h1>
        <span>
            <h4>Mailing Address</h4>
            660 Third Street <br>
            Delhi, India
            <!-- </span><br><br><span> -->
            <h4>Phone</h4>
            (011) 281-3100
        </span> <br>
    </div><br><br><br><br><br><br>
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
            <div class="lstfoot1"><a href="#">Copyright©2022 OnlineMCQ</a></div>
            <div class="lstfoot2"><a href="#">Privacy Policy</a></div>
            <div class="lstfoot3"><a href="#">Terms of Use</a></div>
        </div>
    </div>
</body>

</html>
