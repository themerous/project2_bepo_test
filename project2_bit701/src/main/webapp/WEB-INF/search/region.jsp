<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<div class="search region">
	<input type="hidden" name="state" id="state" value="제주">
	<input type="hidden" name="city" id="city" value="">
	<button id="btn-region-search" type="submit" style="background-color: black;">입력</button>
	<div id="region-search-result" style="color: black;">
	</div>
	<script>
		$(function(){
			$("#btn-region-search").click(function() {
				$.ajax({
    		 		type:"post",
    		 		dataType:"json",
    		 		url:"./regionsearch",
    		 		data:{"state":$("#state").val(), "city":$("#city").val()},
    		 		success:function(listDto){
    		 			let s = "";
    			 		for(dto of listDto) {
    			 			s += "<div>" + dto.pension_info + "</div>";
    			 		}
    			 		$("#region-search-result").html(s);
    		 		}
    	  		});
			});
		});
	</script>
</div>