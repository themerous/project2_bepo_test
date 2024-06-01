package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Alias("PensionDto")
@Builder
public class PensionDto {
	private int num;
	private String room_type;
	private String pension_info;
	private String region;
	private String theme;
}
