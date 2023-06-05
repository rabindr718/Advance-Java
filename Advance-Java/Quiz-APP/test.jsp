

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online Exam</title>
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
            #card1 {
                /*                position: absolute;
                                top: 13rem;
                                left: 5rem;*/
                box-shadow: 3px 3px 10px #929292;
                border-radius: 10px;
                border: none;

            }

            #card1:hover {
                box-shadow: none;
                transition: box-shadow 0.6s ease-in-out;
            }
            #card2 {
                /*                position: absolute;
                                top: 13rem;*/
                box-shadow: 3px 3px 10px #929292;
                border-radius: 10px;
                border: none;

            }
            #card3 {
                /*                position: absolute;
                                top: 13rem;*/
                box-shadow: 3px 3px 10px #929292;
                border-radius: 10px;
                border: none;
            }

            #card2:hover {
                box-shadow: none;
                transition: box-shadow 0.6s ease-in-out;
            }
            #card3:hover {
                box-shadow: none;
                transition: box-shadow 0.6s ease-in-out;
            }

            .ent {
                background-color: white;
                color: black;
                border: 1px solid #0a1c44;
            }

            .ent:hover {
                background-color: rgb(17, 15, 15);
                color: rgb(248, 244, 244);
            }
            .connn{
                justify-content: space-around;
                display: flex;
                margin-top: -1.5rem;
            }

        </style>
    </head>
    <body>
        <div class="head">
            <h2>Online Exam</h2>
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
        </div>
        <div class="con">
            <img id="upp" src="https://s3-ap-southeast-1.amazonaws.com/codestudio.codingninjas.com/codestudio/assets/images/test-series-intro-bg.svg" width="100%" height="500px">
            <img id="downn" src="https://files.codingninjas.in/mock-test-series-12169.png" width="450px" height="370px">
            <div class="conn">
                <h2>Test Series</h2>
                <span>
                    Participate in contests,designed to simulate the coding rounds, technicals questions, and basic
                    aptitudes
                </span>
            </div>
        </div>

       
        <div class="connn" >        
            <div class="card" style="width: 18rem;" id="card1">
                <img src="test.svg" style="background-color: #301936" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title" style="color: #0a1c44"> Coding Mock Test</h5>

                    <p class="card-text">
                        <span>
                            <img id="upp" src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FQuestions-1631603168.png&w=32&q=75">10 Questions
                        </span>
                        &nbsp;
                        <span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FMarks-1631603198.png&w=32&q=75"> 10 marks
                        </span>
                        &nbsp;
                        <span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FTime-1631603138.png&w=32&q=75"> 15 minutes
                        </span>
                    </p>
                    <a href="testOne.jsp" class="btn ent">Enter Now</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;" id="card2">
                <img src="test.svg" style="background-color: #301936" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title" style="color: #0a1c44">Aptitude Mock Test</h5>
                    <p class="card-text">
                        <span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FQuestions-1631603168.png&w=32&q=75">10 Questions
                        </span>
                        &nbsp;
                        <span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FMarks-1631603198.png&w=32&q=75"> 10 marks
                        </span>
                        &nbsp;
                        <span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FTime-1631603138.png&w=32&q=75"> 15 minutes
                        </span>
                    </p>
                    <a href="testTwo.jsp" class="btn ent">Enter Now</a>
                </div>
            </div>
            <div class="card" style="width: 18rem;" id="card3">
                <img src="test.svg" style="background-color: #301936" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title" style="color: #0a1c44">Technical MCQ</h5>
                    <p class="card-text"><span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FQuestions-1631603168.png&w=32&q=75">10 Questions
                        </span>
                        &nbsp;
                        <span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FMarks-1631603198.png&w=32&q=75"> 20 marks
                        </span>
                        &nbsp;
                        <span>
                            <img src="https://practice.geeksforgeeks.org/_next/image?url=https%3A%2F%2Fmedia.geeksforgeeks.org%2Fimg-practice%2FTime-1631603138.png&w=32&q=75"> 30 minutes
                        </span></p>
                    <a href="testThree.jsp" class="btn ent">Enter Now</a>
                </div>
            </div>
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
                <div class="lstfoot1"><a href="#">Copyright©2022 OnlineMCQ</a></div>
                <div class="lstfoot2"><a href="about.html">Privacy Policy</a></div>
                <div class="lstfoot3"><a href="#">Terms of Use</a></div>
            </div>
        </div>
    </body>
</html>
