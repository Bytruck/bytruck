package control;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.FoodtruckService;
import vo.Foodtruck_Location;


public class FoodtruckWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FoodtruckService service = new FoodtruckService();
  	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		request.setCharacterEncoding("UTF-8");
  		String title = request.getParameter("title");
  		String opendate = request.getParameter("opendate");
  		String detail = request.getParameter("detail");
  		String powerlink_s = request.getParameter("powerlink");
  		
  		Foodtruck_Location fc = new Foodtruck_Location();
  		int powerlink = Integer.parseInt(powerlink_s);
  		fc.setTitle(title);
  		fc.setOpendate(opendate);
  		fc.setDetail(detail);
  		fc.setPoweryn(powerlink);
  		try {
			service.foodtruckwrite(fc);
			request.setAttribute("result", 1);
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("result", -1);
		}
		String forwardURL = "foodtruck/foodwriteresult.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
  		
	}

}
