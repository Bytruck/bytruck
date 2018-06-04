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

public class CourseWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CourseService service =  new CourseService();
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String idValue = session.getAttribute("loginInfo").toString();
		String title = request.getParameter("title");
		String detail = request.getParameter("detail");
		String with = request.getParameter("withradio");
		String open = request.getParameter("openradio");
		String date = request.getParameter("opendate");
		String xlocation = request.getParameter("xlocation");
		String ylocation = request.getParameter("ylocation");
		
		String[] xloca = xlocation.split("/");
		String[] yloca = ylocation.split("/");
		
		for(int i=0; xloca.length > i; i++) {
			Double.parseDouble(xloca[i]);
		}
		
		double xloc = Double.parseDouble(xlocation);
		double yloc = Double.parseDouble(ylocation);
		
		System.out.println("servelt");
		System.out.println(idValue);
		System.out.println(title);
		System.out.println(detail);
		System.out.println(with);
		System.out.println(open);
		System.out.println(date);
		System.out.println(xloc);
		System.out.println(yloc);
		
		Tripcourse course = new Tripcourse();
	   
	    course.setUser(idValue);
	    course.setTitle(title);
	    course.setDetail(detail);
	    course.setWith(with);
	    course.setOpen(open);
		course.setDate(date);
		course.setXlocation(xloc);
		course.setYlocation(yloc);
		
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
