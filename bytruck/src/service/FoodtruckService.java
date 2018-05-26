package service;

import dao.FoodtruckDAO;
import dao.FoodtruckDAOOracle;
import vo.foodtruck;

public class FoodtruckService {
	private FoodtruckDAO dao = new FoodtruckDAOOracle();

	public void signup(foodtruck ft) throws Exception {
		dao.insert(ft);
	}

}
