<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!doctype html>
<html lang ="ko">
<head>
     <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>이적시장 분석</title>
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
            margin-left: 20px;
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
   <link rel="stylesheet" href="css/structure.css">
  </head>
  <body> 
    <section class="products">
        <div class="product-card">
            <img src="product1.jpg" alt="상품1">
            <div class="name">제품명1</div>
            <div class="price">29,000원</div>
        </div>
        <div class="product-card">
            <img src="product2.jpg" alt="상품1">
            <div class="name">제품명2</div>
            <div class="price">20,000원</div>
        </div>
        <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
         <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
         <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
         <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
         <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
          <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
          <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
         <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
           <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
         <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
          <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
                   
                   
        </div>
          <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div>
         <div class="product-card">
            <img src="product3.jpg" alt="상품1">
            <div class="name">제품명3</div>
            <div class="price">35,000원</div>
        </div> 
        <!-- 필요에 맞게 상품 카드 추가 -->
    </section>
  </body>
  </html>   
    
