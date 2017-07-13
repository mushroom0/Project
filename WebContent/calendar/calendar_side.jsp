<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Calendar_side.html</title>
    <style>
        html,body{
            height: 99%;
        }
        
       	body{
			background-color: LightPink;
	    	width: 100%;
	        background-image: url("../resource/images/Calendar.jpg");
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
        
        .container{
            width: 100%;
            height: 100%;
            background-image: url(C:/ncs03/sublime_work/project/images/calendar_image.jpg);
        }

        .row{
            width: 15%;
            height: 100%;
            background-color : black;
            opacity: 0.6;
        }
        .box{
            width: 130px;
            height: 130px;
            background-color: white;
            opacity: 0.8;
            border-radius: 100px;
            margin:0 auto;
            margin-top:30px;
        }
        .J{        
            text-decoration: none;
            display: block;
            position: absolute;
            padding-top: 50px;
            left: 6.8%;
            font-weight: bold;
            font-size: 20px;
            color:black;
        }
        .box1{
            height: 60px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="box1"></div>
            <div class="box col-lg-1">
                <a href="#" class="J">서울</a>>
            </div>
            <div class="box col-lg-1">
                <a href="#" class="J">부산</a>>
            </div>
            <div class="box col-lg-1">
                <a href="#" class="J">대구</a>>
            </div>
            <div class="box col-lg-1">
                <a href="#" class="J">대전</a>>
            </div>
            <div class="box col-lg-1">
                <a href="#" class="J">기타</a>>
            </div>
        </div>
    </div>
<script src="../resource/js/jquery-3.2.0.js"></script>
<script src="../resource/js/bootstrap.js"></script>
	
</body>
</html>