<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.net.URLDecoder"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		read.jsp
		<hr/>
		<!--  클라이언트는 리퀘스트?? --> 
		<% Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
				String name = cookie.getName();
				String value  = cookie.getValue(); 
				value = URLDecoder.decode(value, "UTF-8");%>
				<%= name %>: <%= value%> <br/>
		<%} %>
	</body>
</html>

<!-- 디코딩과정을 거쳐야 하므로,, -->