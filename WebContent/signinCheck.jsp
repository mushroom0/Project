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
<title>signinCheck.jsp</title>
</head>
<body>
	<%if(id==null){ %>
		<script>
			alert("로그인이 필요합니다.");
			location.href="<%=url%>";	
		</script>
	<%}else{ %>
		<script>
			location.href="plan/plan2.jsp";
		</script>
	<%} %>
</body>
</html>