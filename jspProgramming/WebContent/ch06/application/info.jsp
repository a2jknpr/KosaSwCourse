<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h4>실제 경로 얻기</h4>
		<%
		String infoPath =  application.getRealPath("/ch06/info.jsp"); %>
		<%=infoPath %>
		<!-- 서버상의 경로 -->
		
		<h4>웹서버 프로그램의 이름</h4>
		<%= application.getServerInfo() %>
		
		<h4>서블릿 API 버전 정보</h4>
		<%= application.getMajorVersion() %>
		<%= application.getMinorVersion() %>
		
	</body>
</html>