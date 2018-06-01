package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

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
		String date = request.getParameter("opendate");
		
		Tripcourse course = new Tripcourse();
		System.out.println("servelt");
		
		HttpSession session = request.getSession();
	    String idValue = session.getAttribute("loginInfo").toString();
	    
	    System.out.println(title);
	    System.out.println(detail);
	    System.out.println(open);
	    System.out.println(with);
	    System.out.println(date);
	    
		
	    course.setUser(idValue);
		course.setDate(date);
		course.setDetail(detail);
		course.setOpen(open);
		course.setTitle(title);
		course.setWith(with);
		
		try {
			service.write(course);
			request.setAttribute("result", 1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("result", 0);
		}
		String forwardURL = "/couse/courseWriteResult.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
	}
}
