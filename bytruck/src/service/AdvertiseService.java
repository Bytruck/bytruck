package service;

import java.util.List;

import dao.AdvertiseDAO;
import dao.AdvertiseDAOOracle;
import vo.Advertisement;

public class AdvertiseService {
	private AdvertiseDAO dao = new AdvertiseDAOOracle();
	
	public void adwrite(Advertisement ad) throws Exception{
		dao.insertAd(ad);
	}
	
	//배너광고신청 리스트
	public List<Advertisement> findAll() throws Exception {
		List<Advertisement> list = dao.selectAll();
		if(list.size() ==0) {
			throw new Exception("신청된 배너광고가 없습니다.");
		}
		return list;
	}
	
	public List<Advertisement> findAllAd() throws Exception {
		return dao.selectAllAd();
	}
	public Advertisement findDetail(int no) throws Exception {
		return dao.selectDetail(no);
	}
}
