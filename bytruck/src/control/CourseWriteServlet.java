package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CourseService;
import vo.Tripcourse;

/**
 * Servlet implementation class CourseWriteServlet
 */
public class CourseWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CourseService service =  new CourseService();
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String detail = request.getParameter("detail");
		String with = request.getParameter("withradio");
		String open = request.getParameter("openradio");
		String region = request.getParameter("region");
		String date = request.getParameter("opendate");
		
		Tripcourse course = new Tripcourse();
		
		course.setDate(date);
		course.setDetail(detail);
		course.setOpen(open);
		course.setRegion(region);
		course.setTitle(title);
		course.setWith(with);
		
		service.
		
		
	}

}
