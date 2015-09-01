<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		forEach.jsp
		<hr/>
		
		<c:forEach var="i" begin="1" end="5"> <!-- for(int i=1; i<=5; i++) 와 같은 의미-->
			${i} <br/>		
		</c:forEach>
		
		<hr/>
		
		<c:forEach var="i" begin="1" end="10"  step="2"><!-- for(int i=1; i<=10, i+=2)-->
			${i} <br/>
		</c:forEach>
		
		<hr/>
		
		<%
		List<String> names = new ArrayList<String>();
		names.add("아싸!!");
		names.add("오늘은");
		names.add("토요일");
		request.setAttribute("names", names);
		%>
		
		<c:forEach var="i" items="${names}" varStatus="status"> 
			first: ${status.first}, <!-- index는 0번 count는 1번 /처음실행하는거를 알고 싶으면 true가 나오는 것을 보면 됨-->
			last: ${status.last}, <!-- 마지막에 실행하는가? -->
			index: ${status.index},
			count: ${status.count}
			i : ${i} <br/>		
		</c:forEach>
		
		<hr/>
		
		<c:forEach var="i" items="${names}" varStatus="status"> 
			<c:if test="${status.first}">
				<!-- if(조건식){  } 여기서의 조건식이 test 따옴표 안에 들어감, 즉 test가 true가 되어야 적용이 되고 아니면 if문을 빠져나감 -->
				<!-- 제일 처음 실행하는 거면, if문을 실행하라 -->
				
				<ul>
			</c:if>	
					<li>${name}</li>			
			
			<c:if test="${status.last}">
				</ul>
			</c:if>
		</c:forEach> 
		
		
	</body>
</html>