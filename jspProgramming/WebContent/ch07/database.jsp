<%@ page contentType="text/html; charset=UTF-8"%>

<%-- 클라이언트가 보낸 데이터를 Board 객체에 저장 --%>
<jsp:useBean id="board" class="dto.Board"> <!-- board, dto 객체 생성 -->
	<jsp:setProperty name="board" property="*"/><!-- 클라이언트에서 온 데이터를 다 받겠다 -->
</jsp:useBean>

<!-- application 범위의 BoardService 객체 사용 -->
<jsp:useBean 
	id="boardService" 
	class="service.BoardService"
	scope="application"/>

<%-- BoardService의 add() 메소드를 호출 --%>	
<%boardService.add(board);%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		게시물이 저장됨
	</body>
</html>