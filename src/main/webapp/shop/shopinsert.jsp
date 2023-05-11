<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게등록페이지</title>
<style>
input {
	width: 250px;
	height: 30px;
	font-size: 30px;
}

table {
	border-spacing: 100px 500px;
}
</style>
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<form action="shopinsert" method="get">
		<div
			style="width: 50%; height: 500px; margin: 0 auto; text-align: center;">
			<div
				style="background: red; width: 400px; height: 200px; position: relative; text-align: center; margin: 0 auto;">
				이미지
				<div
					style="text-align: center; background: gold; position: absolute; bottom: 0; right: 0;">
					<button>이미지등록</button>
				</div>
			</div>
			<div style="text-align: center; margin: 0 auto;">
				<table
					style="margin-left: auto; margin-right: auto; border-spacing: 50px 50px;">
					<tr class="tr2">
						<td class="td2" width="20%">사업자번호</td>
						<td class="td3" width="65%"><input name="shop_businessnumber"></td>
						<td class="td4" width="15%" style="vertical-align: middle;"><button>확인하기</button></td>
					</tr>
					<tr class="tr2">
						<td class="td2">가게명</td>
						<td class="td3"><input name="shop_name"></td>
						<td class="td4"></td>
					</tr>
					<tr class="tr2">
						<td class="td2">가게설명</td>
						<td class="td3" height="100px"><textarea
								style="resize: none;" name="shop_content"></textarea></td>
						<td class="td4"></td>
					</tr>
					<tr class="tr2">
						<td class="td2">가게위치</td>
						<td class="td3"><input name="shop_location"></td>
						<td class="td4"></td>
					</tr>
					<tr class="tr2">
						<td class="td2" colspan="3"><button type="submit">가게등록</button></td>
					</tr>

				</table>
			</div>
		</div>
	</form>
</body>
</html>