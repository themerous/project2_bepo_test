package data.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;

import data.dto.PensionDto;
import data.dto.ReserveDto;
import data.service.PensionService;
import data.service.ReserveService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReserveController {
	@Autowired
	private ReserveService service;
	@Autowired
	private PensionService penService;

	@GetMapping("/reserve/reserve")
	public String move2reserve() {
		return "reserve/reserve";
	}
	@GetMapping("/reserve/check_reservation")
	public String move2checkreserve(
			@RequestParam String name,
			@RequestParam String phone,
			@RequestParam String reserve_num,
			Model model) {
		ReserveDto dto = service.getReserve(name, phone, reserve_num);
		PensionDto penDto = new PensionDto();
		if(dto == null) {
			
		}else {
			penDto = penService.getPension(dto.getPension_num());
		}
		model.addAttribute("reserve", dto);
		model.addAttribute("pension", penDto);
		
		return "reserve/check_reservation";
	}
	
	
	// making reservation
	@GetMapping("/form/reserve")
	public String toReservationForm() {
		return "form/reserve";
	}
	@PostMapping("/form/createReservation")
	public String makeReservation(
			@RequestParam String reserve_date,
			@RequestParam String name,
			@RequestParam int night,
			@RequestParam String email,
			@RequestParam String phone,
			@RequestParam int pension_num) {
		ReserveDto dto = ReserveDto.builder()
			.reserve_date(reserve_date)
			.name(name).email(email)
			.phone(phone).night(night)
			.pension_num(pension_num)
			.build();
		String resNum = UUID.randomUUID() + "";
		dto.setReserve_num(resNum);
		
		service.makeReservation(dto);
		
		return "redirect:/reserve/check_reservation?name="
				+dto.getName()+"&phone="+dto.getPhone()
				+"&reserve_num="+resNum;
	}
}
