package service;

import dao.BoardDAO;
import dao.BoardDAOOracle;
import vo.board;

public class BoardService {
	private BoardDAO dao = new BoardDAOOracle();
	public void write(board board) throws Exception{
		dao.insertboard(board);
	}
}
