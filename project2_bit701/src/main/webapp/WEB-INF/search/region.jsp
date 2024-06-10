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
		citySelect.innerHTML = '<option selected class="region-selected" value="">도시를 선택하세요</option>';

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
    		 		$("#spacer").remove();
    		 		let s = '';
    			 	for(dto of listDto) {
    			 		s += '<div class="region-search-row">'
						s += '<div style="width: 500px; height: 350px;"><img class="region-img" src="https://kr.object.ncloudstorage.com/bitcamp701-129/pension/' + dto.pension_name + '/1.jpeg"></div>';
						s += '<div class="region-search-row-content"><div style="display: flex;"><h4>' + dto.pension_name 
							+ '</h4><a style="color:black; margin-left: 10px;" href="./detail?num=' + dto.num + '">자세히 보기</a>' 
							+ '</div><textarea readonly class="search-textarea">' 
							+ dto.pension_info + '</textarea></div></div>';
    				}
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
	<option selected class="region-selected" value="">지역을 선택하세요</option>
	<option value="경기">경기도</option>
	<option value="강원">강원도</option>
	<option value="충남">충청남도</option>
	<option value="전남">전라남도</option>
	<option value="제주">제주도</option>
</select>
<select id="city" class="region-select">
	<option selected class="region-selected" value="">도시를 선택하세요</option>
</select>
	<button type="button" class="btn-region-search" id="btn-region-search">search</button>
</div>
<div id="spacer" style="height: 400px;"></div>
<div id="region-search-result">
</div>
