package com.car.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.car.model.car;
import com.car.service.carService;

@Controller
public class HomeController {

	@Autowired
	public carService service;

	@RequestMapping("/")
	public String onStart(Model model) {
		List<car> cars = service.getAllCars();
		if (cars != null) {
			model.addAttribute("data", cars);
			return "views/index.jsp";
		} else {
			return "Some Technical Issues";
		}
	}

	@RequestMapping("/login")
	public String adminLogin(@RequestParam String user, @RequestParam String pass) {
		boolean flag = service.chekAdmin(user, pass);
		if (flag) {
			return "views/reg.jsp";
		} else {
			return "views/index.jsp";
		}
	}

	@RequestMapping("/add")
	public String addCar(@ModelAttribute car car1, Model model) {

		boolean flag = service.addCar(car1);
		if (flag) {
			return "views/reg.jsp";
		}
		return "views/index.jsp";
	}

	@RequestMapping("/getCar")
	public String fillInfo(@RequestParam String name, @RequestParam String link, @RequestParam int price,
			@RequestParam int id, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("link", link);
		model.addAttribute("id", id);
		model.addAttribute("price", price);
		return "views/get.jsp";

	}

	@RequestMapping("/done")
	public String getCar(@RequestParam String name, @RequestParam int id, @RequestParam String link,
			@RequestParam String cname, Model model) {
		boolean flag = service.getCar(id, name);
		if (flag) {
			model.addAttribute("name", name);
			model.addAttribute("link", link);
			model.addAttribute("id", id);
			model.addAttribute("cname", cname);
			return "views/sucess.jsp";
		}
		return "views/reg.jsp";
	}

	@RequestMapping("/home")
	public String onStart2(Model model) {
		List<car> cars = service.getAllCars();
		if (cars != null) {
			model.addAttribute("data", cars);
			return "views/index.jsp";
		} else {
			return "Some Technical Issues";
		}
	}

	@RequestMapping("/return")
	public String returnCar(@RequestParam int id, @RequestParam String name, Model model) {
		boolean flag = service.returnCar(id, name);
		if (flag) {

			List<car> cars = service.getAllCars();
			if (cars != null) {
				model.addAttribute("data", cars);
				return "views/index.jsp";
			} else {
				return "Some Technical Issues";
			}
		}

		else {
			List<car> cars = service.getAllCars();
			if (cars != null) {
				model.addAttribute("data", cars);
				return "views/index.jsp";
			} else {
				return "Some Technical Issues";
			}

		}

	}
}
