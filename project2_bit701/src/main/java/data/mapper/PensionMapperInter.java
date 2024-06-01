package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import data.dto.PensionDto;

@Mapper
public interface PensionMapperInter {
	@Select("select * from pension order by num desc")
	public List<PensionDto> getAllPension();
}
