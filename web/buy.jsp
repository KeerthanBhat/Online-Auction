<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buy</title>
</head>

<style>
    @import url(https://fonts.googleapis.com/css?family=Roboto:300);

    .login-page {
        width: 360px;
        padding: 8% 0 0;
        margin: auto;
    }
    .form {
        position: relative;
        z-index: 1;
        background: #FFFFFF;
        max-width: 360px;
        margin: 0 auto 100px;
        padding: 45px;
        text-align: center;
        box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    }
    .form input {
        font-family: "Roboto", sans-serif;
        outline: 0;
        background: #f2f2f2;
        width: 100%;
        border: 0;
        margin: 0 0 15px;
        padding: 15px;
        box-sizing: border-box;
        font-size: 14px;
    }
    .form input[type="submit"] {
        font-family: "Roboto", sans-serif;
        color: #FFFFFF;
        outline: 0;
        background: #4CAF50;
        width: 100%;
        border: 0;
        margin: 0 0 15px;
        padding: 15px;
        box-sizing: border-box;
        font-size: 14px;
    }

    .form button {
        font-family: "Roboto", sans-serif;
        text-transform: uppercase;
        outline: 0;
        background: #4CAF50;
        width: 100%;
        border: 0;
        padding: 15px;
        color: #FFFFFF;
        font-size: 14px;
        transition: all;
        cursor: pointer;
    }
    .form button:hover,.form button:active,.form button:focus {
        background: #43A047;
    }
    .form .message {
        margin: 15px 0 0;
        color: #b3b3b3;
        font-size: 12px;
    }
    .form .message a {
        color: #4CAF50;
        text-decoration: none;
    }
    .form .register-form {
        display: none;
    }
    .container {
        position: relative;
        z-index: 1;
        max-width: 300px;
        margin: 0 auto;
    }
    .container:before, .container:after {
        content: "";
        display: block;
        clear: both;
    }
    .container .info {
        margin: 50px auto;
        text-align: center;
    }
    .container .info h1 {
        margin: 0 0 15px;
        padding: 0;
        font-size: 36px;
        font-weight: 300;
        color: #1a1a1a;
    }
    .container .info span {
        color: #4d4d4d;
        font-size: 12px;
    }
    .container .info span a {
        color: #000000;
        text-decoration: none;
    }
    .container .info span .fa {
        color: #EF3B3A;
    }
    body {
        background: #76b852;
        background: -webkit-linear-gradient(right, #76b852, #8DC26F);
        background: -moz-linear-gradient(right, #76b852, #8DC26F);
        background: -o-linear-gradient(right, #76b852, #8DC26F);
        background: linear-gradient(to left, #76b852, #8DC26F);
        font-family: "Roboto", sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
</style>
<body>
<div class="login-page">
    <div class="form">
        <script>
            var captcha;

            function generateCaptcha() {
                var a = Math.floor((Math.random() * 10));
                var b = Math.floor((Math.random() * 10));
                var c = Math.floor((Math.random() * 10));
                var d = Math.floor((Math.random() * 10));

                captcha=a.toString()+b.toString()+c.toString()+d.toString();

                document.getElementById("captcha").value = captcha;
            }

            function check(){
                var input=document.getElementById("inputText").value;

                if(input==captcha){
                    alert("Equal");
                }
                else{
                    alert("Not Equal");
                }
            }
        </script>
        <br>Enter the CAPTCHA:
        <div class="captcha">
            <input type="text" id="captcha" disabled/><br/><br/>
            <input type="text" id="inputText"/><br/><br/>
            <button onclick="generateCaptcha()">Refresh</button>
            <button onclick="check()">Submit</button>
        </div>
        <br><br>
<form action="/buy" class="login-form" method="post">
    User Name:<br>
    <input type="text" name="username" placeholder="user-name">
    <br>
    Product Id:<br>
    <input type="number" name = "pId" placeholder="product id">
    <br>
    Your Bid:<br>
    <input type="number" name="bid" placeholder="bid amount">
    <br>
    <input type="submit" value="Submit">
</form>
    </div>
</div>
<p align="center" style="color: red">${errorMessage}</p>
</body>
</html>
