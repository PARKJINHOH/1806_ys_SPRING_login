<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>false</title>
</head>
	<body>
		<p> <strong>로그인 및 회원가입에 실패했습니다. </strong>다시 로그인 및 회원가입을 해 주세요.</p>
		<p> <a href="<c:url value="/board/MemberShip"/>">[회원가입 창으로 이동]</a></p>
		<p> <a href="<c:url value="/board/index"/>">[로그인 창으로 이동]</a></p>
	</body>
</html>
