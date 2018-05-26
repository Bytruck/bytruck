package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import vo.users;

public class userDAOOracle implements UserDAO {

	@Override
	public void insert(users u) throws Exception {
	}

	@Override
	public users selectById(String id) throws Exception {
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con = sql.MyConnection.getConnection();
			String loginSQL = 
					"SELECT user_id, user_pwd, name, birthday, phone_number, email, nvl(bussiness_number,'X') bnum, type FROM users WHERE user_id=?";
			pstmt = con.prepareStatement(loginSQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(!rs.next()) { //아이디가 없는경우
				return null;
			}else {
				return new users(
						id,
						rs.getString("user_pwd"),
						rs.getString("name"),
						rs.getString("birthday"),
						rs.getString("phone_number"),
						rs.getString("email"),
						rs.getString("bnum"),
						rs.getString("type")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace(); //톰캣콘솔
			throw e;			
		} finally {	
			sql.MyConnection.close(rs, pstmt, con);			
		}
	}

	
	@Override
	public List<users> selectAll() throws Exception {
		return null;
	}

	@Override
	public void update(users u) throws Exception {
	}

	@Override
	public void delete(String id) throws Exception {
	}

	@Override
	public String selectTypeById(String id) throws Exception {
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con = sql.MyConnection.getConnection();
			String loginTypeSQL = 
					"SELECT type FROM users WHERE user_id=?";
			pstmt = con.prepareStatement(loginTypeSQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(!rs.next()) { //아이디가 없는경우
				return null;
			}else {
				return rs.getString("type");
			}
		} catch (SQLException e) {
			e.printStackTrace(); //톰캣콘솔
			throw e;			
		} finally {	
			sql.MyConnection.close(rs, pstmt, con);			
		}
	}
}
