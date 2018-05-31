package dao;

import vo.foodtruck;
import vo.foodtruck_location;

public interface FoodtruckDAO {
	public void insertfoodtruck(foodtruck_location fc) throws Exception;
	void insert(foodtruck ft) throws Exception;
}
