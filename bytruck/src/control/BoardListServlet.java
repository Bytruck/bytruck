package control;

import java.io.IOException;
import java.net.URL;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAOOracle;
import service.BoardService;
import vo.Board;


public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BoardService service = new BoardService();

    public BoardListServlet() {
        super();
     
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");		
		String pagetype = request.getParameter("pagetype");	
		int intPage = 1;
		
		if(page != null) {
			intPage = Integer.parseInt(page);	
		}
		try {
			int totalCount = service.findCount();
			int totalPage = 0;
			int cntPerPage = 10;
			totalPage = (int)Math.ceil((double)totalCount/cntPerPage);
			
			int cntPerPageGroup=10;
			int startPage = (int)Math.floor((double)(intPage)/(cntPerPageGroup+1))*cntPerPageGroup+1;
			int endPage = startPage + cntPerPageGroup-1;
			if(endPage > totalPage) {
				endPage=totalPage;
			}
			List<Board> list = service.findAll(intPage);
			vo.PageBean<Board> pb = new vo.PageBean<>();
			pb.setCurrentPage(intPage);
			pb.setEndPage(endPage);
			pb.setList(list);
			pb.setStartPage(startPage);
			pb.setTotalPage(totalPage);
			request.setAttribute("PageBean", pb);
			

			
		}catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("result", e.getMessage());
		}
				
		int pagety =0;
		pagety = Integer.parseInt(pagetype);
		RequestDispatcher rd;
		if(pagety == 0) {		
			String forwardURL = "brand/notice.jsp";
			rd = request.getRequestDispatcher(forwardURL);
			rd.forward(request, response);
		}else if(pagety == 1) {
		
			String forwardURL = "board/qna.jsp";
			rd = request.getRequestDispatcher(forwardURL);
			rd.forward(request, response);
		}
		
		

		
	}

	public int pagetyp(int pagety) {
		this.pagetyp(pagety);
		return pagety;
		
	}

}





















