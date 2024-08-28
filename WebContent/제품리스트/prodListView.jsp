<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

//controller에서 저장한 값 꺼내기
List<ProdVO> list = (List<ProdVO>)request.getAttribute("list");

//list값이 업스는경우 - P401, P402
 
JsonObject  obj = new JsonObject();

if(list != null && list.size() > 0){  //데이타가 있느느 경우 
	
	obj.addProperty("flag","ok");
	
     Gson gson = new Gson();
    JsonElement  jele =  gson.toJsonTree(list);
    
    obj.add("datas" , jele);
	
}else{  //데이타가 없는경우 
	
	obj.addProperty("flag", "no");
}


out.print(obj);
out.flush();
%>





