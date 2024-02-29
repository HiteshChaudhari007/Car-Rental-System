package com.car.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.car.model.car;

@Repository
public class carDaoImpl implements carDao {

	@Autowired
	public SessionFactory factory;

	public boolean addCar(car car1) {
		try {
			Session session = factory.openSession();
			session.save(car1);
			session.beginTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public List<car> getAllCars() {
		try {

			Session session = factory.openSession();

			Query query = session.createQuery("from car");
			List<car> cars = query.getResultList();
			return cars;
		} catch (Exception e) {
			return null;
		}
	}

	public boolean getCar(int id, String name) {

		try {
			Session session = factory.openSession();
			car c = session.get(car.class, id);
			c.setCarRetelName(name);
			c.setIsCarAvailble("No");
			session.saveOrUpdate(c);
			session.beginTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public boolean returnCar(int id, String name) {
		try {
			Session session = factory.openSession();
			car c = session.get(car.class, id);
			if (c.getCarRetelName().equals(name)) {
				c.setIsCarAvailble("Yes");
				c.setCarRetelName("Null");
				session.saveOrUpdate(c);
				session.beginTransaction().commit();
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}

	}

}
