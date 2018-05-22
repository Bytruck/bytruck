package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import sql.MyConnection;
import vo.board;

public class BoardDAOOracle implements BoardDAO {

	@Override
	public void insertboard(board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String title = request.getParameter("title");
		String detail = request.getParameter("detail");
		try {
			con = sql.MyConnection.getConnection();
			String insertSQL = "insert into board(no, type, title, detail, posted) values(SEQ_MENU_ID.nextval, 0, ?, ?, sysdate)";
			pstmt = con.prepareStatement(insertSQL);
			pstmt.setString(1, title);
			pstmt.setString(2, detail);
					
			pstmt.executeUpdate();
		
		} catch(Exception e) {			
			con.rollback();
			throw e;
		}
		MyConnection.close(null, con);
	}

}