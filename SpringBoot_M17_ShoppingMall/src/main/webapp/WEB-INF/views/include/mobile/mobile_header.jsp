<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/mobile.css">
<script type="text/javascript" src="/script/mobile_member.js"></script>
<script type="text/javascript" src="/script/mobile_mypage.js"></script>
</head>
<body>

<div id="wrap">
	<header>
		<c:choose>
			<c:when test="${empty loginUser }">
				<nav id="top_menu">
					<ul>
						<li><a href="mobileLoginForm">LOGIN</a></li>
						<li><a href="mobileContract">JOIN</a></li>
						<li><a href="mobileCartList">CART</a></li>
						<li><a href="mobileMyPage">MY PAGE</a></li>
						<li><a href="mobileQnaList">QNA</a></li>
					</ul>
				</nav>
			</c:when>
			<c:otherwise>
				<nav id="top_menu">
					<ul>
						<li><span style="color:yellow;">${loginUser.id }</span>
								<a href="mobileUpdateForm">정보수정</a>
								<a href="mobileLogOut">LOGOUT</a></li>
						<li><a href="mobileCartList">CART</a></li>
						<li><a href="mobileMyPage">MY PAGE</a></li>
						<li><a href="mobileQnaList">QNA</a></li>
					</ul>
				</nav>
			</c:otherwise>
		</c:choose>
		<div id="logo"><a href="/">Shoes Shop</a></div>
	</header>
</div>

