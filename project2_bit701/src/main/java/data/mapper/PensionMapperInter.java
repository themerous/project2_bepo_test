package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import data.dto.PensionDto;

@Mapper
public interface PensionMapperInter {
	// Pension 테이블 사용
	@Select("select * from pension order by num desc")
	public List<PensionDto> getAllPension();
	@Select("select * from pension where region = #{region}")
	public List<PensionDto> getRegionSearchResult(int region);
	@Select("select * from pension where num=#{num}")
	public PensionDto getPension(int num);
	
	// Region_Tag 테이블 사용
	@Select("select num from region_tag where state=#{state} and city=#{city}")
	public int getRegionNum(String state, String city);
	@Select("select num from region_tag where state=#{state}")
	public List<Integer> getAllRegionNum(String state);
}
