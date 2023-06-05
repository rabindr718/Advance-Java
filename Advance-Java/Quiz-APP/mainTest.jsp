
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online Exam </title>
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
                margin-left: 180%;
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
            /*            #summary{
                            margin-left: 2rem;
                        }*/
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
            <form action="showResult" method="post" id="form">
                <ol>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li>
                        <code>
                            class Book{ <br>
                            final int price = 10;<br>
                            }
                            <br>
                            public class MCQs { <br>
                            public static void main(String[] args) { <br>
                            Book b = new Book();<br>
                            b.price = 16; <br>
                            System.out.println(b.price); <br>
                            }   <br>
                            }   
                        </code>
                    </div>
                    <div class="one">
                        <input type="radio" name="one" id="one" value="16">16 <br>
                        <input type="radio" name="one" id="two" value="10">10 <br>
                        <input type="radio" name="one" id="three" value="Error">Error <br>
                        <input type="radio" name="one" id="four" value="None">None of the Above <br>
                    </div>
                    <br><br>
                    <div class="codeone">

                        <li>What will be the output of this code ?</li>
                        <br>
                        <code>
                            class Car{ <br>
                            static int year; <br>
                            String company_name; <br>
                            } <br>
                            class new_Car { <br>
                            public static void main (String[] args) { <br>
                            Car c=new Car();         <br>
                            Car.year=2018;              <br>
                            c.company_name="KIA"; <br>
                            Car d=new Car(); <br>
                            System.out.print(d.year); <br>
                            } <br>
                            } 
                        </code> <br> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="two" id="one" value="0">0 <br>
                        <input type="radio" name="two" id="two" value="2018">2018 <br>
                        <input type="radio" name="two" id="three" value="Error">Error <br>
                        <input type="radio" name="two" id="four" value="None">None of the Above <br>
                        <br><br>
                    </div>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li>
                        <code><br>
                            Class Recursion{ <br>
                            public static void print(int n){ <br>
                            if(n < 0){ <br>
                            return; <br>
                            } <br>
                            System.out.print(n+" "); <br>
                            print(n - 2); <br>
                            }
                            <br>
                            public static void main(String[] args) { <br>
                            int num = 5; <br>
                            print(num); <br>
                            } <br>
                            }</code> <br> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="three" id="one" value="StackOverflowException">StackOverflowException <br>
                        <input type="radio" name="three" id="two" value="ab">5 4 3 2 1 <br>
                        <input type="radio" name="three" id="three" value="ba">5 3 1 <br>
                        <input type="radio" name="three" id="four" value="none">None of the Above <br>
                        <br><br>
                    </div>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li> <br>
                        <code>
                            public static void print(int n){ <br>
                            if(n < 0){ <br>
                            return;<br>
                            }<br>
                            if(n == 0){<br>
                            System.out.println(n);<br>
                            return;<br>
                            }<br>
                            print(n--);<br>
                            System.out.print(n+" ");<br>
                            }<br>

                            public static void main(String[] args) {<br>
                            int num = 3; <br>
                            print(num); <br>
                            }
                        </code> <br> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="four" id="one" value="aa">StackOverflowException <br>
                        <input type="radio" name="four" id="two" value="ab">3 2 1 <br>
                        <input type="radio" name="four" id="three" value="ba">3 3 3<br>
                        <input type="radio" name="four" id="four" value="bb">0 1 2 3 <br> <br><br>
                    </div>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li> <br>
                        <code>
                            char chArray[] = new char[15]; <br>
                            System.out.println(chArray[15]); <br>
                        </code> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="five" id="one" value="StackOverflowException">StackOverflowException <br>
                        <input type="radio" name="five" id="two" value="Garbage">Garbage Value <br>
                        <input type="radio" name="five" id="three" value="0">0<br>
                        <input type="radio" name="five" id="four" value="ab">ArrayIndexOutOfBoundsException <br>
                        <br><br>
                    </div>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li> <br>
                        <code>
                            String a ="abcd";   <br>
                            String b="abcda"; <br>
                            System.out.println(a.compareTo(b)); <br>
                        </code> <br><br>
                    </div>
                    <div class="one">
                        <input type="radio" name="six" id="one" value="1">1 <br>
                        <input type="radio" name="six" id="two" value="0">0<br>
                        <input type="radio" name="six" id="three" value="-1">-1<br>
                        <input type="radio" name="six" id="four" value="none">None <br> <br><br>
                    </div>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li> <br>
                        <code>
                            public static void main (String[] args) {   <br>
                            String str1="abc";  <br>
                            String str2=new String("abc");  <br>
                            System.out.println(str1==str2);  <br>
                            }  <br>
                        </code>
                        <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="seven" id="one" value="T">TRUE <br>
                        <input type="radio" name="seven" id="two" value="F">FALSE<br> <br> <br>
                    </div>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li> <br>
                        <code>
                            public static void main (String[] args) {   <br>
                            int i=0; <br>
                            for(;;) <br>
                            { <br>
                            if(i==5) <br>
                            break; <br>
                            System.out.print(i); <br>
                            i++; <br>
                            } <br>
                            }
                        </code> <br> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="eight" id="one" value="0">012345<br>
                        <input type="radio" name="eight" id="two"value="1">01234<br>
                        <input type="radio" name="eight" id="three" value="2">infinte loop<br>
                        <input type="radio" name="eight" id="four" value="3">None <br> <br><br>
                    </div>
                    <div class="codeone">
                        <li>What will be the output of this code ?</li> <br>
                        <code>
                            int i = 1;    <br>
                            while(i < 3) { <br>
                            int j = 1; <br>
                            while(j < 5) { <br>
                            if(j == 3) { <br>
                            break; <br>
                            } <br>
                            System.out.print(j + " "); <br>
                            j++; <br>
                            } <br>
                            i++; <br>
                            } <br>
                        </code> <br> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="nine" id="one" value="0">1 2 1 2<br>
                        <input type="radio" name="nine" id="two" value="1" >1 2<br>
                        <input type="radio" name="nine" id="three" value="2">infinte loop<br>
                        <input type="radio" name="nine" id="four" value="3">1 2 4 1 2 4<br> <br><br>
                    </div>
                    <div class="codeone">
                        <li>Will this code generate any error ?</li> <br>
                        <code>
                            public class Main {  <br>
                            public static void func(int a) { <br>
                            int b = 10; <br>
                            a = a + 10; <br>
                            System.out.println(a); <br>
                            }
                            <br>
                            public static void main(String[] args) { <br>
                            int a = 10; <br>
                            func(a); <br>
                            System.out.println(a); <br>
                            } <br>
                            } <br>
                        </code> <br>
                    </div>
                    <div class="one">
                        <input type="radio" name="ten" id="one" value="Y">YES<br>
                        <input type="radio" name="ten" id="two" value="N">NO<br> <br>
                    </div>
                </ol>
                <hr>
                <!--<input type="checkbox" id="checkit" name="checkit" required> Do you want to finish the exam ? <br><br>-->
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
        }
        , 1000);
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



