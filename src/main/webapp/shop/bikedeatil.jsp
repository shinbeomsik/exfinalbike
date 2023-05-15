<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게상세리뷰게시판</title>
<style>
.innerdiv {
	margin: 0 auto;
	width: 50%;
	background: green;
	text-align: center;
	vertical-align: center;
}
</style>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	
		<div class="innerdiv">
			이미지 들어감
			<button>수정</button>
		</div>
		<div class="innerdiv">가게이름</div>
		<div class="innerdiv">가게설명</div>
		<div class="innerdiv"><button>문의하기</button></div>
		<div class="innerdiv">
			<button>리뷰</button>
			<button>가게위치</button>
		</div>
	
	<div style="width: 50%; margin:0 auto; background: red;">리뷰게시판과 가게위치가 붙일 구역</div>
</body>
</html>