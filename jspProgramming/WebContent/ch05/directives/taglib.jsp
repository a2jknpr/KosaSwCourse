<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import= "java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!-- 원래 html에 없는 태그들을 사용하겠다.. 외부 태그 라이브러리에서 가져온다!
uri뒤에 정의되어 있는 태그를 가져다 쓰겠다. 앞에 반드시 c를 붙여주어야 함.
만약 c(태그라이브러리 지시자)가 아니면 뒤에도 c로 바뀌어야 함
WEB-INF아래 lib아래 jar파일을 붙여넣었기 때문에 지금 사용가능..
 -->

<%
List<String> list = new ArrayList<String>();
list.add("나의");
list.add("인생");
list.add("성공기");
session.setAttribute("list", list);
%>    

<!-- 세션에는 어느 객체나 저장이 가능 -->


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<ul>
		<%List<String> list2 = (List<String>)session.getAttribute("list");
			for(String str : list2) { %>
				<li><%=str%></li>	
		<%}%>
		</ul>
		<hr/>
		
		<ul>
			<c:forEach var="str"  items="$(list)"> <!-- forEach 반복문 -->
				<li>${str}</li>
			</c:forEach>
		</ul>
	</body>
</html>