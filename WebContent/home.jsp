<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="css/main.css" rel="stylesheet" />
  
<title>홈페이지 메인</title>

<style type="text/css">
*{ margin: 0; padding: 0; font-family: Fugaz One; }

.logo{
	position: absolute;
	overflow: hidden;
	width: 100px;
	height: 20px;
	top: 20px;
	left: 30px;
}

.logo > img{
	position: absolute;
	width: 100%;	
}

.navbar{
	background-color: #f1edea;
	height: 60px;
	padding: 0;
}

.carousel-item{
	background-color: #ddc7b5;
	height: 500px;
}

.search{
	border: solid black;
	position: relative;
	max-width: 500px;
}
.search select{
	max-width: 50%;
}
.search input{
	max-width: 85%;
}
.search button{
	position: absolute;
	top: 0;
	right: 0;
}

#userCircle{
	display: inline-block;
	background-color:#e8d3c1;
	border:1px solid;
	width:100px; height:100px;
	border-radius:75px;
	text-align:center;
	font-size:12px; color:#fff;
	vertical-align:middle;
	line-height:100px;
	float: left;
}

</style>

</head>
<body>

<header style="height: 31em;">
<!-- 로고 -->
<nav class="navbar navbar-expand-sm fixed-top justify-content-end js-scroll-trigger">
	<div class="logo"><img alt="" src="./img/ab8962_logo.png"></div>
		<!-- 네비게이션 -->
			<div class="collapse navbar-collapse m-0 mr-5 justify-content-end" id="navbar-content">
			
			<ul class="navbar-nav ">
				<li class="nav-item">
					<a class="nav-link linkcol" href="main.jsp?content=home">처음으로</a>
				</li>
				<li class="nav-item">
					<a class="nav-link linkcol" href="main.jsp?content=book">책 추천받기</a>
				</li>
				<li class="nav-item">
					<a class="nav-link linkcol" href="main.jsp?content=community">소통하기</a>
				</li>
				<li class="nav-item">
					<a class="nav-link linkcol" href="main.jsp?content=mypage">내 서재로 가기</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle linkcol" href="main.jsp?content=login" id="navbardrop"
					   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">로그인</a>
				      <div class="dropdown-menu dropdown-menu-right"  aria-labelledby="navbardrop"  >
				        <a class="dropdown-item" href="#">로그인</a>
				        <a class="dropdown-item" href="#">내 서재로 가기</a>
				        <a class="dropdown-item" href="#">일정관리</a>
				      </div>
   				</li>
			</ul>	
   		</div>
   		
   		<button class="navbar-toggler" type="button" data-toggle="collapse"
			 data-target="#navbar-content" aria-controls="navbar-content" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span> 
		</button>
</nav>

<div class="jumbotron jumbotron-fluid p-0 maintop">
	<div class="maincarousel">
      <div id="carouselSample" class="carousel slide" data-ride="carousel">
      <!-- indicator(이동할 수 있는 바) -->
      <ol class="carousel-indicators">
         <li data-target="#carouselSample" data-slide-to="0" class="active">
         <li data-target="#carouselSample" data-slide-to="1">
         <li data-target="#carouselSample" data-slide-to="2">
      </ol>
      <div class="carousel-inner">
         <!-- first slide -->
         <div class="carousel-item active">
         <img alt="first" class="d-block w-100" src="">
            <!-- caption -->
            <div class="carousel-caption d-none d-md-block">
               <h5>신작 추천</h5>
            </div>
         </div>
         <!-- second slide -->
         <div class="carousel-item" >
         <img alt="second" class="d-block w-100" src="">
         <!-- caption -->
            <div class="carousel-caption d-none d-md-block">
               <h5>신작 추천</h5>
            </div>
         </div>
         <!-- third slide -->
         <div class="carousel-item" >
         <img alt="third" class="d-block w-100" src="">
         <!-- caption -->
            <div class="carousel-caption d-none d-md-block">
               <h5>신작 추천</h5>
            </div>
         </div>
      </div>
      <!-- controller 부분 -->
      <a class="carousel-control-prev" href="#carouselSample" role="button" data-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="sr-only">앞으로</span>
      </a>
      <a class="carousel-control-next" href="#carouselSample" role="button" data-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="sr-only">다음으로</span>
      </a>
  	  </div>
	</div>
</div>





</header>

<main>
<div class="container" style="background-color: #; height: 45em;">



<div class="container-fluid">
  <div class="row">
	<div class="col-sm-7 d-none d-sm-block p-4">
		<div class="col mb-4" style="height: 300px; border: black solid; " > 활동적인 소모임
			<ul data-viewname="이미지" class="clubList">
			<li data-viewname="소모임이미지" class="clubView1" style="display: inline;">&nbsp;&nbsp;
			<div style="display: inline; border: 1px solid;">
			<a href="#">소모임 이미지1</a>
			</div>
			</li>
			<li data-viewname="소모임이미지" class="clubView2" style="display: inline;">&nbsp;&nbsp;
			<div style="display: inline; border: 1px solid;">
			<a href="#">소모임 이미지1</a>
			</div>
			</li>
			<li data-viewname="소모임이미지" class="clubView3" style="display: inline;">&nbsp;&nbsp;
			<div style="display: inline; border: 1px solid;">
			<a href="#">소모임 이미지1</a>
			</div>
			</li>
			</ul>
		</div>
		<div class="col pt-4" style="height: 300px;  border: black solid;"> 활동순위
			<ul data-viewname="이미지" class="energeticUser mx-auto mt-5">
			<li data-viewname="소모임이미지" class="clubView2" style="display: inline-block;">&nbsp;&nbsp;
			<div id="userCircle">
			<a href="#">유저이미지1</a>
			</div>
			</li>
			<li data-viewname="소모임이미지" class="clubView2" style="display: inline-block;">&nbsp;&nbsp;
			<div id="userCircle">
			<a href="#">유저이미지2</a>
			</div>
			</li>
			<li data-viewname="소모임이미지" class="clubView2" style="display: inline-block;">&nbsp;&nbsp;
			<div id="userCircle">
			<a href="#">유저이미지3</a>
			</div>
			</li>
			<li data-viewname="소모임이미지" class="clubView2" style="display: inline-block;">&nbsp;&nbsp;
			<div id="userCircle">
			<a href="#">유저이미지4</a>
			</div>
			</li>
			<li data-viewname="소모임이미지" class="clubView2 " style="display: inline-block;">&nbsp;&nbsp;
			<div id="userCircle">
			<a href="#">유저이미지5</a>
			</div>
			</li>
			</ul>
		</div>
	</div>
	
	<div class="col-sm-5 p-4">
		<div class="col mb-5 p-3" style="border: solid black;">
			<div class="search">
			<form class="form-inline" action="#">
				<select class="form-control">
			    <option>책제목</option>
			    <option>책저자</option>
			  	</select>
	     	<input class="form-control mr-4" type="text" placeholder="Search">
	     	<button class="btn btn-dark" type="button">검색</button>
			</form>
			</div>
		</div>
		<div class="col" style="height: 500px; border: solid black;"> 책순위
		</div>
	</div>
	
  </div>
</div>

</div>
 
 <footer>

 <hr> 
 <div class="container mb-1" style="background-color: ; height: 30px;">
 하단메뉴:
<a href="#">도움말</a>
<a href="#">약관</a>
<a href="#">사이트맵</a>
</div>
 <hr>
 
 </footer>
 
 
 
 
</main>



</body>
</html>