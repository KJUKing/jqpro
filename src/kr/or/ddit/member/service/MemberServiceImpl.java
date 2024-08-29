package kr.or.ddit.member.service;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberDaoImpl;
import kr.or.ddit.member.vo.MemberVO;

import java.util.List;

public class MemberServiceImpl implements IMemberService{

	//dao메소드를 호출하기 위한 객체
	private IMemberDao dao;

	private MemberServiceImpl() {
		dao = MemberDaoImpl.getInstance();
	}

	//싱글톤
	private static IMemberService service;
	
	public static IMemberService getInstance() {
		if(service == null) service = new MemberServiceImpl();
		
		return service;
	}

	@Override
	public List<MemberVO> selectAllMember() {
		//Dao 메소드 호출
		/*
		  List<MemberVO> list = null; 
		  list = dao.selectAllMember();
		  return list;
		 */
		
		return dao.selectAllMember();
	}

}
