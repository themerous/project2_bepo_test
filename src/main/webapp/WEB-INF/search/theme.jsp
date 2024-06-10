<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    function themeShowRoom(theme) {
    	$.ajax({
		 	type:"post",
		 	dataType:"json",
		 	url:"./themesearch",
		 	data: {"theme": theme},
		 	success:function(listDto){
		 		$("#region-search-result").html("");
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
    }
</script>
<div class="search theme">
    <div class="region-container">
        <h3 class="check-reserve-bold">테마로 숙소를 빠르게 골라보세요!</h3>
        <h6 class="region-h6">8가지 해시태그를 클릭하면 해당 테마의 숙소를 볼 수 있어요</h6>
        <div class="theme-hashtag-container">
            <div class="theme-hashtag" style="background-color: #d4af7a" onclick="themeShowRoom('풀빌라')">#풀빌라</div>
            <div class="theme-hashtag" style="background-color: darkseagreen;" onclick="themeShowRoom('독채')">#독채</div>
            <div class="theme-hashtag" style="background-color: pink; " onclick="themeShowRoom('캠핑')">#캠핑</div>
            <div class="theme-hashtag" style="background-color: khaki; " onclick="themeShowRoom('애견동반')">#애견동반</div>
            <div class="theme-hashtag" style="background-color: lightsteelblue" onclick="themeShowRoom('바베큐')">#바베큐</div>
            <div class="theme-hashtag" style="background-color: lightgoldenrodyellow" onclick="themeShowRoom('키즈')">#키즈</div>
            <div class="theme-hashtag" style="background-color: navajowhite" onclick="themeShowRoom('스파')">#스파</div>
            <div class="theme-hashtag" style="background-color: silver" onclick="themeShowRoom('수영장')">#수영장</div>
        </div>
    </div>
    <div id="spacer" style="height: 300px"></div>
    <div id="region-search-result">
	</div>
</div>
