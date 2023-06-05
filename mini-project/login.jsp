<%-- 
    Document   : login
    Created on : 21 Mar, 2022, 6:47:23 PM
    Author     : HARSHIT DWIVEDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            #divcontent{
                width: 50%;
                margin-top: 3rem;
                margin-left: 25%;
            }
            .err{
                margin-left: 42%;
                color: red;
            }
            
            .head nav{
                position: absolute;
                right: 2rem;
                top: -0.3rem
            }

        </style>
    </head>
    <body>
        
        <div class="head">
            <h2>Online MCQ</h2>
            <nav class="navbar">
                <a href="home.html">Home</a>
                <a  class="feat">Features</a>
                <a >Test</a>
                <a >AboutUs</a>
                <a  style="border-bottom:3px solid rgb(14, 13, 13)">Login</a>
            </nav>
        </div>
        <div class="modal-content" id="divcontent">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">SIGN IN</h5>
            </div>
            <div class="modal-body" id="login">
                <form action="login" method="post" onsubmit="return validation()" name="logi">
                    <!--<p style="color:#ff0033" class="err"></p>--> 
                    <div class="err">
                        <c:if test="${not empty message}">
                            <c:out value="${message}"/>
                        </c:if>
                    </div>
                    <label for="uname">Username:</label><br>
                    <input type="text" name="uname" placeholder="Enter Username" id="uname"
                           class="filldetails">&nbsp;<span id="uerror"></span><br><br>
                    <div class="pass">
                        <label for="pswd">Password:</label><br>
                        <input type="password" name="pswd" placeholder="Enter Password" id="pass"
                               class="filldetails">&nbsp;<span id="perror"></span>
                    </div><br>
                    <div class="forgotPswd">
                        <p><input type="checkbox" name="checkbox" id="checkIt" required> Keep me logged in</p>
                        <a href="#" style="text-decoration: none; color: red;" class="forget">Forgot
                            Password?</a>
                    </div><br>
                    <div class="modal-foot" style="float: right;">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="reset()">Cancel</button>
                        <input type="submit" class="btn btn-primary" value="Login">
                    </div>
                </form>
            </div>
        </div> <br><br><br>
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
<!--                <div class="gogle">
                    <a
                        href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin">
                        <input type="submit" value="SignIn With Google" class="googlesign" > </a>
                    <br><br>
                </div>-->

        <script>
            var inputcontrol = document.getElementbyClassName("filldetails");
            function reset() {
                inputcontrol.innerHTML = "";
            }
            function validation() {
                var uname = document.forms["logi"]["uname"].value;
                var pass = document.forms["logi"]["pass"].value;
                if (uname == "") {
                    document.getElementById("uerror").style.color = "red";
                    document.getElementById("uerror").innerHTML = "Enter Username";
                    return false;
                } else if (pass == "") {
                    document.getElementById("perror").style.color = "red";
                    document.getElementById("perror").innerHTML = "Enter Password";
                    return false;
                }
            }

        </script>
    </body>
</html>
