<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script>
    function inputPh(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    }

</script>
<div class="reservation-cont">
    <div class="reservation-form">
        <h2 class="reservation-top">Welcome back :)</h2><br>
        <label>
            <span>예약자명</span>
            <input type="text" class="reservation_name" id="reservation_name" />
        </label>
        <label>
            <span>전화번호</span>
            <input type="text" id="reservation_ph" oninput="inputPh(this)" maxlength="13" placeholder=" '-' 없이 숫자만 입력해주세요"/>
        </label>
        <label>
            <span>예약번호</span>
            <input type="text" class="reservation_num" id="reservation_num" >
        </label>
        <button type="button" class="submit" onclick="location.href='./check_reservation'">조회하기</button>

        <div class="reserve_img">
            <div class="img__text m--up">
                <h2 >예약하기</h2>
                <p>새로운 숙소를 둘러보러 가실까요?</p>
                <button type="button" class="gotoreserve-btn" onclick="location.href='../'">숙소 예약하러 가기</button>
            </div>
        </div>
    </div>

</div>
