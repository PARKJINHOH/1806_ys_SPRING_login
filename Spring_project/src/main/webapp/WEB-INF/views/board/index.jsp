<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
	<title>Login Form</title>
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
	<link href="${pageContext.request.contextPath }/resources/css/font-awesome.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
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
	<h1 style="margin-bottom: 70px; margin-top: 30px;">로그인</h1>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<form action="join" method="post">
			<img src="${pageContext.request.contextPath }/resources/images/icon.png" alt="" />
			<div class="agile-field-txt">
				<label>
					<i class="fa fa-user" aria-hidden="true"></i> 사용자ID </label>
				<input type="text" name="id" placeholder=" " required="" />
				<div class="agile-right">
					<a href="<c:url value="/board/MemberShip" />">회원가입</a>
				</div>
			</div>

			<div class="agile-field-txt">
				<label>
					<i class="fa fa-lock" aria-hidden="true"></i> 비밀번호</label>
				<input type="password" name="password" placeholder=" " required="" id="myInput" />
				<div class="agile_label">
					<input id="check3" name="check3" type="checkbox" value="show password" onclick="myFunction()">
					<label class="check" for="check3">Show password</label>
				</div>
			</div>
			<!-- script for show password -->
			<script>
				function myFunction() {
					var x = document.getElementById("myInput");
					if (x.type === "password") {
						x.type = "text";
					} else {
						x.type = "password";
					}
				}
			</script>
			<!-- //end script -->
			<div class="w3ls-bot">
				<div class="switch-agileits">
					방문해 주셔서 감사합니다.
				</div>
				<input type="submit" value="로그인">
			</div>
		</form>
	</div>
	<!-- //form ends here -->
</body>

</html>
