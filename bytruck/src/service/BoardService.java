package service;

import dao.BoardDAO;
import dao.BoardDAOOracle;
import vo.board;

public class BoardService {
	private BoardDAO dao = new BoardDAOOracle();
	public void Delete(int boardNum) throws Exception{
		//System.out.print(boardNum);
		dao.deleteBoard(boardNum);
	};
}
