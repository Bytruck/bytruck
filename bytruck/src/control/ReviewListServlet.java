package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ReviewService;
import vo.Review;

public class ReviewListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ReviewService service = new ReviewService();   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			List<Review> list = service.findAll();
			request.setAttribute("list", list);
			System.out.println(list);
		} catch (Exception e) {
			request.setAttribute("result", e.getMessage());
		}
		String forwardURL = "course/reviewlistresult.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);
	}

}
