<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
     //여기는 controller파일 - java파일로 생성해야함 - Servlet, Spring 등
     //우리는 여기서 controller흉내내기
     
     //전송데이터 받기
     
     //SqlSession객체를 얻는다 - mapper파일의 sql문을 실행하기 위해서
     SqlSession sql = MybatisUtil.getSqlSession();
     //mapper를 실행 - select문 실행 - 결과가 생성- List
     List<MemberVO> list = sql.selectList("member.selectAllMember");
     //List결과물을 이용해서 응답데이터를 생성 - 또는 출력 view페이지에서
     request.setAttribute("listValue", list);
     
     //List결과물을 view페이지로 넘겨주는(공유하는) 알고리즘 필요 forward redirect
     RequestDispatcher disp = request.getRequestDispatcher("/비동기5_fetch/memberView.jsp");
     disp.forward(request, response);
     
     

     
     //
    %>