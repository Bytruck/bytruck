package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import sql.MyConnection;
import vo.board;

public class BoardDAOOracle implements BoardDAO {

	@Override
	public void insertboard(board board) throws Exception {

	}

	@Override
	public void deleteBoard(int boardNum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//System.out.println(boardNum);
		try {
			con = sql.MyConnection.getConnection();
			String sql = "delete from board\r\n" + 
					"where no = ? and type = 0";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boardNum);
			pstmt.executeQuery();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MyConnection.close(rs, pstmt, con);
		}		
	}
}