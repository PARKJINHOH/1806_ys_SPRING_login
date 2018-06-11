<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
	<title>로그인유지</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<script>
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-Tags -->
	
	<!-- Stylesheets -->
	<link href="${pageContext.request.contextPath }/resources/css/font-awesome_final.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/style_final.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
	<!--// Stylesheets -->
	
	<!--fonts-->
	<!-- title -->
	<link href="//fonts.googleapis.com/css?family=Niconne" rel="stylesheet">
	<!-- body -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
	<!--//fonts-->
</head>

<body>
	<h1 style="margin-bottom: 70px; margin-top: 30px;">메인화면</h1>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<form action="index" method="get">
				<img src="${pageContext.request.contextPath }/resources/images/icon.png" alt="" />
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-user" aria-hidden="true"></i> 아이디 </label>
					<br>
					<h2>${membermVo.id}</h2>
			</div>
			<div class="agile-field-txt">
				<label>
				<input type="hidden" name="id" placeholder=" "  />
			</div>
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-user" aria-hidden="true"></i> 이름 </label>
					<br>
					<h2>${membermVo.name}</h2>
			</div>
			<div class="w3ls-bot">
			<input type="submit" value="로그아웃"/>
				<!-- <input type="reset" value="로그아웃"> -->
			</div>
		</form>
	</div>
	<!-- //form ends here -->
</body>

</html>
