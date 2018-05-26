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
		String insertSQL = "insert into board(no, type, title, detail, posted) values(SEQ_MENU_ID.nextval, 0, ?, ?, sysdate)";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(insertSQL);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getDetail());
			pstmt.executeUpdate();
		}finally {
			MyConnection.close(pstmt, con);			
		}
	}

}