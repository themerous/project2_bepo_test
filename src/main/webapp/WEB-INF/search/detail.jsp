<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="check-reserve-container">
	<div class="check-reserve-top">
	    <h4 class="check-reserve-bold">${dto.pension_name}</h4>
	    <h7>${dto.pension_addr}</h7>
	</div>
	<div class="check-reserve-middle-1">
		<div class="check-reserve-middle-2">
		    <div class="check-reserve-info-cont">
		        <p style="white-space: pre-line;">${dto.pension_info}</textarea>
		    </div>
		    <div class="check-reserve-info-center">
		        <p class="check-reserve-bold">check-in</p>
		        <p>오후 3:00</p>
		        <p class="check-reserve-bold"> >>> </p>
		        <p class="check-reserve-bold">check-out</p>
		        <p>오전 11:00</p>
		    </div>
		    <div class="check-reserve-info-bottom">
		        <div class="check-reserve-info-left">
		            <p>Price per night</p>
		            <p>Cleaning fee</p>
		        </div>
		        <div class="check-reserve-info-right">
		            <p>$144.99</p>
		            <p>$19.99</p>
		        </div>
		    </div>
		    <!--  <div class="check-reserve-info-bottom-2">
		        <div class="check-reserve-info-left">
		            <p class="check-reserve-bold">Total</p>
		        </div>
		        <div class="check-reserve-info-right">
		            <p class="check-reserve-bold">$29,017.99</p>
		        </div>
		    </div> -->
		</div>
		<div class="check-reserve-img">
		    <img class="check-reserve-img-1" src="https://kr.object.ncloudstorage.com/bitcamp701-129/pension/${dto.pension_name}/2.jpeg">
		    <img class="check-reserve-img-2" src="https://kr.object.ncloudstorage.com/bitcamp701-129/pension/${dto.pension_name}/3.jpeg">
			<div style="margin-top: 30px; text-align: center;">
				<button class="btn btn-outline-success" style="width: 70%; height: 80px;" type="button" onclick="location.href='/form/reserve?num=${dto.num}&penname=${dto.pension_name}'">예약하기</button>
			</div>
		</div>
	</div>
    <div class="check-reserve-comment">
        <div>
            <p>사용시 주의사항</p>
            <div class="check-reserve-comment-content">
                <p class="check-reserve-comment-letter"></p>
            </div>
            <p>환불 주의사항</p>
            <div class="check-reserve-comment-content">
                <p class="check-reserve-comment-letter">
                d - 30 : 100% 환불 가능 &nbsp;&nbsp;&nbsp;&nbsp;
                D - 7 : 80% 환불 가능 &nbsp;&nbsp;&nbsp;&nbsp;
                D - 1 : 50% 환불 가능</p>
            </div>
        </div>
    </div>
</div>