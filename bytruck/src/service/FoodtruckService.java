package service;

import dao.FoodtruckDAO;
import dao.FoodtruckDAOOracle;
import vo.foodtruck_location;

public class FoodtruckService {
	private FoodtruckDAO dao = new FoodtruckDAOOracle();
	public void foodtruckwrite(foodtruck_location fc) throws Exception{
		dao.insertfoodtruck(fc);
	}

}
