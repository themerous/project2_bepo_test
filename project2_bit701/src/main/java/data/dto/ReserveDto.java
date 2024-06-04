package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Alias("ReserveDto")
public class ReserveDto {
	private int num;
	private String name;
	private String email;
	private String phone;
	private String reserve_num;
	private int pension_num;
	private String reserve_date;
	private int night;
}
