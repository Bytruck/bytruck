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
		System.out.println(boardNum);
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

	public int selectCount() throws Exception{
		String selectCountSQL = "SELECT COUNT(*) totalcnt FROM board_list";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectCountSQL);
			rs = pstmt.executeQuery();
			rs.next();
			int totalCount = rs.getInt("totalcnt");
			return totalCount;
		}finally {
			MyConnection.close(rs,pstmt,con);
		}
	}
	
	// 리스트 불러오기	
	public List<board> getBoardList(int page) throws Exception {
		
		List<board> list = new ArrayList<board>();
		
		try {
			
		con = MyConnection.getConnection();
		
		String sql ="SELECT b.* \r\n" + 
				"FROM    (  SELECT rownum rnum, a.no, a.title, a.views, a.posted\r\n" + 
				"            FROM(   SELECT * \r\n" + 
				"                    FROM board_list \r\n" + 
				"                    order by no desc) a \r\n" + 
				"        )b\r\n" + 
				"where rnum>= ? and rnum <= ?";
		pstmt = con.prepareStatement(sql);
		int cntPerpage=10;
		int endRow=cntPerpage * page;
		int startRow = endRow - cntPerpage + 1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		rs=pstmt.executeQuery();
		System.out.println("executeQuery 실행");
		while(rs.next()) {
			board bl = new board();
			bl.setNo(rs.getInt("no"));
			bl.setTitle(rs.getString("title"));
			bl.setViews(rs.getInt("views"));
			bl.setPosted(rs.getDate("posted"));
			list.add(bl);
		}

		}catch(Exception e) {
			e.getMessage();
		}finally {
			MyConnection.close(rs,pstmt,con);
		}
		return list;
		
	}
}