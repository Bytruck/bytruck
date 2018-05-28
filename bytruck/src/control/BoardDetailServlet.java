package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import vo.Board;

/**
 * Servlet implementation class BoardDetailServlet
 */
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BoardService service = new BoardService();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파라미터로 넘어온 글번호를 가져온다.
		String num = request.getParameter("num");
		System.out.println("num값"+num);
		int boardNum = Integer.parseInt(num);
		request.setAttribute("board", boardNum);
		try {
			Board board = service.findDetail(boardNum);
			request.setAttribute("board", board);
			System.out.println("서블릿에서 board값이 뭐냐: " + board);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("result", e.getMessage());
		}		
		RequestDispatcher rd;
		String forwardURL = "brand/notice_detail.jsp";
		System.out.println("forward");
		rd = request.getRequestDispatcher(forwardURL);
		rd.forward(request, response);		
	}
}
