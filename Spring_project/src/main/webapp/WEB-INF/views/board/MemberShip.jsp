<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<title>회원가입</title>
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
<link
	href="${pageContext.request.contextPath }/resources/css/font-awesome_final.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/style_final.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">
<!--// Stylesheets -->
<!--fonts-->
<!-- title -->
<link href="//fonts.googleapis.com/css?family=Niconne" rel="stylesheet">
<!-- body -->
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i"
	rel="stylesheet">
<!--//fonts-->
</head>

<body>
	<h1 style="margin-bottom: 70px; margin-top: 30px;">회원가입</h1>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<form action="index" method="post">
			<img
				src="${pageContext.request.contextPath }/resources/images/icon.png"
				alt="" />
			<div class="agile-field-txt">
				<label> <i class="fa fa-user" aria-hidden="true"></i> 사용자ID
				</label> <input type="text" name="id" placeholder=" " required="" />
			</div>

			<div class="agile-field-txt">
				<label> <i class="fa fa-lock" aria-hidden="true"></i> 비밀번호
				</label> <input type="password" name="password" placeholder="password"
					required="" />
			</div>
			<div class="agile-field-txt">
				<label> <i class="fa fa-lock" aria-hidden="true"></i> 비밀번호
					확인
				</label> <input type="password" name="passwordck"
					placeholder="password check" required="" />
			</div>
			<div class="agile-field-txt">
				<label> <i class="fa fa-user" aria-hidden="true"></i> 이름
				</label> <input type="text" name="name" required="" />
				<!--  required="" -->
			</div>
			<style>
			body {
				font-family: arial;
			}
			
			button {
				border: none;
				background-color: #E2E2E2;
				padding: 6px 12px;
				border: 1px solid #CCCCCC;
				border-radius: 3px;
				outline: none;
				cursor: pointer;
			}
			</style>

			<link href="${pageContext.request.contextPath }/resources/css/dialog-mobile.css" rel="stylesheet">
			
			<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/mcx-dialog.js"></script>
			<p>
				<input id="button-alert" type="button" value="이용약관" />
			</p>

			<div class="w3ls-bot">
				<input type="submit" value="회원가입"> <input type="reset"
					value="초기화">
			</div>
		</form>
	</div>
	<!-- //form ends here -->
</body>
	<script type="text/javascript">
		//alert
		document.getElementById("button-alert").onclick = function() {
			mcxDialog.alert("여러분을 환영합니다."
							+ "\n\n"
							+ "본 약관은 다양한 웹 서비스의 이용과 관련하여 여러분의 웹 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다."
							+ "\n\n" + "약관에 동의하시면 확인버튼을 눌러주세요");
		};
	</script>

</html>
