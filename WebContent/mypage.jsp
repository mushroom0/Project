<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>MyPage.html</title>
    <style>
        html,body{
            height: 99%;
            width: 100%;
        }
        .container{
            width: 100%;
            height: 100%;
            margin:0 auto;
        }
    
        .Top{
            width: 100%;
            height: 20%;
            
        }
        .Top p{
            font-size: 130px;
            text-align:center;
            margin-top: 15%;
        }
        .center{
            width: 265px;
            margin: 0 auto;
            margin-top: 2%;
        }
        .btn {
          background: #ffffff;
          background-image: -webkit-linear-gradient(top, #ffffff, #ffffff);
          background-image: -moz-linear-gradient(top, #ffffff, #ffffff);
          background-image: -ms-linear-gradient(top, #ffffff, #ffffff);
          background-image: -o-linear-gradient(top, #ffffff, #ffffff);
          background-image: linear-gradient(to bottom, #ffffff, #ffffff);
          -webkit-border-radius: 28;
          -moz-border-radius: 28;
          border-radius: 28px;
          font-family: Arial;
          color: #000000;
          font-size: 20px;
          padding: 10px 20px 10px 20px;
          border: solid #424242 3px;
          text-decoration: none;
        }
        .btn:hover {
          background: #c3dff0;
          text-decoration: none;
        }
        .btn a{
            text-decoration: none;
            color:#424242;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="Top">
            <p>MY PAGE</p>
        </div>
        <div class="center">
            <button class="btn resignup"><a href="#">회원정보수정</a></button>
            <button class="btn Taltea"><a href="#">탈퇴</a></button>
        </div>
    </div>
</body>
</html>