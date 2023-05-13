<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>가게정보페이지</title>
<script type="text/javascript" src="../resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	/* $(function() {
		$.ajax({
			url : "exshop",
			success : function(x) {
				$('#shopbbs').append(x)
			} //success
		}) //ajax

	})//$ */
</script>
<style>
#search {
	text-align: center;
}

#shopbbs {
 	margin: 0 auto;
	height: 400px;
	
}
</style>
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div id="shopbbs"></div>

</body>
</html>