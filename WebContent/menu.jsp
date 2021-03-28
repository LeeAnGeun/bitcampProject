<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
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
</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Fugaz+One&display=swap" rel="stylesheet">

<link href="css/main.css" rel="stylesheet" />

</head>
<body>


<header style="height: 60px;">
<!-- 로고 -->
<nav class="navbar navbar-expand-sm fixed-top justify-content-end js-scroll-trigger" id="mainNav">
	<div class="logo js-scroll-trigger"><img alt="" src="./img/ab8962_logo.png"></div>
	<div class="container m-0 mr-5 justify-content-end">
		<!-- 네비게이션 -->
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
</nav>
</header>
	
    

</body>
</html>