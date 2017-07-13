<%@page import="test.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="test.dto.UsersDto"/>
<jsp:setProperty property="*" name="dto"/>
<%
    boolean isValid = UsersDao.getInstance().isValid(dto);

	if(isValid){
		session.setAttribute("id", dto.getId());
	}
    //UsersDao 객체를 이용해서 아이디, 비밀번호가 유효한 정보인지 확인
    String url = request.getParameter("url");
    if(url==null){
        url = request.getContextPath();
    }

	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>signin.jsp</title>
</head>
<body>
<%if(isValid){ %>
	<script>
	    location.href="<%=url%>";
	</script>
<%}else{ %>
    <script>
    	alert("아이디 혹은 비밀번호가 틀려요.");
    	location.href="<%=url%>";
    </script>
<%} %>
</body>
</html>