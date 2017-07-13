<%@page import="test.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String id = (String)session.getAttribute("id");
    // 로그인 여부를 읽어와 본다.
    // id 가 null 이 아니면 로그인 된 것이다.
    String cPath = request.getContextPath();
    // context 경로 읽어오기
    String url = request.getParameter("url");
    if(url==null){
        url = request.getContextPath();
    }
%>
<jsp:useBean id="dto" class="test.dto.UsersDto"/>
<jsp:setProperty property="*" name="dto"/>
<%-- 폼 전송되는 파라미터값이 자동으로 UsersDto 객체에 들어가도록 --%>
    
<%
    // 폼 전송된 파라미터가 담겨있는 UsersDto 객체를 인자로 전달해서 DB에 저장하기
    boolean isSuccess =UsersDao.getInstance().insert(dto);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>signup.jsp</title>
</head>
<body>
<%if(isSuccess){%>
    <script>
        alert("가입 성공");
        location.href="<%=url %>";
    </script>
<%}else{ %>
    <script>
        alert("가입 실패");
        location.href="<%=url %>";
    </script>
<%} %>
</body>
</html>