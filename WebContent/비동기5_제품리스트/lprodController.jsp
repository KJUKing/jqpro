<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="java.util.List" %>
<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%--
  Created by IntelliJ IDEA.
  User: PC-14
  Date: 2024-08-27
  Time: 오전 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8" %>

<%
    //전송 데이터 가져오기
    //SqlSession얻어오기 - MyBatisUtil - sql문(mapper)을 수행하기 위해서
    SqlSession sql = MybatisUtil.getSqlSession();

    //mapper수행
    List<LprodVO> list = sql.selectList("Lprod.getAllLprod");

    //결과로 json데이터형식으로 응답 전송 데이터 생성
    request.setAttribute("listValue", list);

    RequestDispatcher disp =  request.getRequestDispatcher("/비동기5_제품리스트/lprodView.jsp");
    disp.forward(request, response);
%>

