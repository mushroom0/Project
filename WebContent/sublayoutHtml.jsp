<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cPath = request.getContextPath();

    String url = request.getParameter("url");
    // 로그인 후 redirect 이동할 url 주소를 읽어온다.
    if(url==null){
        url = request.getContextPath();
    }
    String id = (String)session.getAttribute("id");
%>
<div class="row">
	<div class="text">
         <p class="text T"><a href="<%=cPath %>/index.jsp">main</a></p>
         <p class="text B"><a href="<%=cPath %>/plan/plan.jsp">plan</a></p>
         <p class="text R"><a href="<%=cPath %>/video/video.jsp">video</a></p>
         <p class="text L"><a href="<%=cPath %>/calendar/calendar_side.jsp">calendar</a></p>
    </div>
    <div id="TopLogin">
         <ul id="TopUl">
              <%if(id==null){ %>
              <li><a href="#" id="TopR2">회원가입</a></li>
              <li><a href="#" id="TopR1">로그인</a></li>
              <%}else{ %>
              <li><a href="mypage.jsp" id="TopR2">마이페이지</a></li>
              <li><a href="#" id="TopR1">로그아웃</a></li>
              <%} %>
         </ul>
    </div>
</div>