<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    function themeShowRoom() {
        let resultDiv = document.getElementById('region-search-result');
        if (resultDiv.style.display === 'none' || resultDiv.style.display === '') {
            resultDiv.style.display = 'block';
        } else {
            resultDiv.style.display = 'none';
        }
    }
</script>
<div class="search theme">
    <div class="region-container">
        <h3 class="check-reserve-bold">테마로 숙소를 빠르게 골라보세요!</h3>
        <h6 class="region-h6">8가지 해시태그를 클릭하면 해당 테마의 숙소를 볼 수 있어요</h6>
        <div class="theme-hashtag-container">
            <div class="theme-hashtag" style="background-color: #d4af7a" onclick="themeShowRoom()">#풀빌라</div>
            <div class="theme-hashtag" style="background-color: darkseagreen;" onclick="themeShowRoom()">#독채</div>
            <div class="theme-hashtag" style="background-color: pink; " onclick="themeShowRoom()">#캠핑</div>
            <div class="theme-hashtag" style="background-color: khaki; " onclick="themeShowRoom()">#애견동반</div>
            <div class="theme-hashtag" style="background-color: lightsteelblue" onclick="themeShowRoom()">#바베큐</div>
            <div class="theme-hashtag" style="background-color: lightgoldenrodyellow" onclick="themeShowRoom()">#키즈</div>
            <div class="theme-hashtag" style="background-color: navajowhite" onclick="themeShowRoom()">#스파</div>
            <div class="theme-hashtag" style="background-color: silver" onclick="themeShowRoom()">#수영장</div>
        </div>
    </div>
    <div id="region-search-result" style="display: none">
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
</div>
