<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		remove.jsp
		<hr/>
		<%
		Cookie cookie1 = new Cookie ("name1", "");
		Cookie cookie2 = new Cookie ("name2", "");
		
		cookie1.setMaxAge(0);
		cookie2.setMaxAge(0);
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		/* 0으로 주는 것은 쿠키를 해제하라는 뜻 쿠키를 클라이언트로 보냄 */
		%>
		
		쿠키를 삭제했습니다. 뿅
		
		<!-- 지우는 메소드는 없다. 제거하는 효과가 나도록 함 -->
		<!-- 500은 실행하다가 에러가 난 것.  -->
	</body>
</html>