<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String url = request.getParameter("url");
	String id = (String)session.getAttribute("id");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>fstv_plan.jsp</title>
<style>
	body{
       background-color: LightPink;
       width: 100%;
       background-image: url("../resource/images/Calendar.jpg");
   }
   .container{
       margin-top: 10%;
       width: 1400px;
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
</style>
<link rel="stylesheet" href="../resource/css/bootstrap.css">
</head>
<body style="margin-top: 80px">
<div class="container">
<div class="row">
    <div class="text">
        <p class="text T"><a href="../index.jsp"><img src="../resource/images/LOGO.png" alt="" /></a></p>
    </div>
</div>
<form action="plan3.jsp" method="post">
    <div class="form-group">
        <h3>공연기획</h3>
        <label for="title">공연기획 제목</label>
        <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력하세요"/>
    </div>
    <div class="form-group">
        <label for="writer">작성자</label>
        <input type="hidden" name="writer" value="<%=id %>"/>
        <input type="text" class="form-control" id="writer" value="<%=id %>" disabled="disabled"/>
    </div>
    <div class="form-group ">
        <label for="content">공연기획 소개</label>
        <textarea class="form-control" rows="10" name="content" id="content" placeholder="내용을 입력하세요"></textarea>
    </div>
    <div class="form-group">
          <label for="planperson">모집인원</label> <br/>
          <select name="" id="planperson" class="selectpicker form-control">
             	<option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
         </select>
         <br />   
         <button type="submit" class="btn btn-default" id="subBtn">글 게시</button>
    </div>
</form>
</div>
<script src="../resource/js/jquery-3.2.0.js"></script>
<script src="../resource/js/bootstrap.js"></script> 
</body>
</html>