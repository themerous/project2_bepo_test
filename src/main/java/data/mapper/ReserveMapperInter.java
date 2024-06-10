package data.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import data.dto.ReserveDto;

@Mapper
public interface ReserveMapperInter {
	@Select("select * from reservation where name=#{name} and phone=#{phone} and reserve_num=#{reserve_num}")
	public ReserveDto getReserve(String name, String phone, String reserve_num);

	@Insert("""
			insert into reservation (name, email, phone, reserve_num, pension_num, reserve_date, night)
			values (#{name}, #{email}, #{phone}, #{reserve_num}, 1, #{reserve_date}, #{night})""")
	public void makeReservation(ReserveDto dto);
}
