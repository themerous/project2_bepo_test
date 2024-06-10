package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import data.dto.PensionDto;

@Mapper
public interface PensionMapperInter {
	// Pension 테이블 사용
	@Select("select * from pension order by num asc")
	public List<PensionDto> getAllPension();
	@Select("select * from pension where region = #{region} order by num asc")
	public List<PensionDto> getRegionSearchResult(int region);
	@Select("select * from pension where num=#{num}")
	public PensionDto getPension(int num);
	@Select("select * from pension where theme like CONCAT('%', #{theme_tag}, '%')")
	public List<PensionDto> getThemeSearchResult(String theme_tag);
	
	// Region_Tag 테이블 사용
	@Select("select num from region_tag where state=#{state} and city=#{city}")
	public int getRegionNum(String state, String city);
	@Select("select num from region_tag where state=#{state}")
	public List<Integer> getAllRegionNum(String state);
	
	// Theme_Tag 테이블 사용
	@Select("select num from theme_tag where theme=#{theme}")
	public String getThemeNum(String theme);
}
