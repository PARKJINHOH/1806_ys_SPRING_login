<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>true</title>
</head>
	<body>
		<p> <strong>${name}님 </strong>회원가입을 완료했습니다.</p>
		<p> <a href="<c:url value="/board/index"/>">[로그인 화면으로 이동]</a></p>
	</body>
</html>
