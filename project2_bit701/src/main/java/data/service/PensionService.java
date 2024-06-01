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
	
	public List<PensionDto> getAllPension() {
		List<PensionDto> pensionList = inter.getAllPension();
		return pensionList;
	}
}
