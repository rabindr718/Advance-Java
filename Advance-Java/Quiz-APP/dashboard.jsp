

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="1.png">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>Online Exam</title>
        <style>
            body{
                overflow-x: hidden;
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
            .profile{
                background-color: rgb(74, 162, 186);
                opacity: 0.8;
            }
            .aboutProfile{
                padding-top: 6rem;
                padding-bottom: 6rem;
            }
            .aboutProfile h3, span{
                padding-left: 1.2rem;
                font-weight: 600;
                font-family: cursive;
            }
            #profileCard{
                position: absolute;
                left: 2rem;
                top: 40%;
            }
            #prfileSummary{
                position: absolute;
                left: 32rem;
                width: 62%;
                top:0;
                height: 25.7rem;
                border: none;
            }
            #prfileSummary span{
                justify-content: space-between;
            }
            table,th,td{
                border-collapse: collapse;
                border: 2px solid black;
                padding: 8px;
            }
            .footer{
                position: absolute;
                top: 50rem;
                /*left: 1rem;*/
                width:100%;
            }

        </style>
    </head>

    <body>

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_test_info", "root", "");
//            String name1 = (String)request.getAttribute("uname");
            HttpSession session2 = request.getSession();
            String name1 = (String) session2.getAttribute("uname");

            Statement st = con.createStatement();
//            ResultSet rs = st.executeQuery("select Email,Branch,Gender from student_info where FirstName = '" + name1 + "'");
            ResultSet rs = st.executeQuery("select s.FirstName,s.Branch,s.Gender,s.Email,p.TestName,p.date,p.score from student_info s,profile p where s.Email= p.Email and s.FirstName= '" + name1 + "' ");
            String FirstName = "";
            String branch = "";
            String eml = "";
            String gender = "";
            String Test = "";
            Date date = null;
            int score = 0;
            while (rs.next()) {
                FirstName = rs.getString(1);
                branch = rs.getString(2);
                gender = rs.getString(3);
                eml = rs.getString(4);
            }

        %>
        <div class="head">
            <h2>Online Exam</h2>
            <nav class="navbar">
                <a href="home.jsp" >Home</a>
                <a href="features.jsp" class="feat">Features</a>
                <a href="test.jsp" >Test</a>
                <a href="about.jsp">AboutUs</a>
                <div class="dropdown">
                    <a class="LogUser" style="border-bottom:3px solid rgb(14, 13, 13)"><b>
                            <%  HttpSession session3 = request.getSession();
                                String name = (String) session3.getAttribute("uname");
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
        <div class="profile">
            <div class="aboutProfile">
                <h3>
                    <%
                        out.println("Hello," + FirstName);

                    %>
                </h3>
                <span>This is your profile page. You can see the progress you've attended exams

                </span>

            </div>
        </div>
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



        <div class="container-fluid mt--7" id="profileCard">
            <div class="row">
                <div class="col-xl-4">
                    <div class="card card-profile shadow">
                        <div class="row justify-content-center">
                            <div class="col-lg-6 order-lg-2">
                                <div class="card-profile-image"><br>
                                    <a href="#">
                                        <img src="https://www.bing.com/th?id=OIP.n1C1oxOvYLLyDIavrBFoNQHaHa&w=181&h=181&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"
                                             width="200px" height="200px" class="rounded-circle">
                                    </a><br>
                                </div>
                            </div>
                        </div>
                        <!--<hr class="my-1">-->
                        <div class="card-body pt-0 pt-md-4">
                            <div class="text-center">
                                <h3>
                                    <% out.println(FirstName);
                                    %>
                                    <span class="font-weight-light"></span>
                                </h3>
                                <div class="h5 font-weight-300">
                                    <i class="ni location_pin mr-2"></i> <%= eml%>
                                </div>
                                <div class="h5 mt-4">
                                    <i class="ni business_briefcase-24 mr-2">Branch: </i><%= branch%>
                                </div>
                                <div>
                                    <i class="ni education_hat mr-2">Gender: </i><%= gender%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><br><br>
            <div class="card shadow" id="prfileSummary">
                <div class="card-body">
                    <h4 class="card-title">Test Summary</h4>
                    <!--<hr>-->
                    <%
                        rs.first();
                        rs.relative(-1);
                        out.println("<table width=100% align='center'>");
                        out.println("<tr><th>Test Name</th><th>Date</th><th>Score</th></tr>");
                        while (rs.next()) {
                            FirstName = rs.getString(1);
                            branch = rs.getString(2);
                            gender = rs.getString(3);
                            eml = rs.getString(4);
                            Test = rs.getString(5);
                            date = rs.getDate(6);
                            score = rs.getInt(7);

                            out.print("<tr>");
                            out.println("<td>" + Test + "</td>");
                            out.println("<td>" + date + "</td>");
                            out.println("<td>" + score + "</td>");

                            out.print("</tr>");
                        }
                        

                    %>
                </div>
            </div>
        </div>
        <br><br>
        
    </body>

</html>
