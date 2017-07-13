<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String id = (String)session.getAttribute("id");
    // 로그인 여부를 읽어와 본다.
    // id 가 null 이 아니면 로그인 된 것이다.
    String cPath = request.getContextPath();
    // context 경로 읽어오기
    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
        html,body{
            height: 99%;
        }
        
        body{
            background-color: LightPink;
            width: 100%;
            background-image: url("../resource/images/Calendar_Image.jpg");
        }
        .text{
            color: white;
            font-size: 30px;
            font-weight: bold;
            line-height: 100%;
            margin: 0;
        }
        .T{
            position: fixed;
            display: block;
            text-align: center;
            left: 49%;
            padding-top: 20px;
        }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/video/video.jsp</title>
<link rel="stylesheet" href="../resource/css/bootstrap.css"/>
<link rel="stylesheet" href="../resource/css/animate.css"/>
</head>
<body>
    <h3>/video/video.jsp</h3>
<script src="../resource/js/jquery-3.2.0.js"></script>
<script src="../resource/js/bootstrap.js"></script>
</body>
</html>