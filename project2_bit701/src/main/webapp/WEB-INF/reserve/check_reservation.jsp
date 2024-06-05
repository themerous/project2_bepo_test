<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="check-reserve-container">
	<div class="check-reserve-top">
	    <h4 class="check-reserve-bold">Reservation</h4>
	    <h7>Check your reservation</h7>
	</div>
	<div class="check-reserve-middle-1">
		<div class="check-reserve-middle-2">
		    <div class="check-reserve-info-cont">
		        <div class="check-reserve-info-left">
		            <p>Guest</p>
		            <p>Nights</p>
		            <p>Pension</p>
		            <p>Address</p>
		            <p>Date</p>
		        </div>
		        <div class="check-reserve-info-right">
		            <p>${reserve.name}</p>
		            <p>${reserve.night}</p>
		            <p>${pension.pension_name}</p>
		            <p>${pension.pension_addr}</p>
		            <p>${reserve.reserve_date}</p>
		        </div>
		    </div>
		    <div class="check-reserve-info-center">
		        <p class="check-reserve-bold">Reservation number</p>
		        <p>${reserve.reserve_num}</p>
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
		    <div class="check-reserve-info-bottom-2">
		        <div class="check-reserve-info-left">
		            <p class="check-reserve-bold">Total</p>
		        </div>
		        <div class="check-reserve-info-right">
		            <p class="check-reserve-bold">$29,017.99</p>
		        </div>
		    </div>
		</div>
		<div class="check-reserve-img">
		    <img class="check-reserve-img-1" src="/pension/${pension.pension_name}/2.jpeg">
		    <img class="check-reserve-img-2" src="/pension/${pension.pension_name}/3.jpeg">
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