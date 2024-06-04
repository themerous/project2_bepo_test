<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div>
	<form action="./createReservation" method="post">
		<input type="text" name="reserve_date" placeholder="날짜">
		<input type="text" name="name">
		<input type="number" name="night">
		<input type="text" name="email">
		<input type="text" name="phone">
		<input type="hidden" name="pension_num" value="1">
		<button type="submit">입력</button>
	</form>	
</div>