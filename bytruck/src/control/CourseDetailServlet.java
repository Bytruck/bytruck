package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CourseService;
import vo.Tripcourse;



public class CourseDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    CourseService service = new CourseService();
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		try {
			List<Tripcourse> list = service.detail();
			request.setAttribute("location", list);
			System.out.println(list);
		}catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("location", e.getMessage());
		}
		
		String forwardURL = "course/coursedetailresult.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);	
	}
}
