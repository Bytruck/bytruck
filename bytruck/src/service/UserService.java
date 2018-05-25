package service;

import dao.UserDAO;
import dao.userDAOOracle;
import vo.users;

public class UserService {
	private UserDAO dao = new userDAOOracle();

	public String login(String id, String pwd) throws Exception {
		users u = dao.selectById(id);
		if (u != null) { // 아이디가 있는 경우
			if (u.getUser_pwd().equals(pwd)) {// 비밀번호일치
				System.out.println("password ok");
				return "1";// 유저정보 리턴시키기
			}
		}
		return "-1";
	}

	public String searchtype(String id) throws Exception {
		// TODO Auto-generated method stub
		String type = dao.selectTypeById(id);
		return type;
	}
}
