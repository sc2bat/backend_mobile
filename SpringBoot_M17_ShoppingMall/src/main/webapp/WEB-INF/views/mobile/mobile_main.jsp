<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/mobile/mobile_header.jsp" %>

<article>
<div id="sub_img"><img src="images/product/sub_img.jpg"></div>
<nav id="sub_menu">
    <ul>
		<c:choose>
			<c:when test="${empty loginUser}">
				<li><a href="loginForm">LOGIN</a></li>
				<li><a href="contract">JOIN</a></li>
				<li><a href="#" onclick="find_id_pw()">Find Id/Pw</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="memberEditForm">Edit Member</a></li>
				<li><a href="logout">LOGOUT</a></li>
			</c:otherwise>
		</c:choose>
    </ul>
</nav><br><br> <fmt:setLocale value="ko_KR"/>
<div id="front">
	<div style="width:100%; margin:0 auto;">
		<h2>New Item</h2><br>
		<c:forEach items="${newProductList}"  var = "productVO" >
		<div class="item">
			<a href="productDetail?pseq=${productVO.PSEQ}">
				<img src="/product_images/${productVO.IMAGE}" />
				<h3> ${productVO.NAME} - <fmt:formatNumber value="${productVO.PRICE2}" type="currency" /></h3>
			</a>
		</div>
	</c:forEach>
	</div>
</div>
<div id="front">
	<c:forEach items="${bestProductList}"  var = "productVO" >
		<div class="item">
			<a href="productDetail?pseq=${productVO.PSEQ}">
				<img src="/product_images/${productVO.IMAGE}" />
				<h3> ${productVO.NAME} - <fmt:formatNumber value="${productVO.PRICE2}" type="currency" /></h3>
			</a>
		</div>
	</c:forEach>
</div>
</article>
<%@ include file="/WEB-INF/views/include/mobile/mobile_footer.jsp" %>