



<!DOCTYPE html>
<html lang="en">
<head>


  <title>Shopping Cart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<Style>

body{
	background:#fff;
	font-family: 'Lato', sans-serif;
}
body a{
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-o-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-ms-transition: 0.5s all;
}
@font-face {
   font-family: 'JosefinSans-Regular';
   src: url(../fonts/JosefinSans-Regular.ttf) format('truetype');
}
@font-face {
   font-family: 'JosefinSans-Bold';
   src: url(../fonts/JosefinSans-Bold.ttf) format('truetype');
}
@font-face {
   font-family: 'JosefinSans-Light';
   src: url(../fonts/JosefinSans-Light.ttf) format('truetype');
}

 ul{
	padding: 0;
	margin: 0;
}
h1,h2,h3,h4,h5,h6,label,p{
	margin:0;	
}
h1.b1,h2.b2,h3.b3 {
  margin-bottom:25px;
  display: block;
}
/*----*/
.top_bg{
  background:#00a0dc;
}
.header_top-sec{
  padding: 15px 0;
}
.logo img{
	width:100%;
}
.header_top{
	padding:2em 0;
}
.login a{
	font-size:13px;
	font-weight:500;
	border:1px solid #E4E4E4;
	padding:10px 15px;
}
.login a:hover{
	color:#333;
}
.top_left{
	float: right;
	color:#fff;
}
.top_right{
	float:left;
	color: #ffffff;
}
.top_right ul,.top_left ul{
	padding:0;
	list-style:none;
	display: inline-block;
	  vertical-align: middle;
}
.top_left ul li.top_link{
	margin-right:10px;
}
.top_right ul li,.top_left ul li{
	display: inline-block;		
}
.social {
  display: inline-block;
}
.top_right ul li:last-child{
	margin-right: 0;
}
.top_right ul li a{
	text-align:center;
	padding: 0px 4px;
	text-transform:uppercase;
	font-size:12px;
	display:block;
	color:#ffffff;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}
.top_left ul li{
	font-size:13px;
}
.top_left ul li a{
	text-align:center;
	padding: 0px 4px;
	font-size:13px;
	color:#ffffff;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
}
.top_right ul li a:hover,.top_left ul li a:hover{
	color:#333;
	text-decoration: none;
}
.item_add:hover{
}

.itemContainer{
	width:100%;
	float:left;
}

.itemContainer div{
	float:left;
	margin: 5px 20px 5px 20px ;
}

.itemContainer a{
	text-decoration:none;
}

.cartHeaders{
	width:100%;
	float:left;
}

.cartHeaders div{
	float:left;
	margin: 5px 20px 5px 20px ;
}
.item_add {

}		
.grid_1 img{
	margin-bottom:1em;
}
.box_1{
  float: right;
  width: 15%;
  margin-top: 1em;
}
.box_1 h3{
  color: rgba(113, 111, 111, 1);
  font-size: 1em;
}
.box_1 h3 img{
	margin-left: 5px;
}
.glyphicon-shopping-cart:before {
  margin-left: 5px;
  font-size:1.2em;
}
.box_1 p a{
	color: rgba(204, 204, 204, 1);
  font-size: 0.85em;
}
.box_1 p a:hover{
	color:#ff5d56;
	text-decoration:underline;
}
.total {
  display: inline-block;
}
.header5 {
  min-height: 89px;
}
.header-bottom {
  padding: 2.3em 0;
}
.logo  a h1{
	color:#333;
	font-family: 'JosefinSans-Bold';	
	 font-size: 2.55em;
  font-weight: 100;
}
.logo  a h1:hover{
	text-decoration:none;
	display:inline-block;	
}
.logo{
	float:left;
}
.top-nav{
  margin-top: 0;
  width:63%;
  margin: 1% auto 0;
  display: block;
  float: left;
}
.skyblue{
	float:left;
}
/*----*/


/*-------*/

.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }

/*--welcome--*/
.welcome{
	padding:4em 0;
}
.welcome-left h2{
	font-size:3em;
	color:#00a0dc;
	font-family: 'JosefinSans-Bold';
}
.welcome-right h3{
	font-size:1.5em;
	margin-bottom:0.5em;
	font-family: 'JosefinSans-Bold';
}
.welcome-right p{
	color:#999;
	font-size:1em;
	line-height:1.8em;
}










.memenu
{
margin:0;
padding:0;
width:100%;
list-style:none;
display:inline-block;
position:relative;
font-family:Calibri,Arial;
font-size:15px
}

.memenu li
{
display:inline-block;
text-align:left;
}

ul.memenu.skyblue {
text-align: center;
}

.memenu>li>a{
  font-family: 'JosefinSans-Regular';
float:left;
padding: 5px 25px 5px 25px;
color:#caccce;
font-weight:600;
text-decoration:none;
text-transform:uppercase;
transition:color .4s ease-in-out;
-moz-transition:color .4s ease-in-out;
-webkit-transition:color .4s ease-in-out;-o-transition:color .4s ease-in-out
}

.memenu>li>.mepanel 
{

	position: absolute;

	display: none;

	background: #fff;

	width: 80%;

	top: 47px;

	left: 10.7%;

	z-index: 99;

	padding: 20px 30px 20px;

	border: solid 1px #ccc;

	-webkit-box-sizing: border-box;

	-moz-box-sizing: border-box;

	box-sizing: border-box;

}

.me-one ul{

	padding:0;
}

.me-one ul li {

  list-style: none;

  margin: 0 0 10px 0;

  text-align: left !important;

  display: block;

}

.me-one ul li a{

	color:#181b2a;

	font-size:15px;

	font-weight:600;
}

.me-one ul li a:hover{

	text-decoration:none;

	color:#ff5d56;
}

.me-one h4{

	color:#00a0dc;

	font-size:1.3em;

	font-weight:600;

	text-align:left;
}

.memenu .mepanel img{
width:100%;
border:solid 1px #dedede;
cursor:pointer;
-webkit-transition:border .3s linear;
-moz-transition:border .3s linear;
-o-transition:border .3s linear;transition:border .3s linear}



</style>

</head>
<body>

<div class=top_bg>
<div class="container">
<div class="header_top-sec">
<div class="top_right">
<ul>
<li><a href="">help</a></li>|
<li><a href="">contact</a></li>|
<li><a href="">Track order</a></li>
</ul>
</div>
<div class="top_left">
<ul>
<li><a href="loginUser"><span class="glyphicon glyphicon-user"> </span>Login</a></li>
<li><a href="register"><span class="glyphicon glyphicon-lock"> </span>Create an Account</a></li>

</ul>
</div>
<div class="clearfix"></div>

</div>
</div>
</div>



<div class="header-top">
<div class="header-bottom">
<div class="container">
<div class="logo">
<a href="#"><h1>Wedding Store</h1></a>
</div>

<div class="top-nav">
<ul class="memenu skyblue"><li class="active"><a href="index.html">Home</a></li>
<li class="grid"><a href="">Wedding</a>
<div class="mepanel">
<div class="row">
<div class=col1 me-one">
<h4>Shop</h4>
<ul>
</ul>
</div>
<div class="col1 me-one">
<h4>Style zone</h4>
<ul>
</ul>
</div>
<div class="col1 me-one">
<h4>Popular Brands</h4>
<ul>
</ul>
</div>

</div>
</div>
</li>

<li class="grid"><a href="">Bride Style</a>
<div class="mepanel">
<div class="row">
<div class="col1 me-one">
<h4>Shop</h4>
<ul>
</ul>
</div>
<div class="col1 me-one">
<h4>Style Zone</h4>
<ul></ul>
</div>
<div class="col1 me-one">
<h4>Popular Brands</h4>
<ul></ul>
</div>


</div>
</div>
</li>

<li class="grid"><a href="typo.html">Typo</a></li>
<li class="grid"><a href="">Contact</a></li>
   </ul>
<div class="clearfix"></div>
</div>

<div class="cart box_1">
<a href="checkout.html">
<h3><div class="total">
<span class="simpleCart_total"></span>(<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></h3>
</a>
<p><a href="javascript:" class="simpleCart_empty">Empty Cart</a></p>
<div class="clearfix"></div>
</div>
<div class="clearfix"></div>
</div>
<div class="clearfix"></div>
</div>
</div>






<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/bnr-1.jpg" alt="Chania" width="460" height="4500">
      </div>

      <div class="item">
        <img src="resources/images/bnr-2.jpg" alt="Chania" width="460" height="450">
      </div>
    
      <div class="item">
        <img src="resources/images/bnr-3.jpg" alt="Flower" width="460" height="450">
      </div>

      <div class="item">
        <img src="resources/images/ban2.jpg" alt="Flower" width="460" height="450">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<a href="loginUser">Login in</a>

<a href="register">Register</a>

<a href="addPro">Product Add</a>





</body>
</html>






