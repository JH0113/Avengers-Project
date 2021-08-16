<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
element.style {
    min-height: 450px;
}
div {
    display: block;
}
#container {
    z-index: 100;
    position: relative;
    overflow: hidden;
    margin-top: -1px;
    margin-left: -1px;
    background: #fff;
    -webkit-transition: 300ms;
    -moz-transition: 300ms;
    -ms-transition: 300ms;
    -o-transition: 300ms;
    transition: 300ms;
    -webkit-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
}
html, body, div,  ul, li, h2,  p {
    margin: 0;
    padding: 0;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
body {
    height: 100%;
    font-family: 'Lato','Nanum Gothic','verdana','돋움','굴림';
    min-width: 320px;
    font-size: 11px;
    line-height: 1.2em;
    color: #353535;
    background: #fff;
    -webkit-text-size-adjust: none;
    border-top: 3px solid #333;
}
footer, header, section {
    display: block;
}
#header .header {
    position: relative;
    text-align: center;
    height: 60px;
    padding: 11px 0 13px;
    width: 100%;
    background: #fff;
    border-bottom: 1px solid #d1d1d1;
}
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
#header h1 {
    height: 60px;
    line-height: 60px;
    padding: 0;
}
#header h1 a {
    display: inline-block;
}
a {
    text-decoration: none;
    color: #000;
}
#header {
    position: absolute;
    top: 19px;
    height: 40px;
    padding: 0;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
#contents {
    position: relative;
    background-color: #fff;
    font-weight: 400;
    font-size: 11px;
    padding: 0;
    margin: 0;
}
#titleArea {
    position: relative;
    background-color: #fff;
    display: block;
    width: 90%;
    margin: 10px auto 20px;
}
#titleArea h2 {
    padding: 0;
    font-weight: 700;
    font-size: 11px;
    line-height: 35px;
    color: #2e2e2e;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 3px;
}
/* .myshopMain {
    font-weight: 400;
    height: auto;
    font-size: 12px;
} */
.myshopMain{
    padding:14px 7px;
    font-weight:400;
    font-size:12px}

ul {
    margin: 0;
    padding: 0;
}
ul li {
    list-style: none;
}
.myshopMain .navigation li {
    width: 22%;
    display: inline-block;
}
.myshopMain .myshopDetail{
    margin: 150px 0;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.myshopMain .navigation li a {
    display: block;   
    padding: 20px;
    font-family:'Lato','Nanum Gothic','verdana','돋움','굴림';
    font-size:12px;
    text-align: center;
}
.footer {
    display: block;
    font-weight: 400;
    font-size: 11px;
    line-height: 15px;
    color: #1b1b1b;
    border-top: 1px solid #eee;
}
.footer address {
    padding: 20px 7%;
    border-bottom: 1px solid #eee;
    background-color: #fbfbfb;
    line-height: 20px;
}
address {
    display: block;
    font-style: italic;
}
.myshopDetail{
    width:97%;
    padding:20px;
    background-color: rgb(231, 231, 231);
 }
 .navigation{
     width:97%;
     margin:10px 5% 10px;
     display:inline-block;
    }

/* .navigation>li{
    background-color: white;
    height: 200px;
} */
.navigation li{
    float:left;
    width:22%;
    height:200px;
    margin:10px 5px 15px;
    background-color: white;
    
}
.myshopMain .navigation li a img{
    margin:10px 0 0;
}
.myshopMain .navigation li a p{
    margin:5px 0 0;
    overflow:hidden;
    display:block;
    width:100%;
    height:60px;
    padding:0;
    font-size:12px;
    line-height:85px;
    text-align:center;
    background-repeat:no-repeat;
    background-position:center 0;
    background-size:30px 30px;
    position:relative;
}
</style>
</head>
<body>
    <div id="container" style="min-height: 450px">
        <div id="contents">
            <div id="titleArea">
                <h2>MY PAGE</h2>
            </div>
            <div class="myshopMain">
                <div class="myshopDetail">
                    <ul class="navigation">
                        <li class="modify">
                            <a href="#">
                                <img src="images/profile.png" width="40" height="40">
                                <p>회원정보</p>
                            </a>
                        </li>
                        <li class="order">
                            <a href="#">
                                <img src="images/shopping-bag.png" width="40" height="40">
                                <p>구매내역</p>
                            </a>
                        </li>
                        <li class="sale">
                            <a href="#">
                                <img src="images/list.png" width="40" height="40">
                                <p>판매내역</p>
                            </a>
                        </li>
                        <li class="wishlist">
                            <a href="#">
                                <img src="images/wishlist.png" width="40" height="40">
                                <p>관심목록</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <footer class="footer">
            <address>아이고 힘들어라 푸터다ㅏ</address>
        </footer>
    </div>
</body>
</html>