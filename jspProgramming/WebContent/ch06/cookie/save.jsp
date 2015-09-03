<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import = "java.net. *" %> 
  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		save.jsp
		<hr/>
		<%
		
		String name1 = URLEncoder.encode("으하핳","UTF-8");
		Cookie cookie1 = new Cookie("name1", "Hongkildong");
		response.addCookie(cookie1);
		/* 메모리에만 저장 */
		
		Cookie cookie2 = new Cookie("name2", "lolol");
		cookie2.setMaxAge(365*24*60*60);
		response.addCookie(cookie2);
		/* 하드디스크에 1년동안 저장 */

		%>
		
		쿠키가 잘 저장되었습니다. 냠
		
	</body>
</html>

