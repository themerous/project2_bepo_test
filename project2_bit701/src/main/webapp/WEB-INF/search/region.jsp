<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<script type="text/javascript">
		function updateCities() {
			var regionSelect = document.getElementById("region");
			var citySelect = document.getElementById("city");
			var selectedRegion = regionSelect.value;

			var cities = {
				"경기": ["가평", "남양주"],
				"강원": ["양양", "강릉", "춘천"],
				"충남": ["태안"],
				"전남": ["여수", "순천"],
				"제주": ["제주", "서귀포"],
			};

			// 기존 도시 옵션 제거
			citySelect.innerHTML = '<option selected>도시를 선택하세요</option>';

			// 선택된 지역에 맞는 도시 옵션 추가
			if (cities[selectedRegion]) {
				for (var i = 0; i < cities[selectedRegion].length; i++) {
					var option = document.createElement("option");
					option.value = cities[selectedRegion][i];
					option.text = cities[selectedRegion][i];
					citySelect.appendChild(option);
				}
			}
		}
	</script>
<script>
		$(function(){
			$("#btn-region-search").click(function() {
				$.ajax({
    		 		type:"post",
    		 		dataType:"json",
    		 		url:"./regionsearch",
    		 		data:{"state":$("#region").val(), "city":$("#city").val()},
    		 		success:function(listDto){
    		 			let s = "<div>";
    			 		for(dto of listDto) {
							// s += '<img style="width: 200px; height: 150px;" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230310_271%2F1678419196944k2vcb_JPEG%2F2.JPG">';
							s += "<div>" + dto.pension_info + "</div>";
    			 		}
    			 		s += "</div>";
    			 		$("#region-search-result").html(s);
    		 		}
    	  		});
			});
		});
	</script>
<div class="region-container">
	<h3 class="check-reserve-bold">숙소를 검색해보세요!</h3>
	<h6 class="region-h6">지역과 도시 선택 후 검색해주세요</h6>
<select id="region" onchange="updateCities()" class="region-select">
	<option selected class="region-selected">지역을 선택하세요</option>
	<option value="경기">경기도</option>
	<option value="강원">강원도</option>
	<option value="충남">충청남도</option>
	<option value="전남">전라남도</option>
	<option value="제주">제주도</option>
</select>
<select id="city" class="region-select">
	<option selected class="region-selected">도시를 선택하세요</option>
</select>
	<button type="button" class="btn-region-search" id="btn-region-search">search</button>
</div>

<div id="region-search-result">
	<table>
		<tr>
			<td><img class="region-img" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230310_271%2F1678419196944k2vcb_JPEG%2F2.JPG"></td>
			<td valign="bottom">
				<div class="region-table-div">
					<h4 class="region-table-h4">숙소명</h4>
					<h6>설명 어쩌고 저쩌고 설명 어쩌고 저쩌고설명 어쩌고 저쩌고설명 어쩌고 저쩌고설명 어쩌고 저쩌고설명 어쩌고 저쩌고설명 어쩌고 저쩌고설명 어쩌고 저쩌고설명 어쩌고 저쩌고</h6>
				</div>
			</td>
		</tr>

	</table>

</div>
