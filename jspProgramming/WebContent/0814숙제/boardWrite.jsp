<%@ page contentType="text/html; charset=UTF-8"%>
 
 <%
request.setCharacterEncoding("UTF-8");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String content = request.getParameter("content");
String sex = request.getParameter("sex");
String password = request.getParameter("password");
String open = request.getParameter("open");
%> 
  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
	</head>
	<body>
<!-- 제목 : XXXXX -->
		title: <%=title%> <br/>
<!-- 글쓴이 :  XXXXX -->
		writer: <%= writer %> <br/>
<!-- 내용 : ㅋㅋㅋㅋ -->		
		content: <%= content %> <br/>
<!-- 성별 : 여 -->	
		sex:  <%= sex %> <br/>
<!-- 비번 :@@@@@-->
		password: <%= password %> <br/>
<!-- 공개여부 공개 혹은 비공개-->
		open: <%= open%>
			
		 <br/>
	</body>
</html>



<!-- ========================= -->
<!-- 제목 : XXXXX -->
<!-- 글쓴이 :  XXXXX -->
<!-- 내용 : ㅋㅋㅋㅋ -->
<!-- 성별 : 여 -->
<!-- 비번 :@@@@@-->
<!-- 공개여부 공개 혹은 비공개-->