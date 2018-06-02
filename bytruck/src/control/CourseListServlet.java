package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CourseService;
import vo.Tripcourse;

/**
 * Servlet implementation class CourseListServlet
 */
public class CourseListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CourseService service = new CourseService();
    private Tripcourse tc = new Tripcourse();
    
	
    public CourseListServlet() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String good = request.getParameter("good");
		int up = Integer.parseInt(good);
		System.out.println("1");
		
		//List<Tripcourse> list = new ArrayList<Tripcourse>();
		
		try {
			request.setAttribute("list", service.list());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String forwardURL = "/course/viewcourse.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
	}
	

}
