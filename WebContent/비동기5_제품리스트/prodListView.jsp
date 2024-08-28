<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

//controller에서 저장한 값 꺼내기
List<ProdVO> list = (List<ProdVO>)request.getAttribute("list");

//클라이언트 - 비동기처리부분 으로 전송 - json형테의 문자열로 직렬화 
Gson  gson = new GsonBuilder().setPrettyPrinting().create();

String result = gson.toJson(list);
out.print(result);
out.flush();

%>