package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sql.MyConnection;
import vo.Tripcourse;

public class CourseDAOOracle implements CourseDAO
{

	@Override
	public void insertcourse(Tripcourse course) {
		Connection con = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		
		String insertSQl = "insert into course(no, user_id, trip_date, withyn, openyn, title, detail)\r\n" + 
				"values (course_no_seq.nextval, ?, to_char(to_date(?, 'yyyy.mm.dd')), ?, ?, ?, ?)";
		String insertSQL2 =	"insert into detail_course(no, step, latitude, longtitude)\r\n" + 
				"values(course_no_seq.currval, detailcourse_no_seq.nextval, ?, ?)";
		System.out.println("oracle");
		
		try {
			con = sql.MyConnection.getConnection();	
			pstmt = con.prepareStatement(insertSQl);
			pstmt.setString(1, course.getUser());
			pstmt.setString(2, course.getDate());
			pstmt.setString(3, course.getWith());
			pstmt.setString(4, course.getOpen());
			pstmt.setString(5, course.getTitle());
			pstmt.setString(6, course.getDetail());
			pstmt.executeUpdate();
			
			pstmt2 = con.prepareStatement(insertSQL2);
			pstmt2.setDouble(1, course.getYlocation());
			pstmt2.setDouble(2, course.getXlocation());
			pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			MyConnection.close(pstmt);
			MyConnection.close(pstmt2,con);
		}		
	}

	@Override
	public List<Tripcourse> listcourse() { //미완성
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Tripcourse> list = new ArrayList<Tripcourse>();
		
		String insertSQL = "select title, good\r\n" + 
							"from course";
		
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(insertSQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {	
				Tripcourse tc = new Tripcourse();
				tc.setTitle(rs.getString(1));
				tc.setGood(rs.getInt(2));
				list.add(tc);
			}		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MyConnection.close(pstmt, con);
		}
		System.out.println(list);
		return list;
	}

	@Override
	public List<Tripcourse> detailcourse() throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Tripcourse> list = new ArrayList<Tripcourse>();
		
		String selectSQL = "select dc.LATITUDE, dc.LONGTITUDE\r\n" + 
				"from course c join detail_course dc\r\n" + 
				"on c.no = dc.no";
		try {
			con=MyConnection.getConnection();
			pstmt = con.prepareStatement(selectSQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new Tripcourse(
							rs.getDouble("latitude"),
							rs.getDouble("longtitude")
						));
			}
			return list;
		}
		finally {
			MyConnection.close(rs, pstmt, con);			
		}
		
	}
}
