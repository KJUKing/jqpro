<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
    
    //전송데이타 가져오기 
    
    //SqlSession얻어오기 - MyBatisUtil - sql문(mapper)을 수행하기 위해서 
    SqlSession  sql = MybatisUtil.getSqlSession();
 
    //mapper수행 
    List<LprodVO> list = sql.selectList("lprod.getAllLprod");
    
    //결과로 json데이타형식으로 응답 전송데이타 생성 하기 위해서 
    //결과를 저장하고 view페이지로 forward
    
    request.setAttribute("sldkfsldfs", list);
    
    RequestDispatcher  disp = request.getRequestDispatcher("/제품리스트/lprodView.jsp");
    disp.forward(request, response);
  
 
 %>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 