package dao;

import java.util.List;

import vo.Board;

public interface BoardDAO {
	public void insertboard(Board board) throws Exception;
	public List<Board> getBoardList(int page) throws Exception;
	int selectCount() throws Exception;
	public Board selectDetail(int boardNo) throws Exception;
	public void deleteBoard(int boardNum) throws Exception;
}
