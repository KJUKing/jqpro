<%@page import="java.util.Map"%>
<%@page import="kr.or.ddit.prod.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//전송데이타 받기  {"lprod_gu" : "P401"}
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
//역직렬화 , 자바 객체로 변환 - lprod_gu속성을 가지고 자바 객체  - LprodVO
Gson  gson = new Gson();
LprodVO vo = gson.fromJson(reqData, LprodVO.class) ;

//vo.setLprod_gu("P101")자동수행 

//SqlSession얻기 
SqlSession  sql = MybatisUtil.getSqlSession();

//sql실행 - 결과 값 얻기 
List<ProdVO> list = sql.selectList("prod.selectByLgu", vo.getLprod_gu());

//request에 저장 
request.setAttribute("list", list);

//결과값을  가지고 view페이지로 이동 
RequestDispatcher  disp = request.getRequestDispatcher("/제품리스트/prodListView.jsp");
disp.forward(request, response);

%>









