<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>main page</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
   rel="stylesheet">
<style type="text/css">
* {
   list-style: none;
   text-decoration: none;
   color: #000;
   margin: 0;
   padding: 0;
}

.web {
   width: 100%;
   height: 100%;
}

.body {
   max-width: 1200px;
   display: flex;
   height: 1300px;
   margin: auto;
}

.left_bar {
   height: 1200px;
   width: 250px;
}

.logo {
   background-color: #fff;
   height: 150px;
   width: 100%;
   text-align: center;
   line-height: 150px;
}

#logo_text {
   font-family: 'Montserrat', sans-serif;
   font-size: 300%;
}

.category {
   width: 100%;
   height: 500px;
}

.dropdown {
   position: relative;
   display: inline-block;
}

.dropdown-content {
   display: none;
   position: relative;
   background-color: #F9F9F9;
   min-width: 160px;
   padding: 8px;
   box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown:hover .dropdown-content {
   display: block;
}

#menu_text {
   font-family: 'Montserrat', sans-serif;
   font-size: 150%;
   cursor: pointer;
   display: block;
   width: 250px;
   height: 50px;
   padding-top: 12px;
   padding-left: 32px;
}

li {
   padding: 5px;
   font-family: 'Montserrat', sans-serif;
   font-size: 130%;
}

li a {
   display: block;
}

.dropdown-content a:hover {
   font-weight: bolder;
}

.right_bar {
   width: 950px;
   height: 1200px;
}

.header {
   height: 240px;
   width: 100%;
}

.headmenu {
   width: 950px;
   height: 120px;
}

.top_menu {
   display: flex;
   width: 100%;
   margin: auto;
   height: 86px;
   padding-top: 10px;
}

.nav {
   display: flex;
   justify-content: flex-end;
   line-height: 86px;
   background-color: #fff;
}

.nav li {
   margin-left: 84px;
}

.nav li a:hover {
   font-weight: bolder;
}

.nav li a {
   color: #000;
}

.search {
   width: 100%;
   height: 120px;
   padding-top: 20px;
}

.search_area {
   float: right;
   width: 300px;
   height: 40px;
   background: rgba(0.0 .0 .0 .5);
   border-radius: 5px;
   margin-top: 24px;
}

.search_area form input {
   border: none;
   border-bottom: solid 1px;
   background: rgba(0, 0, 0, 0.0);
   width: 250px;
   height: 40px;
   color: #000;
   padding-left: 15px;
}

.search_area form span {
   width: 50px;
   color: #000;
   font-weight: bold;
   cursor: pointer;
}

.banner {
   width: 100%;
   height: 400px;
   background-image: url("images/2nd.png");
   background-size: 100% 400px;
}

.products {
   width: 100%;
   height: 600px;
}

td {
   padding: 10px;
   text-align: center;
}

table {
   margin: auto;
}

.footer {
   width: 100%;
   height: 150px;
   background-color: #000;
   clear: both;
   text-align: center;
   line-height: 50px;
}

#footer_text {
   color: #fff;
}
</style>
</head>
<body>
   <div class="web">
      <div class="body">
         <div class="left_bar">
            <div class="logo">
               <span id="logo_text"><a href="main">2nd shop</a><span>
            </div>
            <div class="category">
               <div class="dropdown">
                  <span id="menu_text">Bags</span>
                  <div class="dropdown-content">
                     <ul>
                        <li><a href="test">all</a></li>
                        <li><a href="#">cross/shoulder bag</a></li>
                        <li><a href="#">clutch/pouch bag</a></li>
                        <li><a href="#">tote bag</a></li>
                        <li><a href="#">belt bag</a></li>
                        <li><a href="#">bucket bag</a></li>
                        <li><a href="#">backpack</a></li>
                        <li><a href="#">suitcase</a></li>
                        <li><a href="#">etc</a></li>
                     </ul>
                  </div>
               </div>
               <div class="dropdown">
                  <span id="menu_text">Shoes</span>
                  <div class="dropdown-content">
                     <ul>
                        <li><a href="#">all</a></li>
                        <li><a href="#">heels</a></li>
                        <li><a href="#">flat</a></li>
                        <li><a href="#">sandal/slippers</a></li>
                        <li><a href="#">boots</a></li>
                        <li><a href="#">loafer</a></li>
                        <li><a href="#">dress shoes</a></li>
                     </ul>
                  </div>
               </div>
               <div class="dropdown">
                  <span id="menu_text">Jewelry</span>
                  <div class="dropdown-content">
                     <ul>
                        <li><a href="#">all</a></li>
                        <li><a href="#">bracelet</a></li>
                        <li><a href="#">brooch/pin</a></li>
                        <li><a href="#">earring</a></li>
                        <li><a href="#">necklace</a></li>
                        <li><a href="#">ring</a></li>
                     </ul>
                  </div>
               </div>
               <div class="dropdown">
                  <span id="menu_text">BRAND</span>
                  <div class="dropdown-content">
                     <ul>
                        <li><a href="#">SAINT LAURENT</a></li>
                        <li><a href="#">PRADA</a></li>
                        <li><a href="#">BURBERRY</a></li>
                        <li><a href="#">GUCCI</a></li>
                        <li><a href="#">MAISON MARGIELA</a></li>
                        <li><a href="#">BOTTEGA VENETA</a></li>
                        <li><a href="#">VALENTINO</a></li>
                        <li><a href="#">BALENCIAGA</a></li>
                        <li><a href="#">LOUIS VUITTON</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <div class="right_bar">
            <div class="header">
               <div class="search">
                  <div class="search_area">
                     <form>
                        <input type="search" placeholder="search"> <span>검색</span>
                     </form>
                  </div>
               </div>
               <div class="headmenu">
                  <c:if test="${empty authinfo }">
                     <ul class="nav">
                        <li><a href="loginPage">LOGIN</a></li>
                        <li><a href="registPage">REGIST</a></li>
                        <li><a href="noticePage">NOTICE</a></li>
                     </ul>
                  </c:if>
                  <c:if test="${!empty authinfo }">
                     <ul class="nav">
                        <li><a href="registPage">MYPAGE</a></li>
                        <li><a href="noticePage">NOTICE</a></li>
                        <li><a href="login/logout">LOGOUT</a></li>
                     </ul>
                  </c:if>
               </div>
            </div>
            <div class="banner"></div>
            <div class="products">
               <table>
                  <tr>
                     <td><img width="200" height="200" alt="product image"
                        src="images/1.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                     <td><img width="200" height="200" alt="product image"
                        src="images/2.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                     <td><img width="200" height="200" alt="product image"
                        src="images/3.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                     <td><img width="200" height="200" alt="product image"
                        src="images/4.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                  </tr>
                  <tr>
                     <td><img width="200" height="200" alt="product image"
                        src="images/1.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                     <td><img width="200" height="200" alt="product image"
                        src="images/2.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                     <td><img width="200" height="200" alt="product image"
                        src="images/3.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                     <td><img width="200" height="200" alt="product image"
                        src="images/4.png">
                        <p>상품명</p>
                        <p>가격</p></td>
                  </tr>
                  <tr>

                  </tr>
               </table>
            </div>
         </div>
      </div>
      <div class="footer">
         <h2 id="footer_text">푸터입니당.</h2>
      </div>
   </div>
</body>
</html>