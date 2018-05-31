package dao;

import java.util.List;

import vo.users;

public interface UserDAO {
	void insert(users u) throws Exception;
	users selectById(String id) throws Exception;
	String selectTypeById(String id) throws Exception;
	List<users> selectAll() throws Exception;
	void update(users u) throws Exception;
	void delete(String id)  throws Exception;
	String selectByBusiNum(String busiNumValue) throws Exception;
	void insert2(users u) throws Exception;
	String selectbyIdTel(String name, String tel) throws Exception;
	String selectbyIdEmail(String name, String email) throws Exception;
}
