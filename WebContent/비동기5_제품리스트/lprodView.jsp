<%--
  Created by IntelliJ IDEA.
  User: PC-14
  Date: 2024-08-27
  Time: 오전 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %>

<%
    //controller에서 저장한 결과값 가져오기
    List<LprodVO> list = (List<LprodVO>)request.getAttribute("listValue");
    
	
Gson gson = new GsonBuilder().setPrettyPrinting().create();
String result = gson.toJson(list);

out.print(result);
out.flush();

%>



<%--
[
	<%
		for(int i = 0; i<list.size(); i++){
			LprodVO vo = list.get(i);
			if(i>0) out.print(",");
	
		{
			"lprod_gu" : "<%= vo.getLprod_gu() %>",
			"lprod_nm" : "<%= vo.getLprod_nm() %>"
		}
	
	<%
		}
	%>
]

--%>



