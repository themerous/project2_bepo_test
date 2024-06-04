package data.controller;

import org.springframework.beans.factory.annotation.Autowired;

import data.service.ReserveService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReserveController {
	@Autowired
	private ReserveService service;

	@GetMapping("/reserve/reserve")
	public String move2reserve() {
		return "reserve/reserve";
	}
	@GetMapping("/reserve/check_reservation")
	public String move2checkreserve() {
		return "reserve/check_reservation";
	}
}
