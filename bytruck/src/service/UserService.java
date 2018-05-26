package service;

import dao.UserDAO;
import dao.userDAOOracle;
import vo.users;

public class UserService {
	private UserDAO dao = new userDAOOracle();

	public String login(String id, String pwd) throws Exception {//로그인메소드
		users u = dao.selectById(id);
		if (u != null) { // 아이디가 있는 경우
			if (u.getUser_pwd().equals(pwd)) {// 비밀번호일치
				return "1";// 유저정보 리턴시키기
			}
		}
		return "-1";
	}

	public String searchtype(String id) throws Exception {//로그인후 회원타입별 헤더 변경하기위한 메소드
		String type = dao.selectTypeById(id);
		return type;
	}
	
	public String dupChk(String id) throws Exception{
		users c =  dao.selectById(id);
		if(c==null) {
			return "1"; 	//아이디가 없는경우(회원가입 가능)
		}else {
			return "-1";	//이미 존재하는 아이디(회원가입 불가능!)
		}
	}
}
