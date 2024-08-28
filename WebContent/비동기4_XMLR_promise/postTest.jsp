<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

request.setCharacterEncoding("UTF-8");


//전송 데이타 받기  - name, id
String userName = request.getParameter("name");
String userId = request.getParameter("id");

//DB연결 해서 CRUD처리 결과값 얻기 
//결과값으로 응답 데이타를 생성 
%> 

<%--  postTest.html에서   promise수행시 1번방식 - text형식   --%>
 <p> <%=  userName %> 님 환영합니다 </p> 
 <p> <%=  userId %> 님 으로 부를께요 </p>   

 
 <%--  postTest.html에서   promise수행시 2번방식   -- JSON.parse()후 사용 %>
<%-- 
 {
 
   "name"  :  "<%=  userName %>",
   "id"    :  "<%=  userId %> "
 }
  --%>
 
 
 
 
 
 
 
 
 
 
 
 
 
 