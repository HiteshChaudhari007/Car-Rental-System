package com.car.service;

import java.util.List;

import com.car.model.car;

public interface carService {

	boolean chekAdmin(String user, String pass);

	boolean addCar(car car1);

	List<car> getAllCars();

	boolean getCar(int id, String name);

	boolean returnCar(int id, String name);

}
