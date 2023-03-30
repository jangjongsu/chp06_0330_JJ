<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<%
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
		
		if (mid.equals("black") && mpw.equals("12345")){
			session.setAttribute("sessionId", mid);
			session.setMaxInactiveInterval(10); // 세션의 유효시간을 10분으로 설정
			response.sendRedirect("loginCheck.jsp"); // 로드인 성공시 loginCheck 로 바로 이동
		} else {
			response.sendRedirect("login.jsp");	// 로그인 실패하면 login.jsp 바로 이동
		}
	%>

</body>
</html>