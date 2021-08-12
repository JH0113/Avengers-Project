<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>main Page</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Arvo:wght@700&display=swap"
   rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap"
   rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">   
<style>
* {
   text-decoration: none;
   list-style: none;
}

#logo {
   font-family: 'Arvo', serif;
   font-size: 130%;
}

.w3-sidebar a {
   font-family: 'Montserrat', sans-serif;
}

body, h1, h2, h3, h4, h5, h6, .w3-wide {
   font-family: 'Montserrat', sans-serif;
}
<<<<<<< HEAD

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
   cursor: pointer;
   display: block;
   width: 250px;
   height: 50px;
   padding-top: 12px;
   padding-left: 32px;
}

li {
   padding: 5px;
}

.search_area {
   float: right!important;
   width: 300px;
   height: 40px;
   background: rgba(0.0 .0 .0 .5);
   border-radius: 5px;
   margin-top: 24px;
}

.search_area form input {
   border: none;
   background: rgba(0, 0, 0, 0.0);
   width: 250px;
   height: 40px;
   color: #fff;
   padding-left: 15px;
}

.search_area form span {
   width: 50px;
   color: #fff;
   font-weight: bold;
   cursor: pointer;
}
.dropdown-content li:hover {
   background-color: #000;
   color: #fff;
}
 
.topMenu{
   float: right;
   display: inline-block;
   font-size: 15px;
}
.topMenu a{
   font-weight: bold;
}
.search{
   margin-top: 20%; left:40%;
   background: #333;
   width: 200px;
   height: 30px;
   line-height: 10px;
   padding: 10px;   
}
.box{
  margin: 50px auto;
  width: 200px;
  height: 50px;
}
.container-1{
  width: 300px;
  vertical-align: middle;
  white-space: nowrap;
  position: relative;
}
.container-1 input#search{
  width: 300px;
  height: 50px;
  background: #fff;
  border: none;
  font-size: 10pt;
  float: left;
  color: #63717f;
  padding-left: 45px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}
.container-1 input#search::-webkit-input-placeholder {
   color: #65737e;
} 
.container-1 input#search:-moz-placeholder { /* Firefox 18- */
   color: #65737e;  
}
.container-1 input#search::-moz-placeholder {  /* Firefox 19+ */
   color: #65737e;  
}
.container-1 input#search:-ms-input-placeholder {  
   color: #65737e;  
}
.container-1 .icon{
  position: absolute;
  top: 50%;
  margin-left: 17px;
  margin-top: 17px;
  z-index: 1;
  color: #4f5b66;
}

</style>
</head>
<body class="w3-content" style="max-width: 1200px">

   <!-- Sidebar/menu -->
   <nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top"
      style="z-index: 3; width: 250px" id="mySidebar">
      <div class="w3-container w3-display-container w3-padding-16">
         <i onclick="w3_close()"
            class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
         <h3 class="w3-wide">
            <b id="logo"><a href="main">2nd shop</a></b>
         </h3>
      </div>
      <div class="w3-padding-64 w3-large w3-text-grey"
         style="font-weight: bold">
         <div class="dropdown">
            <span id="menu_text">Bags</span>
            <div class="dropdown-content">
               <ul>
                  <li><a href="#">all</a></li>
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
      <a href="#footer" class="w3-bar-item w3-button w3-padding">Contact</a>
      <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding"
         onclick="document.getElementById('newsletter').style.display='block'">Newsletter</a>
      <a href="#footer" class="w3-bar-item w3-button w3-padding">Subscribe</a>
   </nav>

   <!-- Top menu on small screens -->
   <header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
      <div class="w3-bar-item w3-padding-24 w3-wide">LOGO</div>
      <a href="javascript:void(0)"
         class="w3-bar-item w3-button w3-padding-24 w3-right"
         onclick="w3_open()"><i class="fa fa-bars"></i></a>
   </header>

   <!-- Overlay effect when opening sidebar on small screens -->
   <div class="w3-overlay w3-hide-large" onclick="w3_close()"
      style="cursor: pointer" title="close side menu" id="myOverlay"></div>

   <!-- !PAGE CONTENT! -->
   <div class="w3-main" style="margin-left: 250px">

      <!-- Push down content on small screens -->
      <div class="w3-hide-large" style="margin-top: 83px"></div>

      <!-- Top header -->
      <header class="w3-container w3-xlarge">
         <!-- <p align="right" class="w3-left">Jeans</p> -->
         
            <ul align="right" class="topMenu">
               <a href="#">L O G I N</a> |
               <a href="#">J O I N </a> |
               <a href="#">N O T I C E</a>      
                      <div class="box">
                    <div class="container-1">
                        <span class="icon"><i class="fa fa-search"></i></span>
                        <input type="search" id="search" placeholder="검색어를 입력하세욥" />
                    </div>
                  </div>
                      
            </ul> 
      
      </header>

      <!-- Image header -->
      <div class="w3-display-container w3-container">
         <img src="images/2nd.png" alt="Jeans" style="width: 100%">
         <div class="w3-display-topleft w3-text-white"
            style="padding: 24px 48px">
         </div>
      </div>

      <div class="w3-container w3-text-grey" id="jeans">
         <p>8 items</p>
      </div>

      <!-- Product grid -->
      <div class="w3-row w3-grayscale">
         <div class="w3-col l3 s6">
            <div class="w3-container">
               <img src="images/1.png" style="width: 100%">
               <p>
                  Ripped Skinny Jeans<br> <b>$24.99</b>
               </p>
            </div>
            <div class="w3-container">
               <img src="images/2.png" style="width: 100%">
               <p>
                  Mega Ripped Jeans<br> <b>$19.99</b>
               </p>
            </div>
         </div>

         <div class="w3-col l3 s6">
            <div class="w3-container">
               <div class="w3-display-container">
                  <img src="images/3.png" style="width: 100%"> <span
                     class="w3-tag w3-display-topleft">New</span>
                  <div class="w3-display-middle w3-display-hover">
                     <button class="w3-button w3-black">
                        Buy now <i class="fa fa-shopping-cart"></i>
                     </button>
                  </div>
               </div>
               <p>
                  Mega Ripped Jeans<br> <b>$19.99</b>
               </p>
            </div>
            <div class="w3-container">
               <img src="images/4.png" style="width: 100%">
               <p>
                  Washed Skinny Jeans<br> <b>$20.50</b>
               </p>
            </div>
         </div>

         <div class="w3-col l3 s6">
            <div class="w3-container">
               <img src="images/1.png" style="width: 100%">
               <p>
                  Washed Skinny Jeans<br> <b>$20.50</b>
               </p>
            </div>
            <div class="w3-container">
               <div class="w3-display-container">
                  <img src="images/1.png" style="width: 100%"> <span
                     class="w3-tag w3-display-topleft">Sale</span>
                  <div class="w3-display-middle w3-display-hover">
                     <button class="w3-button w3-black">
                        Buy now <i class="fa fa-shopping-cart"></i>
                     </button>
                  </div>
               </div>
               <p>
                  Vintage Skinny Jeans<br> <b class="w3-text-red">$14.99</b>
               </p>
            </div>
         </div>

         <div class="w3-col l3 s6">
            <div class="w3-container">
               <img src="images/1.png" style="width: 100%">
               <p>
                  Vintage Skinny Jeans<br> <b>$14.99</b>
               </p>
            </div>
            <div class="w3-container">
               <img src="images/1.png" style="width: 100%">
               <p>
                  Ripped Skinny Jeans<br> <b>$24.99</b>
               </p>
            </div>
         </div>
      </div>

      <!-- Subscribe section -->
      <div class="w3-container w3-black w3-padding-32"></div>

      <!-- Footer -->
      <footer class="w3-padding-64 w3-light-grey w3-small w3-center"
         id="footer"> </footer>

      <div class="w3-black w3-center w3-padding-24">
         Powered by <a href="https://www.w3schools.com/w3css/default.asp"
            title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a>
      </div>

      <!-- End page content -->
   </div>

   <!-- Newsletter Modal -->
   <div id="newsletter" class="w3-modal">
      <div class="w3-modal-content w3-animate-zoom" style="padding: 32px">
         <div class="w3-container w3-white w3-center">
            <i
               onclick="document.getElementById('newsletter').style.display='none'"
               class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
            <h2 class="w3-wide">NEWSLETTER</h2>
            <p>Join our mailing list to receive updates on new arrivals and
               special offers.</p>
            <p>
               <input class="w3-input w3-border" type="text"
                  placeholder="Enter e-mail">
            </p>
            <button type="button"
               class="w3-button w3-padding-large w3-red w3-margin-bottom"
               onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
         </div>
      </div>
   </div>
</body>
<script>
   function w3_open() {
      document.getElementById("mySidebar").style.display = "block";
      document.getElementById("myOverlay").style.display = "block";
   }
   function w3_close() {
      document.getElementById("mySidebar").style.display = "none";
      document.getElementById("myOverlay").style.display = "none";
   }
</script>
</html>