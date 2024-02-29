package com.car.dao;

import java.util.List;

import com.car.model.car;

public interface carDao {

	boolean addCar(car car1);

	List<car> getAllCars();

	boolean getCar(int id, String name);

	boolean returnCar(int id, String name);

}
