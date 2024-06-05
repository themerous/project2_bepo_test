<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    function inputPh(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    }
</script>
<div style="width: 900px; margin: 100px auto 100px;">
	<h3>${pension_name} 예약정보 작성</h3>
	<form action="./createReservation" method="post">
		<input type="hidden" name="pension_num" value="${pension_num}">
		<div class="form-group">
			<label for="reserveInputDate">예약일</label>
		    <input required type="text" name="reserve_date" class="form-control" id="reserveInputDate" aria-describedby="dateHelp" placeholder="YYYY-MM-DD">
		    <small id="dateHelp" class="form-text text-muted">YYYY-MM-DD 형식으로 작성해주세요</small>
		</div>
		<div class="form-group">
		    <label for="reserveInputName">예약자명</label>
		    <input required type="text" name="name" class="form-control" id="reserveInputName" placeholder="이름을 입력해주세요...">
		</div>
		<div class="form-group">
		    <label for="reserveInputNight">총 숙박일</label>
		    <input required type="number" name="night" class="form-control" id="reserveInputName" value="1">
		</div>
		<div class="form-group">
		    <label for="reserveInputEmail">E-Mail</label>
		    <input required type="email" name="email" class="form-control" id="reserveInputEmail" placeholder="example@example.com">
		</div>
		<div class="form-group">
		    <label for="reserveInputPhone">Phone</label>
		    <input required type="text" name="phone" oninput="inputPh(this)" maxlength="13"
		    class="form-control" id="reserveInputPhone" placeholder="'-'없이 숫자만 입력해주세요">
		</div>
		<button type="submit" class="btn btn-primary" 
		style="width: 100%; height: 50px; margin-top: 50px;">예약확정</button>
	</form>
</div>