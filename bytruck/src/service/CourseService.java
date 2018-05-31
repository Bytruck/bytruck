package service;

import dao.CourseDAO;
import dao.CourseDAOOracle;
import vo.Tripcourse;

public class CourseService {
	private CourseDAO dao = new CourseDAOOracle();
	public void write(Tripcourse course) throws Exception{
		dao.insertcourse(course);
	};
}
