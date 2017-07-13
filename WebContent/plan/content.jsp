<%@page import="test.dto.PlanDto"%>
<%@page import="java.util.List"%>
<%@page import="test.dao.PlanDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="test.dto.PlanDto"/>
<jsp:setProperty property="*" name="dto"/>    
<%
	int num_pk = Integer.parseInt(request.getParameter("num_pk"));
	dto = PlanDao.getInstance().getData(num_pk);
	
	String id = (String)session.getAttribute("id");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>content.jsp</title>
    <style>
        body{
            width: 99%;
            height: 95%;
            background-image: url("../resource/images/Calendar.jpg");
        }
        .container{
            width: 80%;
            height: 100%;
            margin:0 auto;
            
            top:0;
        }
        .BNBtn{
            padding-top: 17%;
        }
        .Before{
            margin-left: 7.5%;
        }
        .btn {
          -webkit-border-radius: 60;
          -moz-border-radius: 60;
          border-radius: 60px;
          font-family: Arial;
          color: #808080;
          font-size: 14px;
          background: none;
          padding: 5px 10px 5px 10px;
          border: solid white 2px;
          text-decoration: none;
          margin-top: 3%;
          margin-bottom: 1%;
        }
        .btn:hover {
          background: #d6e0eb;
          text-decoration: none; 
        }
        .content{
            width:85%;
            border: solid 2px;
            border-color: #D3D3D3;
            border-radius: 10px;
            margin:0 auto;
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
	       left: 44%;
	       top: 0%;
	       padding-top: 20px;
	   }    
        .contentT{
            border:0px;
            border-bottom:1px;
            border-color: #D3D3D3;
            border-style: dotted;
        }
        .content p{
            margin-left: 2%;
            display: inline-block;
            font-size: 15px;
        }
        .date{
            position: absolute;
            display: inline;
            right: 23%;
            width: 100px;
        }
        .date1{
            position: absolute;
            display: inline;
            right: 18%;
            width: 100px;
        }
        .dateman{
            display: inline;
            margin-top:5px;
        }
        .datedate{
        	
            display: inline-block;
             margin-top:5px;;
        }
        .context{
            margin: 2%;
            font-size: 20px;
            color:black;
        }
        .contentB{
            width: 90px;
            height: 70px;
            background-color: #D3D3D3;
            border: solid 2px;
            border-color: #D3D3D3;
            border-radius: 10px;
        }
        .BS{
            text-align: center;
        }
        .contentDG{
            width:85%;
            border: solid 2px;
            border-color: #D3D3D3;
            border-radius: 10px;
        }
        .BR1{
            margin-left: 7.5%;
            margin-top: 10px;
            
        }
    </style>
</head>
<body>
    <div class="container">
    	<div class="row">
	        <div class="text">
	            <p class="text T"><a href="../index.jsp"><img src="../resource/images/LOGO.png" alt="" /></a></p>
	        </div>
	    </div>
        <div class="row BNBtn">
            <button class="Before btn">이전글</button>
            <button class="Next btn">다음글</button>
            <div class="content">
                <div class="contentT">
                    <p><strong>글 번호 : </strong><%=dto.getNum_pk() %></p>
                    <p><strong>글 제목 : </strong><%=dto.getTitle() %></p>
                    <div class="date">
                        <p class="datedate"><%=dto.getLetterdate() %></p>
                       
                    </div>
                    <div class="date1">
                     	<p class="dateman"><strong>작성자</strong> <%=dto.getWriter() %></p>
                    </div>
                </div>
                <div class="context">
                    <%=dto.getContent() %>
                </div>
            </div>
        </div>
        <button class="btn BR BR1">목록보기</button>
        <button class="btn BR BR2">글쓰기</button>
        <% if(dto.getWriter().equals(id)){ %>
	        <button class="btn BR BR3">수정</button>
	        <button class="btn BR BR4">삭제</button>
        <%} %>
    </div>
    <script src="../resource/js/jquery-3.2.0.js"></script>
    <script>
    	$(".BR1").click(function(){
    		location.href="plan2.jsp";
    	});
    	$(".BR2").click(function(){
    		location.href="plan.jsp";
    	});
    	
    	$(".BR3").click(function(){
    		location.href="updateform.jsp";
    	});
    	$(".BR4").click(function(){
    		location.href="delete.jsp";
    	});
    </script>
</body>
</html>