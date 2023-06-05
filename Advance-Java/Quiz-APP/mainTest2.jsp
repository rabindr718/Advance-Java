

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
                margin-left: 48%;
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
        </div><br>
        <div class="mytimer"> 
            <h5>Time Left: <span id="timer">15:00</span>minutes
            </h5>
        </div>
        <br><br>
        <div class="examform">
            <form action="viewResult" method="post">
                <ol>
                    <div class="codeone">
                        <li>
                            A man is 24 years older than his son. In two years, his age will be twice the age of his son. The present age of his son is:
                        </li>
                    </div><br>
                    <div class="one">
                        <input type="radio" name="one" id="one" value="16">14 <br>
                        <input type="radio" name="one" id="two" value="10">18 <br>
                        <input type="radio" name="one" id="three" value="Error">20 <br>
                        <input type="radio" name="one" id="four" value="22">22 <br>
                    </div>
                    <br>
                    <div class="codeone">
                        <li>
                            Present ages of Sameer and Anand are in the ratio of 5 : 4 respectively. Three years hence, the ratio of their ages will become 11 : 9 respectively. <br>
                            What is Anand's present age in years?
                        </li> <br> 
                    </div>
                    <div class="one">
                        <input type="radio" name="two" id="one" value="0">24 <br>
                        <input type="radio" name="two" id="two" value="2018">27 <br>
                        <input type="radio" name="two" id="three" value="Error">20 <br>
                        <input type="radio" name="two" id="four" value="None">None of the Above <br>
                        <br>
                    </div>
                    <div class="codeone">
                        <li>
                            A boat running upstream takes 8 hours 48 minutes to cover a certain distance, while it takes 4 hours to cover the same distance running downstream.<br>
                            What is the ratio between the speed of the boat and speed of the water current respectively?
                        </li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="three" id="one" value="StackOverflowException">1:2 <br>
                        <input type="radio" name="three" id="two" value="ab">3:2 <br>
                        <input type="radio" name="three" id="three" value="ba">8:3 <br>
                        <input type="radio" name="three" id="four" value="none">None of the Above <br>
                        <br>
                    </div>
                    <div class="codeone">
                        <li>Two trains are moving in opposite directions @ 60 km/hr and 90 km/hr. Their lengths are 1.10 km and 0.9 km respectively. The time taken by the slower <br>
                            train to cross the faster train in seconds is: </li> <br> 
                    </div>
                    <div class="one">
                        <input type="radio" name="four" id="one" value="aa">36 <br>
                        <input type="radio" name="four" id="two" value="ab">42 <br>
                        <input type="radio" name="four" id="three" value="ba">45<br>
                        <input type="radio" name="four" id="four" value="bb">48<br> <br>
                    </div>
                    <div class="codeone">
                        <li>
                            A 270 metres long train running at the speed of 120 kmph crosses another train running in opposite direction at the speed of 80 kmph in 9 seconds. <br>
                            What is the length of the other train?
                        </li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="five" id="one" value="xy">230 <br>
                        <input type="radio" name="five" id="two" value="Garbage">240 <br>
                        <input type="radio" name="five" id="three" value="0">320<br>
                        <input type="radio" name="five" id="four" value="ab">260 <br>
                        <br>
                    </div>
                    <div class="codeone">
                        <li>	
                            The least number which should be added to 2497 so that the sum is exactly divisible by 5, 6, 4 and 3 is:</li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="six" id="one" value="1">3 <br>
                        <input type="radio" name="six" id="two" value="0">13<br>
                        <input type="radio" name="six" id="three" value="-1">23<br>
                        <input type="radio" name="six" id="four" value="none">None <br> <br>
                    </div>
                    <div class="codeone">
                        <li>What was the day of the week on 17th June, 1998? </li>
                        <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="seven" id="one" value="1">Monday <br>
                        <input type="radio" name="seven" id="two" value="0">Tuesday<br>
                        <input type="radio" name="seven" id="three" value="-2">Wednesday<br>
                        <input type="radio" name="seven" id="four" value="none">Thursday <br> <br>
                    </div>
                    <div class="codeone">
                        <li>	
                            A man buys Rs. 20 shares paying 9% dividend. The man wants to have an interest of 12% on his money.<br>
                            The market value of each share is: </li><br>
                    </div>
                    <div class="one">
                        <input type="radio" name="eight" id="one" value="0">12<br>
                        <input type="radio" name="eight" id="two"value="1">15<br>
                        <input type="radio" name="eight" id="three" value="2">18<br>
                        <input type="radio" name="eight" id="four" value="3">21 <br> <br>
                    </div>
                    <div class="codeone">
                        <li>Amit and Ananthu can do a work in 15 days and 25 days respectively. Amit started the work and left after 3 days. Ananthu took over and completed the work.<br>
                            In how many days was the total work completed? </li>   <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="nine" id="one" value="00">28 days<br>
                        <input type="radio" name="nine" id="two" value="1" >20 days<br>
                        <input type="radio" name="nine" id="three" value="2">23 days<br>
                        <input type="radio" name="nine" id="four" value="3">25 days<br> <br>
                    </div>
                    <div class="codeone">
                        <li> An escalator moves towards the top level at the rate of 11 ft.sec and its length is 140 feet. If a person walks on the moving escalator at the rate <br>
                            of 3 feet per second towards the top level, how much time does he take to cover the entire length ? </li> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="ten" id="one" value="Y">13<br>
                        <input type="radio" name="ten" id="two" value="N">10<br>
                        <input type="radio" name="ten" id="one" value="YN">7<br>
                        <input type="radio" name="ten" id="two" value="NY">15<br><br>
                    </div>
                </ol>
                <hr>
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
    $('document').ready(function(){
        var count =0;
    $('#submitAnswers').click(function(){
    count = $(':radio[name=one]:checked, :radio[name=two]:checked, :radio[name=three]:checked, :radio[name=four]:checked, :radio[name=five]:checked, :radio[name=six]:checked,\n\
     :radio[name=seven]:checked, :radio[name=eight]:checked, :radio[name=nine]:checked, :radio[name=ten]:checked').length;
        answer.innerHTML = count;
        unanswer.innerHTML = 10-count;
    })
    })

        </script>
    </body>
</html>

