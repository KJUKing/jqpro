<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

request.setCharacterEncoding("UTF-8");

//전송데이타 받기 
String userName = request.getParameter("name");
String userId = request.getParameter("id");
String userMail = request.getParameter("email");

//db연결  crud처리 
   
//처리된 결과로 응답데이타를 생성
 %>
 
 {
   "name"  : "<%= userName %>",
   "id"    : "<%= userId %>",
   "email"  : "<%= userMail  %>"
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 