<%@page import="kr.or.ddit.seria.vo.SeriaVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("utf-8");


StringBuffer   strbuf = new StringBuffer();
String line = null;

try{
	 BufferedReader   reader =  request.getReader();
	 while( (line =   reader.readLine()) != null){
	
	     strbuf.append(line);
	 }
	 
	/*  while(true){
			
			line =   reader.readLine();
			if(line == null) break;
			strbuf.append(line);
		}
	 */
}catch(Exception  e){
	e.printStackTrace();
}

String reqData =strbuf.toString();
//System.out.print("reqdata = " + reqData);
//{"id" :"sdfs" , "name" : "sdfsdf" , "email" : "sdfsdf" }
	
//역직렬화 
Gson gson = new Gson();
//역직렬화 - gson.fromJSON(str, typeclass)

//typeclass에 해당하는 java클래스가 있어야 한다 -
//id, name, email세가지 속성을 가지고 있는 클래스를 VO클래스로 생성 

SeriaVO  svo = gson.fromJson(reqData, SeriaVO.class);
//setter가 자동 수행 
//svo.setId("sdfsdf")  svo.setName("sdfsd") svo.setEmail("sdfs")//


///svo로 db연결 - crud처릴   

//svo결과로 응답데이타를  생성

//gson을 이용한 직렬화 - 밑에 코딩 안하ㄱ고

%>

 {
  "id"  : "<%= svo.getId() %>",
  "name" : "<%= svo.getName()  %>",
  "email" : "<%= svo.getEmail() %>"
}
 













