package dao;

import vo.board;

public interface BoardDAO {
	public void insertboard(board board) throws Exception;
	public void deleteBoard(int boardNum) throws Exception;
	
}
