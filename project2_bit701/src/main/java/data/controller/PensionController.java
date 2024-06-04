package data.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.PensionDto;
import data.service.PensionService;

@Controller
public class PensionController {
	@Autowired
	private PensionService service;
	
	
	// 지역검색 관련 매핑들
	@GetMapping("/search/region")
	public String regionSearch() {
		return "search/region";
	}
	@GetMapping("/search/detail")
	public String searchDetail(
			@RequestParam int num,
			Model model) {
		PensionDto dto = service.getPension(num);
		model.addAttribute("dto", dto);
		
		return "search/detail";
	}
	
	@ResponseBody
	@PostMapping("/search/regionsearch")
	public List<PensionDto> getRegionSearchResult(
			@RequestParam(defaultValue = "") String state,
			@RequestParam(defaultValue = "") String city) {
		if(state.equals("")) {
			return service.getAllPension();
		}
		if(city.equals("")) {
			List<PensionDto> list = new ArrayList<>();
			for(int c: service.getAllRegionNum(state)) {
				for(PensionDto dto: service.getRegionSearchResult(c)) {
					list.add(dto);
				}
			}
			return list;
		}
		return service.getRegionSearchResult(service.getRegionNum(state, city));
	}
	
	// 테마검색 관련 매핑들
	@GetMapping("/search/theme")
	public String themeSearch() {
		return "search/theme";
	}
}
