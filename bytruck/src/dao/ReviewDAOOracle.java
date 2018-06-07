package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.Advertisement;
import vo.Review;

public class ReviewDAOOracle implements ReviewDAO {

	//여행후기 글쓰기
	@Override
	public void insertreview(Review rv) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		String insertSQL = "insert into review(no, user_id, trip_date, title, detail, posted, latitude, longtitude) "
				+ "values(review_no_seq.nextval, ?, to_char(to_date(?, 'yyyy-mm-dd')), ?, ?, sysdate, ?, ?)";
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(insertSQL);
			pstmt.setString(1, rv.getUser_id());
			pstmt.setString(2, rv.getTrip_date());
			pstmt.setString(3, rv.getTitle());
			pstmt.setString(4, rv.getDetail());
			pstmt.setString(5, rv.getLatitude());
			pstmt.setString(6, rv.getLongtitude());
									
			pstmt.executeUpdate();
		}finally {
			MyConnection.close(pstmt, con);			
		}

	}

	//여행후기 리스트
	@Override
	public List<Review> selectAll() throws Exception {
		List<Review> list = new ArrayList<>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = sql.MyConnection.getConnection();
			String selectAllSQL =
					"SELECT user_id, no, title, posted "
					+ " FROM Review"
					+ " ORDER BY no desc";
			pstmt = con.prepareStatement(selectAllSQL);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new Review(
					rs.getInt("no"),	
					rs.getString("user_id"),
					rs.getString("title"),
					rs.getString("posted")));
			}
		} finally {
			MyConnection.close(rs, pstmt, con);
		}
		return list;
	}
	
	   @Override
	      public Review selectDetail(int rnum) throws Exception {
	         Connection con = null;
	          PreparedStatement pstmt = null;
	          ResultSet rs = null;
	          Review r = new Review();
	          try {
	               String selectDetailSQL = "SELECT no, user_id, trip_date, title, detail, posted, latitude, longtitude" 
	                                 + " FROM review" 
	                                 + " WHERE no = ?"
	                                 +" ORDER BY no desc";
	               con = sql.MyConnection.getConnection();
	               pstmt = con.prepareStatement(selectDetailSQL);
	               pstmt.setInt(1, rnum);
	               rs = pstmt.executeQuery();
	               if (rs.next()) {
	                  int no = rnum;
	                  String id = rs.getString("user_id");
	                  String tdate = rs.getString("trip_date");
	                  String title= rs.getString("title");
	                  String detail = rs.getString("detail");
	                  String pdate = rs.getString("posted");
	                  String latitude=rs.getString("latitude");
	                  String longtitude = rs.getString("longtitude");
	                  r = new Review(no, id, tdate, title, detail, pdate, latitude,
	                       longtitude);
	                  
	               }
	            } finally {
	               MyConnection.close(rs, pstmt, con);
	            }
	            return r;
	      }
	}