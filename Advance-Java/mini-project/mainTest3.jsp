<%-- 
    Document   : mainTest3
    Created on : 28 Mar, 2022, 9:46:54 AM
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
            .mytimer{
                float: right;
                margin-right: 1rem;
            }
            .examform li {
                font-weight: 600;
                font-family: Georgia, 'Times New Roman', Times, serif;
            }

            .examform {
                margin-left: 4rem;
                display: flex;
            }

            .codeone .one {
                justify-content: space-around;
            }

            #submitAnswers {
                margin-left: 61%;
                background-color: rgb(17, 85, 17);
                color: white;
                cursor: pointer;
                border: none;
                padding: 9px;
                border-radius: 10px;
            }

            hr {
                width: 400%;

            }

            #checkit {
                margin-left: 1.5rem;
            }

        </style>

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
        </div><br>
        <div class="mytimer"> 
            <h5>Time Left: <span id="timer">15:00</span>minutes
            </h5>
        </div>
        <br><br>
        <div class="examform">
            <form action="testSolution" method="post">
                <ol>
                    <div class="codeone">
                        <li>
                            Which operator performs pattern matching ?
                        </li>
                    </div><br>
                    <div class="one">
                        <input type="radio" name="one" id="one" value="16">BETWEEN operator <br>
                        <input type="radio" name="one" id="two" value="10">LIKE operator <br>
                        <input type="radio" name="one" id="three" value="Error">EXISTS Operator <br>
                        <input type="radio" name="one" id="four" value="22">none of these <br>
                    </div>
                    <br>
                    <div class="codeone">
                        <li>
                            In SQL, which command(s) is(are) used to change a table storage characteristics ?
                        </li> <br> 
                    </div>
                    <div class="one">
                        <input type="radio" name="two" id="one" value="0">ALTER table <br>
                        <input type="radio" name="two" id="two" value="2018">MODIFY table <br>
                        <input type="radio" name="two" id="three" value="Error">CHANGE table <br>
                        <input type="radio" name="two" id="four" value="None">None of the Above <br>
                        <br>
                    </div>
                    <div class="codeone">
                        <li>
                            You want to implement a mechanism that automates the IP configuration, including IP address,subnet mask, default gateway, <br>
                            and  DNS information. Which protocol will you use to accomplish this ?
                        </li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="three" id="one" value="StackOverflowException">SMTP <br>
                        <input type="radio" name="three" id="two" value="ab">SNMP <br>
                        <input type="radio" name="three" id="three" value="ba">DHCP <br>
                        <input type="radio" name="three" id="four" value="none">ARP <br>
                        <br>
                    </div>
                    <div class="codeone">
                        <li> What layer in the TCP/IP stack is equivalent to the transport layer of the OSI model ? </li> <br> 
                    </div>
                    <div class="one">
                        <input type="radio" name="four" id="one" value="aa">Application <br>
                        <input type="radio" name="four" id="two" value="ab">Internet <br>
                        <input type="radio" name="four" id="three" value="ba">Network Access<br>
                        <input type="radio" name="four" id="four" value="bb">Host-to-Host<br> <br>
                    </div>
                    <div class="codeone">
                        <li>
                            How many copies of a JSP page can be in memory at a time ?
                        </li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="five" id="one" value="xy">One <br>
                        <input type="radio" name="five" id="two" value="Garbage">Two <br>
                        <input type="radio" name="five" id="three" value="0">Three<br>
                        <input type="radio" name="five" id="four" value="ab">Unlimited <br>
                        <br>
                    </div>
                    <div class="codeone">
                        <li>	
                            What MySQL property is uded to create a surrogate key in MySQL ?</li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="six" id="one" value="1">UNIQUE <br>
                        <input type="radio" name="six" id="two" value="0">SEQUENCE<br>
                        <input type="radio" name="six" id="three" value="-1">AUTO_INCREMENT<br>
                        <input type="radio" name="six" id="four" value="none">NONE of the above-- Surrogate keys are not implemented in MySQL <br> <br>
                    </div>
                    <div class="codeone">
                        <li>Which function among the following lets to register a function to be invoked repeatedly after a certain time ?</li>
                        <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="seven" id="one" value="1">setTimeOut() <br>
                        <input type="radio" name="seven" id="two" value="0">setTotaltime()<br>
                        <input type="radio" name="seven" id="three" value="-2">setInterval()<br>
                        <input type="radio" name="seven" id="four" value="none">None of the mentioned <br> <br>
                    </div>
                    <div class="codeone">
                        <li>	
                            What is the special feature of the modern web applications ? </li><br>
                    </div>
                    <div class="one">
                        <input type="radio" name="eight" id="one" value="00">Can alter contents without loading document<br>
                        <input type="radio" name="eight" id="two"value="1">Must load the document to manipulate<br>
                        <input type="radio" name="eight" id="three" value="2">Both<br>
                        <input type="radio" name="eight" id="four" value="3">None <br> <br>
                    </div>
                    <div class="codeone">
                        <li>What is the property of a Window object that holds the name of the frame ? </li>   <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="nine" id="one" value="00">title<br>
                        <input type="radio" name="nine" id="two" value="1" >name<br>
                        <input type="radio" name="nine" id="three" value="2">description<br>
                        <input type="radio" name="nine" id="four" value="3">none of these<br> <br>
                    </div>
                    <div class="codeone">
                        <li> In java a thread can be created by _________ .</li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="ten" id="one" value="Y">Extending the thread class<br>
                        <input type="radio" name="ten" id="two" value="N">Implementing Runnable interface<br>
                        <input type="radio" name="ten" id="one" value="YN">Both of the above<br>
                        <input type="radio" name="ten" id="two" value="NY">None<br><br>
                    </div>
                </ol>
                <hr id="line">
                <input type="submit" value="Submit and Finish" id="submitAnswers" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-body" id="summary">
                                <span class="badge rounded-pill bg-dark" >10</span> <span style="font-weight:800">Total</span> &nbsp; &nbsp; 
                                <span class="badge rounded-pill bg-success" id="answer"></span> <span style="font-weight:800">Answered</span> <br><br>
                                <span class="badge rounded-pill bg-danger" id="unanswer"></span> <span style="font-weight:800">Unanswered</span> <br><br>
                                <br>
                                <input type="checkbox" id="checkit" name="checkit" required> Do you want to finish the exam ? <br><br>
                                <div class="modal-footer">
                                    <br><br>
                                    <input type="button" onclick="reset()" class="btn btn-secondary"
                                           data-bs-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Submit">
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <br> <br>
            </form>
        </div>

        <script>
            function startTimer(duration, display) {
                var mytimer = duration, minutes, seconds;
                setInterval(function () {
                    minutes = parseInt(mytimer / 60, 10);
                    seconds = parseInt(mytimer % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;

                    display.textContent = minutes + ":" + seconds;
                    if (minutes == 0 && seconds == 0) {
                        window.location.href = "testOne.jsp";
                    }
                    if (--mytimer < 0) {
                        mytimer = duration;
                    }
                }, 1000);
//                
            }

            window.onload = function () {
                var thirtyMinutes = 60 * 15,
                        display = document.querySelector('#timer');
                startTimer(thirtyMinutes, display);

            };
            var answer = document.getElementById('answer');
            var unanswer = document.getElementById('unanswer');
            $('document').ready(function () {
                var count = 0;
                $('#submitAnswers').click(function () {
                    count = $(':radio[name=one]:checked, :radio[name=two]:checked, :radio[name=three]:checked, :radio[name=four]:checked, :radio[name=five]:checked, :radio[name=six]:checked,\n\
     :radio[name=seven]:checked, :radio[name=eight]:checked, :radio[name=nine]:checked, :radio[name=ten]:checked').length;
                    answer.innerHTML = count;
                    unanswer.innerHTML = 10 - count;
                })
            })

        </script>
    </body>
</html>


