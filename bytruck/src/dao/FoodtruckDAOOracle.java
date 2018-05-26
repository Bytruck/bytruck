package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import sql.MyConnection;
import vo.board;
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

}
