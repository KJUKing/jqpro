<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.mybatis.config.MybatisUtil"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
 <%
    
   //여기는 controller파일이다 - java파일로 생성 해야 한다 - Servlet, Spring    
   //우리는 여기서 controller 흉내내기 
   
   //전송데이타 받기 
   
   //SqlSession객체를 얻는다 -  mapper화일의 sql문 을 실행하기 위해서 
   SqlSession   sql = MybatisUtil.getSqlSession();
   
   //mapper를 실행 - select문 실행 - 결과가 생성 - List
   List<MemberVO>  list = sql.selectList("member.selectAllMember");
   
   
   //List결과물을 이용해서 응답데이타를 생성  또는 출력 - view페이지에서  사용하기위해서 
   //request에 저장 - controller와 view페이지에서 공유한다 
   request.setAttribute("listvalue", list);
   
   //List결과물을 view페이지로 넘겨주는(공유하는) 알고리즘이 필요 - forward
   RequestDispatcher   disp = request.getRequestDispatcher("/비동기5_fetch/memberView.jsp");
   disp.forward(request, response);
   
   
    
 %>
 
 