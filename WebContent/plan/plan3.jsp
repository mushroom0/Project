<%@page import="test.dao.PlanDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 폼 전송되는 파라미터값이 자동으로 UsersDto 객체에 들어가도록 --%>
<jsp:useBean id="dto" class="test.dto.PlanDto"/>
<jsp:setProperty property="*" name="dto"/>
<%
	//폼전송된 파라미터가 담겨 있는 PlanDto 객체를 인자로 전달해서
	//DB 에 저장하기 
	boolean isSuccess2=PlanDao.getInstance().insert(dto);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/plan/signup.jsp</title>
</head>
<body>
<% if(isSuccess2){%>
	<script>
		alert("게시 완료");
		location.href="plan2.jsp";
	</script>
<%}else{ %>
	<script>
		alert("게시 실패");
		location.href="plan.jsp";
	</script>
<%} %>
</body>
</html>