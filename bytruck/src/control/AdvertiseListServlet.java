package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AdvertiseService;
import vo.Advertisement;
import vo.Board;

public class AdvertiseListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private AdvertiseService service = new AdvertiseService();   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			List<Advertisement> list = service.findAll();
			request.setAttribute("list", list);
			System.out.println(list);
		} catch (Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		String forwardURL = "adboard/ad_listresult.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
	}
	

}
