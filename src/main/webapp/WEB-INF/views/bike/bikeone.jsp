<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
#main {
	margin: auto;
	width: 600px;
	border: 1px solid rgb(240, 240, 240);
	border-radius: 15px;
	box-shadow: 2px 2px 10px rgb(240, 240, 240);
	padding: 20px 0;
	height: auto;
}
</style>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../resources/css/bbsstyle.css">
<title>자전거상세페이지</title>
</head>
<body>
	<jsp:include page="../../../nav.jsp"></jsp:include>
	<div id="main">
	<div >	<img src="../resources/img/bike/${bag.bike_img}" style="width: 600px; height: 300px; float: left;">
	브랜드명 : ${bag.bike_brand}
	브랜드명 : ${bag.bike_name}
	브랜드명 : ${bag.bike_category}
	</div>
	</div>
</body>
</html>