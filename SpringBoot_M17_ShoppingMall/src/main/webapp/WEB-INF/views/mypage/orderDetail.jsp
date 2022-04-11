<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerfooter/header.jsp" %>
<%@ include file="../include/sub03/sub_img.html" %>
<%@ include file="../include/sub03/sub_menu.jsp" %>

<article>
	<h2>My page (주문 상세 정보)</h2>
	<form name="formm" method="post">
		<h3>주문자 정보</h3>
		<table id="cartList">
			<tr><th>주문일자</th><th>주문번호</th><th>주문자</th><th>주문 총액</th></tr>
			<tr>
				<td><fmt:formatDate value="${orderDetail.INDATE}" type="date" /></td>
				<td>${orderDetail.OSEQ}</td>
				<td>${orderDetail.MNAME}</td>
				<td><fmt:formatNumber value="${totalPrice}"	type="currency"/></td>
			</tr>
		</table>
		<h3>주문 상품 정보</h3>
		<table id="cartList">
			<tr><th>상품명</th><th>상품별주문번호</th><th>수량</th><th>가격</th><th>처리상태</th></tr>
			<c:forEach items="${orderList}" var="ovo">
				<tr>
					<td>${ovo.PNAME }</td>
					<td>${ovo.OSEQ }</td>
					<td>${ovo.QUANTITY}</td>
					<td><fmt:formatNumber value="${ovo.PRICE2 }" type="currency"/></td>
					<td>
						<c:choose>
							<c:when test="${ovo.RESULT == '1' }">진행중</c:when>
							<c:otherwise><span style="color:red">처리완료</span></c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>
		<div class="clear"></div>
		<div id="buttons" style="float:right;">
			<input type="button" value="뒤로" class="cancel" onClick="history.go(-1)">
		</div>
	</form>
</article>

<%@ include file="../include/headerfooter/footer.jsp" %>


