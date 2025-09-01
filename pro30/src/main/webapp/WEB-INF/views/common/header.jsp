<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>이적시장 분석</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 구글 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f3f6fa;
            background-size: cover;
            text-align: center; /* 텍스트 중앙 정렬 */
        }

        .topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 32px;
            background: #1b3552;
            flex-wrap: wrap;
        }

        .logo-area {
            display: flex;
            align-items: center;
        }

        .logo-area .site-name {
            font-size: 1.6em;
            color: #ffffff;
            font-weight: bold;
            font-family: 'Dancing Script', cursive;
            text-decoration: none;
            cursor: pointer;
        }

        .top-links a {
            color: #96b2d6;
         
            text-decoration: none;
            font-size: 1em;
        }

        .top-links a:hover {
            color: #ffffff;
        }

        nav {
            background: #25406b;
            padding: 12px 0;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            display: inline-block;
            position: relative;
        }

        nav ul li a {
            color: #f3f6fa;
            padding: 8px 24px;
            display: inline-block;
            text-decoration: none;
            font-weight: bold;
        }

        nav ul li .dropdown {
            display: none;
            position: absolute;
            left: 0;
            top: 100%;
            background: #ffffff;
            min-width: 160px;
            box-shadow: 0 8px 24px rgba(27, 53, 82, 0.08);
            z-index: 100;
            border-radius: 0 0 5px 5px;
        }

        nav ul li:hover .dropdown {
            display: block;
        }

        nav ul li .dropdown a {
            color: #1b3552;
            padding: 10px 18px;
            display: block;
            border-bottom: 1px solid #ecedf0;
        }

        nav ul li .dropdown a:hover {
            background: #f3f6fa;
        }

        .banner {
            background: linear-gradient(90deg, #1b3552 80%, #3d587a 100%);
            color: #ffffff;
            padding: 40px 10px;
            font-size: 1.2em;
            letter-spacing: 1px;
        }

        .products {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 30px 20px;
        }

        .product-card {
            width: 200px;
            border: 1.5px solid #1b3552;
            border-radius: 8px;
            background: #ffffff;
            padding: 12px;
            text-align: center;
        }

        .product-card img {
            width: 100%;
            height: 120px;
            object-fit: cover;
            border-radius: 4px;
        }

        .product-card .name {
            font-weight: bold;
            margin: 10px 0 5px;
            color: #25406b;
        }

        .product-card .price {
            color: #1b3552;
            font-weight: bold;
        }

        footer {
            background: #25406b;
            color: #f3f6fa;
            text-align: center;
            padding: 12px;
            font-size: 0.93em;
            margin-top: 30px;
        }

        /* 반응형 */
        @media screen and (max-width: 700px) {
            .topbar {
                flex-direction: column;
                align-items: center;
            }

            nav ul li {
                display: block;
                margin-bottom: 10px;
            }

            .products {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>

<body>
    <!-- 상단 바 -->
    <div class="topbar">
        <div class="logo-area">
            <a href="main.do" class="site-name">이세계 마켓</a>
        </div>
        <div class="top-links">
             <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
          <a>환영합니다. ${member.name }님!&nbsp;&nbsp;</a>
          <a href="${contextPath}/member/logout.do">로그아웃&nbsp;&nbsp;</a>
          </c:when>
          <c:otherwise>
	     <a href="${contextPath}/member/loginForm.do">로그인&nbsp;&nbsp;&nbsp;</a>
	      </c:otherwise>
	   </c:choose>  
            <a href="#">마이페이지</a>
 
        </div>
    </div>

    <!-- 네비게이션 -->
    <nav>
        <ul>
            <li>
                <a href="#">카테고리</a>
                <div class="dropdown">
                    <a href="#">패션</a>
                    <a href="#">전자제품</a>
                    <a href="#">식품</a>
                    <a href="#">스포츠</a>
                </div>
            </li>
            <li><a href="#">신상품</a></li>
            <li><a href="#">베스트</a></li>
            <li><a href="#">이벤트</a></li>
        </ul>
    </nav>

    <!-- 배너 -->
    <div class="banner">
        지금 가입하고 이적시장 정보를 실시간으로 받아보세요!
    </div>
</body>
</html>
