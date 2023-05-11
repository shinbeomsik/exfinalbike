<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "allgroup",
			success : function(x) {
				$('#mainbbs').append(x)
			} //success
		}) //ajax

	})//$
</script>
<jsp:include page="header.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="nav.jsp"></jsp:include>

	<div id="main" style="padding-top: 0px;">
		<div class="main_image">
			<img
				src="https://cdn.pixabay.com/photo/2016/12/14/13/35/bicycles-1906412_960_720.jpg"
				width="598" height="300">
			<h1 class="main_image_text" style="font-size: 30px">Bike Friends</h1>
		</div>
		<div class="row" style="padding-top: 20px;">
			<div class="col group1">
				<a href="grouplist">
					<button class="btn btn-dark mainbtn">지역별 게시판</button>
				</a> <a href="#">
					<button class="btn btn-dark mainbtn">이벤트</button>
				</a>
			</div>
			<div class="col group2">
				<a href="#">
					<button class="btn btn-dark mainbtn">자전거 가게</button>
				</a> <a href="#">
					<button class="btn btn-dark mainbtn">이용권 구매</button>
				</a>
			</div>
		</div>
	</div>
	<div id="mainbbs" style="background-color: orange">
	</div>

	<div style="text-align: center; padding-top: 30px;">©백엔드 9회차 6조</div>

</body>

</html>