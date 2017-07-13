<%@page import="test.dto.PlanDto"%>
<%@page import="java.util.List"%>
<%@page import="test.dao.PlanDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="test.dto.PlanDto"/>
<jsp:setProperty property="*" name="dto"/>    
<%
   PlanDao dao=PlanDao.getInstance();
   List<PlanDto> list=dao.getList();
   int rowLength = PlanDao.getInstance().countRow(dto);
   int selectedLength = 5;
   double pageLength = Math.floor(rowLength/selectedLength)+1;
   if(rowLength%5==0){
	   pageLength -= 1;
   }
%>
<% 
	String pageNumber = request.getParameter("pageNum");
	if(request.getParameter("pageNum")==null){
		pageNumber = "1";
	}
	int pageNum = Integer.parseInt(pageNumber);

%>    


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../resource/js/jquery-3.2.0.js"></script>
<script src="../resource/js/bootstrap.js"></script>   
<link rel="stylesheet" href="../resource/css/bootstrap.css"/>
<style>
	body{
            background-color: LightPink;
            width: 100%;
            background-image: url("../resource/images/Calendar.jpg");
        }
   .Write{
       display: inline-block;
       position: absolute;
       right: 0;
       margin-top: 15px;
       width: 80px;
       height: 40px;
       font-size: 16px;
       background-color: white;
       color: black;
   }
   .search{
       
       width: 30px;
       height: 30px;
       
   }
   .SearchDiv{
       position: absolute;
       display: inline-block;
       top:-40px;
       right: -85px;
   }
   #example_filter{
       position: absolute;
       right: 100px;
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
   .content{
   	   margin-top: 5%;
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
    <div class="content">
        <h1 class="page_title">게시판</h1>
        <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
            <div class="row">
               <div class="col-sm-6">
                   <div class="dataTables_length" id="example_length">
                       <label>Show 
                           <select id="optionS" name="example_length" aria-controls="example" class="form-control input-sm">
                               <option value="5">5</option>
                               <option value="10">10</option>
                               <option value="15">15</option>
                           </select> entries
                       </label>
                   </div>
               </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-6 SearchDiv">
                    
                    <div id="example_filter" class="dataTables_filter">
                        <label for="searchIp">Search:
                            <input id="searchIp" name="searchIp" type="submit" class="form-control input-sm" placeholder="" aria-controls="example">
                        </label>
                        <button id="searchBtn" class="search glyphicon glyphicon-search"></button>
                    </div>
                </div>
                    <table id="example" class="table table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                        <thead>
                            <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 30px;">
                                    글번호
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 300px;">
                                    글제목
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 100px;">
                                    작성자
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 50px;">
                                    작성일
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        	<%for(int i=1; i<pageNum+1; i++){
                        		if(pageNum==i){
                        			if(pageNum==pageLength){
                        				for(int j=selectedLength*(i-1); j<rowLength; j++){ %>
                        				<tr>
                        					<td><%=list.get(j).getNum_pk() %></td>
                            				<td><a href="content.jsp?num_pk=<%=list.get(j).getNum_pk() %>"><%=list.get(j).getTitle() %></a></td>
                            				<td><%=list.get(j).getWriter() %></td>
                            				<td><%=list.get(j).getLetterdate() %></td>
                        				</tr>	
                        				<%}
                        			}else{
                        				for(int k=selectedLength*(i-1); k<selectedLength*i; k++){ %>
                            			<tr>
                            				<td><%=list.get(k).getNum_pk() %></td>
                            				<td><a href="content.jsp?num_pk=<%=list.get(k).getNum_pk() %>"><%=list.get(k).getTitle() %></a></td>
                            				<td><%=list.get(k).getWriter() %></td>
                            				<td><%=list.get(k).getLetterdate() %></td>
                            			</tr>
                            			<%}	
                        			}
                        		}
                        	} %>
                	     </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
        <div class="row">
            <div class="col-sm-5">
            <div class="dataTables_info" id="example_info" role="status" aria-live="polite">
            </div>
            </div>
            <div class="col-sm-7">
                <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
                    <ul class="pagination">
                        <li class="paginate_button previous" id="example_previous">
                            <a href="#" aria-controls="example" data-dt-idx="0" tabindex="0">Previous</a>
                        </li>
                        
                        <%for(int i=1; i<pageLength+1; i++){ %>
                        	<li <%if(i==pageNum){ %>class="paginate_button active"<%}else{ %>class="paginate_button"<%} %>>
                         	   <a href="plan2.jsp?pageNum=<%=i %>" aria-controls="example" data-dt-idx="<%=i %>" tabindex="0"><%=i %></a>
                   	  		</li>
                        <%} %>

                        <li class="paginate_button next" id="example_next">
                            <a href="#" aria-controls="example" data-dt-idx="7" tabindex="0">Next</a>
                        </li>
                    </ul>
                </div>
                <div class="WriteBtn">
                <button class="Write btn btn-default">
                    글쓰기
                </button>
            </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(".paginate_button").click(function(){
        $(".pagination li").removeClass("active");
        $(this).addClass("active");
    });
    
    $(".Write").click(function(){
    	location.href="plan.jsp";
    });

</script>
</html>