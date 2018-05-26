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
		System.out.print(boardNum);
		System.out.println(boardNum);
		dao.deleteBoard(boardNum);
	};
}
