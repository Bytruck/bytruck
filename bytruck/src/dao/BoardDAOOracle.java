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
							     + " WHERE type= 1";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(selectCountSQL);
			rs = pstmt.executeQuery();
			rs.next();
			int totalCount = rs.getInt("totalcnt");
			return totalCount;
		} finally {
			MyConnection.close(rs, pstmt, con);
		}
	}

	@Override
public List<Board> getBoardList(int page) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Board> list = new ArrayList<Board>();
		
		try {
			
		con = MyConnection.getConnection();
		
		String sql ="SELECT b.* \r\n" + 
				"FROM    (  SELECT rownum rnum, a.type, a.no, a.title, a.views, a.posted\r\n" + 
				"            FROM(   SELECT * \r\n" + 
				"                    FROM board \r\n" +
				"					 where type = 1" + 
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
			Board bl = new Board();
			bl.setNo(rs.getInt("no"));
			bl.setTitle(rs.getString("title"));
			bl.setViews(rs.getInt("views"));
			bl.setPosted(rs.getString("posted"));
			list.add(bl);
			System.out.println("DAOOracle 작동 됨");
		}

		}catch(Exception e) {
			e.getMessage();
		}finally {
			MyConnection.close(rs,pstmt,con);
		}
		return list;
		
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
			List<Board>list = test.getBoardList(page);
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