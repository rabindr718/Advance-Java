<%-- 
    Document   : features
    Created on : 22 Mar, 2022, 11:46:08 PM
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
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
        <%
           response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        %>
        <div class="head">
            <h2>Online MCQ</h2>
            <nav class="navbar">
                <a href="home.jsp">Home</a>
                <a href="features.jsp" style="border-bottom:3px solid rgb(14, 13, 13)">Features</a>
                <a href="test.jsp">Test</a>
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
                        <a href="#">Dashboard</a>
                        <a href="LogOut">Log Out</a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="featture">
            <h3>Conduct Online Exams On Our Platform With Ease At An Unmatched Scale</h3>
            <span>Use Our Robust Exam Software With Integrated Tools And Industry-leading Features</span>
        </div> <br><br>
        <div class="featureItem">
            <div class="feature1">
                <img src="https://mettl.com/prelogin/resources/images/pages/examsoftware/Cheating-Free-Exams.svg?v=109.0.1">
                <h2>Candidate Authentication</h2>
                <span>Multi-factor authentication technology <br> to eliminate the risk of student impersonation.</span>
            </div>
            <div class="feature2">
                <img
                    src="https://mettl.com/prelogin/resources/images/pages/examsoftware/End-to-end-exam-management.svg?v=109.0.1">
                <h2>End to End Exam Management</h2>
                <span>All in one platform to conduct, invigilate and <br> evaluate exams</span>
            </div>
            <div class="feature3">
                <img
                    src="https://mettl.com/prelogin/resources/images/pages/examsoftware/Wide-variety-of-exams-possible.svg?v=109.0.1">
                <h2>A Wide Variety of Exam Possible </h2>
                <span>12+ question types including fill in the blanks</span>
            </div>
        </div><br>
        <br>
        <div class="hidePattern" style="display: none;">
            <h4>We support the Following Question Types and many more</h4><br>
            <img src="https://mettl.com/prelogin/resources/images/pages/onlineExamSoftware/ques-types/Multiple-choice.svg?v=109.0.1"
                 alt="">
            Multiple Choice Questions
            <img src="https://mettl.com/prelogin/resources/images/pages/onlineExamSoftware/ques-types/Coding.svg?v=109.0.1"
                 alt="">
            Coding Questions
            <img src="https://mettl.com/prelogin/resources/images/pages/onlineExamSoftware/ques-types/Case-study.svg?v=109.0.1"
                 alt="">
            Case-study Question <br><br><br>
            <img src="https://mettl.com/prelogin/resources/images/pages/onlineExamSoftware/ques-types/Fill-in-the-blanks.svg?v=109.0.1"
                 alt="">
            Fill in the Blank Questions
            <img src="https://mettl.com/prelogin/resources/images/pages/onlineExamSoftware/ques-types/Diagram-type.svg?v=109.0.1"
                 alt="">
            Diagram Type Question
        </div>
        <br>
        <div class="footer12">
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
        <script>
            $(document).ready(function () {
                $(".feature3").click(function () {
                    $(".hidePattern").slideToggle(300);
                })
            })
        </script>
    </body>

</html>
