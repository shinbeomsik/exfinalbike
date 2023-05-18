<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		
		$('#bikereplybtn').click(function() {
			bikereply_writer = "APPLE"
			bikereply_content =  $('#content').val()
			bikereply_rating =  $('input[name=bikereply_rating]').val()
			
			$.ajax({
				url : "bikereplyinsert",
				data : {	
					bike_no : ${bag.bike_no},
					bikereply_writer : bikereply_writer,
					bikereply_content : bikereply_content,
					bikereply_rating : bikereply_rating
				},
				success : function(x) {
					alert('성공')
					$('#onereply').html(x)
				}//success
			})//ajax
		})//bikereplybtn
	})
	
</script>
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

.onelefttd {
	width: 20%;
	text-align: center;
}

.onerighttd {
	width: 80%;
	text-align: center;
}

table {
	border: 1px solid #444444;
}

tr {
	border: 1px solid #444444;
}

td {
	border: 1px solid #444444;
}

#myform fieldset {
	width: 100%;
	display: inline-block;
	direction: rtl;
	border: 0;
	text-align: center;
}

#myform input[type=radio] {
	display: none;
}

#myform label {
	font-size: 2em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#reviewContents {
	width: 100%;
	height: 100px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 1.5px #D3D3D3;
	border-radius: 5px;
	font-size: 16px;
	resize: none;
}
</style>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../resources/css/bbsstyle.css">
<title>자전거상세페이지</title>
</head>
<body>
	<jsp:include page="../../../nav.jsp"></jsp:include>
	<div id="main">
		<div>
			<img src="../resources/img/bike/${bag.bike_img}"
				style="width: 580px; height: 300px;">

			<table border="1" style="width: 600px; border-collapse: collapse;">
				<tr>
					<td class="onelefttd">브랜드</td>
					<td class="onerighttd">${bag.bike_brand}</td>
				</tr>
				<tr>
					<td class="onelefttd">제품명</td>
					<td class="onerighttd">${bag.bike_name}</td>
				</tr>
				<tr>
					<td class="onelefttd">분류</td>
					<td class="onerighttd">${bag.bike_category}</td>
				</tr>
				<tr>
					<td colspan="2" align="center"
						onClick="window.open('${bag.bike_detail}')"
						style="cursor: pointer;">상세정보</td>
				</tr>
			</table>
		</div>
		<div id="bikereply">
			<form id="myform">
				<fieldset>
					<span class="text-bold">별점을 선택해주세요</span> 
					<input type="radio"	name="bikereply_rating" value="5" id="rate1"><label
						for="rate1">★</label> 
						<input type="radio" name="bikereply_rating"
						value="4" id="rate2"><label for="rate2">★</label> 
						<input
						type="radio" name="bikereply_rating" value="3" id="rate3"><label
						for="rate3">★</label> 
						<input type="radio" name="bikereply_rating"
						value="2" id="rate4"><label for="rate4">★</label> 
						<input
						type="radio" name="bikereply_rating" value="1" id="rate5"><label
						for="rate5">★</label>
				</fieldset>
				<div>
					<textarea type="text" style="resize: none; width: 100%;"
						id="content" name="bikereply_content"
						placeholder="1000자 이내로 작성해주세요"></textarea>
				</div>
			</form>
				<button style="float: right;"  id="bikereplybtn">등록</button>
		</div>
		<div id="onereply" style="width: 100%;">
		
		</div>
	</div>
</body>
</html>