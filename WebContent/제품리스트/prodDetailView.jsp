<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    //conroller에서 저장한 값 꺼내기 
   ProdVO   vo  = (ProdVO)request.getAttribute("value");

   //json형식의 응답데이타를 생성 = 클라이언트 비동기처리부분으로 전송 -json직렬화 
    Gson   gson = new GsonBuilder().setPrettyPrinting().create();
   
   String result =  gson.toJson(vo)  ;
   out.print(result);
   out.flush();
 %>