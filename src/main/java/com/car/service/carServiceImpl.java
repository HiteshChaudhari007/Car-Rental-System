package com.car.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.dao.carDao;
import com.car.model.car;

@Service
public class carServiceImpl implements carService {

	@Autowired
	public carDao dao;

	public boolean chekAdmin(String user, String pass) {
		if (user.equals("Admin") && pass.equals("1234")) {
			return true;
		} else {
			return false;
		}
	}

	public boolean addCar(car car1) {
		return dao.addCar(car1);
	}

	public List<car> getAllCars() {
		return dao.getAllCars();
	}

	public boolean getCar(int id, String name) {

		return dao.getCar(id, name);
	}

	public boolean returnCar(int id, String name) {

		return dao.returnCar(id, name);
	}
}
