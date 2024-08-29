<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@page import="java.awt.image.DataBufferUShort"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.io.BufferedReader"%>

<%
//전송데이타 받기  {"prod_id" : "P1010000003"}
//1.parameter
//2.reader
StringBuffer strbuf = new StringBuffer();
String line = null;

try{
	BufferedReader   reader = request.getReader();
	while(true){
		
		line = reader.readLine();
		if(line== null) break;
		strbuf.append(line);
	}

}catch(Exception e){
	e.printStackTrace();
}

 String reqData = strbuf.toString();
 System.out.println("reqdata=" + reqData);
 
 //역직렬화 - 자바객체로 
 Gson gson = new Gson();
 ProdVO   vo = gson.fromJson(reqData, ProdVO.class);
//vo.setProd_id("P1010000003")


//SqlSession값 얻기 
SqlSession  sql = MybatisUtil.getSqlSession();

//sql문 실행 - 결과값 
ProdVO  pvo =sql.selectOne("prod.prodDetail", vo.getProd_id() );

//결과값을 request에 저장 - view페이지에서 공유 하기 위해서 
request.setAttribute("value", pvo);

//view페이지로 이동 
RequestDispatcher  disp= request.getRequestDispatcher("/제품리스트/prodDetailView.jsp");
disp.forward(request, response);

//prodDetail
%>












