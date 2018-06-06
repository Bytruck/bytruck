package dao;

import java.util.List;

import vo.Advertisement;

public interface AdvertiseDAO {
	public void insertAd(Advertisement ad) throws Exception;
	public List<Advertisement> selectAll() throws Exception;
	public List<Advertisement> selectAllAd() throws Exception;
	public Advertisement selectDetail(int no) throws Exception;
	
}
