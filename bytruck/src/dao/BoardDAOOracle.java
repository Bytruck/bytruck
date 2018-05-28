package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.Board;

public class BoardDAOOracle implements BoardDAO {

	@Override
	public void insertboard(Board board) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String insertSQL = "insert into board(no, type, title, detail, posted) values(board_no_seq.nextval, 0, ?, ?, sysdate)";
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

	@Override
	public int selectCount() throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectCountSQL = "SELECT COUNT(*) totalcnt" 
								+ " FROM board" 
							     + " WHERE type= 0";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectCountSQL);
			rs = pstmt.executeQuery();
			rs.next();
			int totalCount = rs.getInt("totalCnt");
			return totalCount;
		} finally {
			MyConnection.close(rs, pstmt, con);
		}
	}

	@Override
	public List<Board> selectAll(int page) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String selectAllSQL = "SELECT b.*" 
				+" FROM ( SELECT rownum r, a.no, a.type, a.title, a.user_id, a.views, a.posted" 
				+" 		  from board a" 
				+"		  order by a.no desc)b" 
				+" WHERE type = 0 and" 
				+" r BETWEEN ? AND ?";
		List<Board>list = new ArrayList<>();
		
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectAllSQL);
			int cntPerPage = 3; //한 페이지당 3개씩 보여줌
			int endRow = cntPerPage * page;
			int startRow = endRow-cntPerPage+1;
			pstmt.setInt(1, startRow); pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new Board(
						 rs.getInt("no"),
						 rs.getInt("type"),
						 rs.getString("title"),
						 rs.getString("posted"),
						 rs.getInt("views")
						 ));
			}
			return list;
		}finally {
			MyConnection.close(rs, pstmt, con);			
		}
	}
	
	@Override
	public Board selectDetail(int boardNo) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Board b = null;
		String selectDetailSQL = "SELECT no, type, title, detail, posted"
								+" FROM board"
								+" WHERE no = ? and type=0";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectDetailSQL);
			pstmt.setInt(1,boardNo);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				int no = rs.getInt("no");
				int type = rs.getInt("type");
				String title = rs.getString("title");
				String detail = rs.getString("detail");
				String pdate = rs.getString("posted");
				b = new Board(no, type, title, detail, pdate);
			}
		} finally {
			MyConnection.close(rs, pstmt, con);
		}
		return b;
	}
	public static void main(String[] args) {
		BoardDAOOracle test = new BoardDAOOracle();
		int page=1;
		int boardNo = 2;
		try {
			List<Board>list = test.selectAll(page);
			for(Board b:list) {
				System.out.println(b);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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