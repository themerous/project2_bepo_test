package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.PensionDto;
import data.mapper.PensionMapperInter;

@Service
public class PensionService {
	@Autowired
	private PensionMapperInter inter;
	
	// PensionDto 값들 처리
	public List<PensionDto> getAllPension() {
		List<PensionDto> pensionList = inter.getAllPension();
		return pensionList;
	}
	public List<PensionDto> getRegionSearchResult(int region) {
		List<PensionDto> pensionList = inter.getRegionSearchResult(region);
		return pensionList;
	}
	public PensionDto getPension(int num) {
		return inter.getPension(num);
	}
	
	// RegionDto 값들 처리
	public int getRegionNum(String state, String city) {
		return inter.getRegionNum(state, city);
	}
	public List<Integer> getAllRegionNum(String state) {
		return inter.getAllRegionNum(state);
	}
}
