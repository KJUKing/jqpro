<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.seria.vo.SeriaVO"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%

request.setCharacterEncoding("utf-8");

StringBuffer strbuf = new StringBuffer();

String line = null;

try{
	BufferedReader reader = request.getReader();
	while((line = reader.readLine()) != null) {
		strbuf.append(line);
	}
}catch(Exception e){
	e.printStackTrace();
}

String reqData = strbuf.toString();
//System.out.print("reqdata= " + reqData );
//{"id":"sdfs , "name":"adfads" , "email" : "sdfdsf"}

//역직렬화
Gson gson = new Gson();
//역직렬화 - gson.fromJSON(str, typeclass)

//typeclass에 해당하는 java클래스가 있어야 한다  
//id, name, email 3가지 속성 가지고있는 클래스를 vo클래스로 만든다

SeriaVO svo = gson.fromJson(reqData, SeriaVO.class);
//setter가 자동수행

//svo로 db연결 crud처리

//svo결과로 응답데이터를 생성

//gson을 이용한 직렬화 - 밑에 코딩안하고




%>

{
	"id" : "<%= svo.getId() %>",
	"name" : "<%= svo.getName() %>",
	"mail" : "<%= svo.getEmail() %>"
}