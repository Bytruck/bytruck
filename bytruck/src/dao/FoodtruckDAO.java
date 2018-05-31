package dao;

import vo.Foodtruck;
import vo.Foodtruck_Location;

public interface FoodtruckDAO {
	public void insertfoodtruck(Foodtruck_Location fc) throws Exception;
	void insert(Foodtruck ft) throws Exception;
}
