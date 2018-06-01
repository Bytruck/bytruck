package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sql.MyConnection;
import vo.Tripcourse;

public class CourseDAOOracle implements CourseDAO
{

	@Override
	public void insertcourse(Tripcourse course) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		/*String insertSQL = "insert into course(no, user_id, trip_date, withyn, openyn, title, detail, views, good)\r\n" + 
				"values (course_no_seq.nextval, ?, to_char(to_date('?', 'yyyy.mm.dd')),?,?,?,?,?,?)";*/
		
		String insertSQL = "insert into course(no, user_id, trip_date, withyn, openyn, title, detail)\r\n" + 
				"values (course_no_seq.nextval, ?, to_char(to_date(?, 'yyyy.mm.dd')),?,?,?,?)";
		System.out.println("oracle");
		
		try {
			con = sql.MyConnection.getConnection();
			pstmt = con.prepareStatement(insertSQL);
			pstmt.setString(1, course.getUser());
			pstmt.setString(2, course.getDate());
			pstmt.setString(3, course.getWith());
			pstmt.setString(4, course.getOpen());
			pstmt.setString(5, course.getTitle());
			pstmt.setString(6, course.getDetail());
/*			pstmt.setString(7, course.getOpen());
			pstmt.setString(8, course.getGood());*/
			pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			MyConnection.close(pstmt, con);
		}		
	}
}
