package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import sql.MyConnection;
import vo.board;

public interface BoardDAO {

	public int selectCount() throws Exception;
	public List<board> getBoardList(int page) throws Exception;
	
}