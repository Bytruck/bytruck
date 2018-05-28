package service;

import dao.BoardDAO;
import dao.BoardDAOOracle;
import vo.board;

public class BoardService {
	private BoardDAO dao = new BoardDAOOracle();
	public void addWrite(board board) throws Exception{
		dao.insertboard(board);
	};
	public void Delete(int boardNum) throws Exception{
		dao.deleteBoard(boardNum);
		System.out.println(boardNum);
	};
	public int findCount() throws Exception{
		return dao.selectCount();
	}
	public List<board> findAll(int page) throws Exception{
		return dao.getBoardList(page);
	}
}
