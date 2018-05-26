package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import dao.BoardDAO;

import javax.activation.ActivationDataFlavor;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.PageBean;
import vo.board_list;
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardListServlet() {
        super();
      
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		int intPage = 1;
		if(page != null) {
			intPage = Integer.parseInt(page);
		}
		BoardDAO dao = new BoardDAO();
		List<board> list;
		
		
		try {
			int totalCount = dao.selectCount();//게시물 총목록수
			//총 페이지수 계산
			int totalPage = 0;
			int cntPerPage = 10;
			totalPage = (int)Math.ceil((double)totalCount / cntPerPage);
			
			int cntPerPageGroup = 10;
			int startPage = (int)Math.floor((double)(intPage)/(cntPerPageGroup+1))*cntPerPageGroup + 1;
			int endPage = startPage + cntPerPageGroup - 1 ;
			if(endPage > totalPage) {
				endPage = totalPage;
			}
			list = dao.getBoardList(intPage);
			vo.PageBean<board> pb = new PageBean<>();
			pb.setCurrentPage(intPage);
			pb.setTotalPage(totalPage);
			pb.setList(list);
			pb.setStartPage(startPage);
			pb.setEndPage(endPage);
			
			request.setAttribute("pagebean", pb);
			System.out.println(pb.getList() + "list에 값이 없다");

			
//			request.setAttribute("list", list);
			
			String forwardURL = "board/qna.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(forwardURL);
			rd.forward(request, response);
			System.out.println("jsp로 전달");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	
		
	}

}