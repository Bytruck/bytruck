package service;

import dao.FoodtruckDAO;
import dao.FoodtruckDAOOracle;
import vo.Foodtruck;
import vo.Foodtruck_Location;

public class FoodtruckService {
	private FoodtruckDAO dao = new FoodtruckDAOOracle();

	public void signup(Foodtruck ft) throws Exception {
		dao.insert(ft);
	}

	public void foodtruckwrite(Foodtruck_Location fc) throws Exception{
		dao.insertfoodtruck(fc);
	}
}
