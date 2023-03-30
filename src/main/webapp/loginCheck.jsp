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
		String ssid = (String)session.getAttribute("sessionId");
	
		if(ssid == null){ // 참이면 로그인 상태, 거짓이면 로그인상태
	%>
			<h2><a href="login.jsp">[비로그인 상태]로그인 페이지로</a></h2>
	<%
		} else {
		long start_time =session.getCreationTime(); //세션이 생성된 시간
		long end_time = session.getLastAccessedTime(); // 세이션이 마지막으로 접근된 시간
		// 시간단위는 정수는 long을 쓴다
		out.println("sart_time" + start_time);
		out.println("end_time " + end_time);
		out.println((end_time - start_time)/60000 + "분"); // 로그인 접속 시간
	%> 
	  <h2><%= ssid %>님 로그인 성공하셨습니다.</h2>
	  <h2><a href="logout.jsp">[로그인 상태]로그아웃</a></h2>
	  
	<%
		}
	%>
</body>
</html>