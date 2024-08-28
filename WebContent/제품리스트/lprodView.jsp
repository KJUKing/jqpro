<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

//controller에서 저장한 결과값 가져오기 
List<LprodVO>  list = (List<LprodVO>)request.getAttribute("sldkfsldfs");

//json형태의 text 응답데이타를 생성 
Gson  gson = new GsonBuilder().setPrettyPrinting().create();
String result = gson.toJson(list);
 
out.print(result);
out.flush();

%>
<%-- 
[
   <%
      for(int i=0; i<list.size(); i++){
    	  LprodVO  vo = list.get(i);
    	  if(i > 0) out.print(",");
   %>	  
     	 {
     	    "lprod_gu" : "<%=  vo.getLprod_gu() %>",
     	    "lprod_nm" : "<%= vo.getLprod_nm() %>"
    	 } 
   <%  	  
      }
   %>
]
 --%>
