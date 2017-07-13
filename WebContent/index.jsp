<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String url = request.getParameter("url");
    // 로그인 후 redirect 이동할 url 주소를 읽어온다.
    if(url==null){
        url = request.getContextPath();
    }
    
	String id = (String)session.getAttribute("id");
	System.out.println(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>texttest01</title>
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:700" rel="stylesheet">
    <style>
        body{

            background-color: LightPink;
            width: 100%;
            background-image: url("resource/images/Main.jpg");
        }
        .container{
            width: 100%
        }
        .text{
            color: white;
            font-size: 30px;
            font-weight: bold;
            line-height: 100%;
            margin: 0;
         }
         .text a{
            text-decoration: none;
            color: black;
            opacity: 0.8;
         }
         .text a:hover{
            text-decoration: none;
            color:white;
         }
        .T{
            position: fixed;
            display: block;
            text-align: center;
            left: 44%;
            padding-top: 20px;
        }
        .B{
            position: fixed;
            display: block;
            bottom: 0;
            text-align: center;
            left: 47%;
            padding-bottom: 20px;
            font-family: 'Dancing Script', cursive;
       }
        .R{
            position: fixed;
            display: block;
            text-align: center;
            top:47%;
            right: 0;
            padding-right: 20px;
            -webkit-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            -o-transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            transform: rotate(90deg);
            font-family: 'Dancing Script', cursive;
       }
       .L{
            position: fixed;
            display: block;
            text-align: center;
            top:47%;
            left: 0;
            padding-left: 20px;
            -webkit-transform: rotate(270deg);
            -moz-transform: rotate(270deg);
            -o-transform: rotate(270deg);
            -ms-transform: rotate(270deg);
            transform: rotate(270deg);
            font-family: 'Dancing Script', cursive;
        }
        .C{
            margin:0 auto;
            text-align: center;
            font-size:130px;
            text-shadow: 5px 5px 7px rgba(0, 0, 0, 0.4);
            margin-top: 30%;
            font-family: 'Dancing Script', cursive;
        }
        .C_1{
            margin:0 auto;
            text-align: center;
            font-size:110px;
            margin-top: 0;
            opacity: 0.8;
            font-family: 'Dancing Script', cursive;
        }
        
        .signin{
            position: fixed;
            display: inline-block;
            text-align: center;
            left: 90%;
            padding-top: 20px;
        }
        .signin a{
            color: #fff;
            font-size: 20px;
        }
        .signin a:hover{
            text-decoration: none;
            cursor: pointer;
        }
        
        .signup{
            position: fixed;
            display: inline-block;
            text-align: center;
            left: 90%;
            padding-top: 20px;
        }
        .signup a{
            color: #fff;
            font-size: 20px;
        }
        .signup a:hover{
            text-decoration: none;
            cursor: pointer;
        }
        #TopUl{
          width: 100%;
          list-style: none;
          right: 0; 
        }
        #TopUl li{
          position: absolute;
          display: inline;
          margin-top: 15px;
          right: 0; 
        }
        #TopR1{
          position:fixed;
          right: 20px;
          color:white;
          font-size: 16px;
          list-style: none;
        }
        #TopR2{
          position:fixed;
          right: 100px;
          color:white;
          font-size: 16px;
          list-style: none;
        }
       
   </style>
<link rel="stylesheet" href="resource/css/bootstrap.css"/>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="text">
                <p class="text T"><a href="index.jsp"><img src="resource/images/LOGO.png" alt="" /></a></p>
                <p class="text B"><a href="signinCheck.jsp?url=<%=url %>">plan</a></p>
                <p class="text R"><a href="video/video.jsp">video</a></p>
                <p class="text L"><a href="calendar/calendar_side.jsp">calendar</a></p>
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
            <div class="row">
                <p class="text C col-lg-12 col-sm-12">We Can Go Festival!
                </p>
            </div>  
            <div class="row">
                <p class="text C_1 col-lg-12 col-sm-12">are we crazy</p>
            </div>    
        </div>
     </div>
     
<!-- signin --> 
    <div class="modal modal-center fade" id="signinModal" tabindex="-1" role="dialog" aria-labelledby="myCenterModalLabel">
      <div class="modal-dialog modal-center" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span>&times;</span><span class="sr-only">모달 닫기</span></button>
            <h4 class="modal-title"><strong>로그인</strong></h4>
          </div>
          <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12">
                        <form action="signin.jsp?url=<%=url %>">
                            <div class="form-group">
                                <label for="id">아이디<p class="help-block">반드시 입력하세요</p></label>
                                <input type="text" class="form-control" name="id" id="id" placeholder="아이디는 영문자 소문자로 시작하고 5~10글자로 입력하세요.(특수문자는 포함되지 않습니다)"/>
                            </div>
                            <div class="form-group">
                                <label for="pwd">비밀번호<p class="help-block">반드시 입력하세요</p></label>
                                <input type="password" class="form-control" name="pwd" id="pwd" placeholder="6~10 영문 대소문자, 숫자로만 입력하세요."/>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"/> 아이디 저장 &nbsp;&nbsp;&nbsp;
                                </label>
                            </div>
                            <button type="submit" id="signinSubmit" class="btn btn-default">로그인</button>
                            <button type="reset" class="btn btn-danger">취소</button>
                        </form>       
                    </div>
                </div>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal --> 
  
<!-- signup -->  
    <div class="modal modal-center fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="myCenterModalLabel">
      <div class="modal-dialog modal-center" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span>&times;</span><span class="sr-only">모달 닫기</span></button>
            <h4 class="modal-title"><strong>회원가입</strong></h4>
          </div>
          <div class="modal-body">
               <form action="signup.jsp?url=<%=url %>" method="post">
                  <div class="form-group">
                       <label for="name">이름</label>
                       <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해 주세요"/>
                   </div>
               
                  <div class="form-group">
                       <label for="id">아이디</label>
                       <input type="text" class="form-control" name="id" id="id" placeholder="아이디를 입력해 주세요."/>
                       <p class="help-block">아이디는 영문자 소문자로 시작하고 5~10글자로 입력하세요.(특수문자는 포함되지 않습니다)</p>
                   </div>
                   
                   <div class="form-group">
                       <label for="pwd">비밀번호</label>
                       <input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호"/>
                       <p class="help-block">6~10 영문 대소문자, 숫자로만 입력하세요.</p>
                   </div>
                   
                   <div class="form-group">
                       <label for="pwd2">비밀번호 확인</label>
                       <input type="password" class="form-control" name="pwd2" id="pwd2" placeholder="비밀번호"/>
                   </div> 
                                  
                  <div class="form-group">
                       <label for="email">이메일</label>
                       <input type="email" class="form-control" name="email" id="email" placeholder="이메일 주소"/>
                        <p class="help-block">이메일 형식에 맞게 작성하세요 (xxx@xxx.com)</p>
                   </div>
                   
                   <div class="form-group">
                       <label for="telephone">전화번호</label>
                       <input type="text" class="form-control" name="telephone" id="telephone" placeholder="전화번호를 입력해 주세요."/>
                       <p class="help-block">000-0000-0000</p>
                   </div>
                   
                   <div class="form-group">
                       <label for="addr">주소</label>
                       <input type="text" class="form-control" name="addr" id="addr" placeholder="주소 입력"/>
                   </div>
                  <div class="form-group">
                     <label for="favorite_kind">좋아하는 장르</label><br />
                     일렉트로닉<input type="checkbox" name="favorite_kind" value="electronic" checked/>
                     힙합<input type="checkbox" name="favorite_kind" value="hiphop"/>
                     발라드<input type="checkbox" name="favorite_kind" value="ballade"/>
                     락<input type="checkbox" name="favorite_kind" value="rock"/>
                  </div>
                  <div class="form-group">
                     <label for="favorite_area">선호 지역</label><br />
                     서울/경기<input type="checkbox" name="favorite_area" value="서울/경기" checked/>
                     전라도<input type="checkbox" name="favorite_area" value="전라도"/>
                     경상도<input type="checkbox" name="favorite_area" value="경상도"/>
                     제주도<input type="checkbox" name="favorite_area" value="제주도"/>
                  </div>
                  
                   <div class="form-group text-center">
                       <button type="submit" id="signupSubmit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
                   </div>
                </form>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal --> 
<script src="resource/js/jquery-3.2.0.js"></script>
<script src="resource/js/bootstrap.js"></script>   
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
	 location.href="signout.jsp?url=<%=url %>";
 });
<%} %>
</script>
</body>
</html>