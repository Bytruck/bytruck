package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sql.MyConnection;
import vo.foodtruck;
import vo.foodtruck_location;

public class FoodtruckDAOOracle implements FoodtruckDAO {

	@Override
	public void insertfoodtruck(foodtruck_location fc) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String insertSQL = "insert into foodtruck_location(no, user_id, title, opendate, detail, poweryn) values(foodtruck_no_seq.nextval, 'EJ', ?, to_date(?,'yyyy-mm-dd'), ?, ?)";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(insertSQL);
			pstmt.setString(1, fc.getTitle());
			pstmt.setString(2, fc.getOpendate());
			pstmt.setString(3, fc.getDetail());
			pstmt.setInt(4, fc.getPoweryn());
			pstmt.executeUpdate();
		}finally {
			MyConnection.close(pstmt, con);			
		}
	}
	
	@Override
	public void insert(foodtruck ft) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = sql.MyConnection.getConnection();
			String insertSQL = "INSERT INTO foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail) VALUES (?,?,?,?,?,?)";
			pstmt = con.prepareStatement(insertSQL);
			pstmt.setString(1, ft.getUser_id());
			pstmt.setString(2, ft.getBussiness_name());
			pstmt.setString(3, ft.getMenu_name());
			pstmt.setInt(4, ft.getPrice());
			pstmt.setInt(5, ft.getMenu_type());
			pstmt.setString(6, ft.getDetail());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			if (e.getErrorCode() == 1) {
				throw new Exception("이미 사용중인 아이디입니다");
			} else {
				throw e;
			}
		} finally {
			sql.MyConnection.close(pstmt, con);
		}
	}
}
