<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String url = request.getParameter("url");
    // 로그인 후 redirect 이동할 url 주소를 읽어온다.
    if(url==null){
        url = request.getContextPath();
    }
    String id = (String)session.getAttribute("id");
%>
<script>
<%if(id==null){ %>
 $("#TopR1").click(function(){
    //로그인 modal 띄우기
    $("#signinModal").modal("show");
 });
 //모달에 옵션 전달하기
 $("signinModal").modal({
     show:false, //이 javascript가 실행될때 modal 안뜨게
     backdrop:false
 });
 
 $("#TopR2").click(function(){
    //회원가입 modal 띄우기
    $("#signupModal").modal("show");
 });
 
 //모달에 옵션 전달하기
 $("signupModal").modal({
     show:false, //이 javascript가 실행될때 modal 안뜨게
     backdrop:false
 });
<%}else{ %>
 $("#TopR1").click(function(){
	 <%session.invalidate(); %>
	 location.href="signout.jsp?url=<%=url %>";
 })
<%} %>
</script>