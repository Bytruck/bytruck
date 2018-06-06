package service;

import java.util.List;

import dao.ReviewDAO;
import dao.ReviewDAOOracle;
import vo.Review;

public class ReviewService {
	private ReviewDAO dao = new ReviewDAOOracle();
	
	//여행후기 글쓰기 등록
	public void reviewwrite(Review rv) throws Exception {
		dao.insertreview(rv);
	}
	
	//여행후기 리스트
	public List<Review> findAll() throws Exception {
		List<Review> list = dao.selectAll();
		if(list.size() ==0) {
			throw new Exception("등록된 여행후기가 없습니다.");
		}
		return list;
	}
	
	//여행후기 디테일
	public Review findDetail(int bnum) throws Exception {
	      return dao.selectDetail(bnum);
	}

}
