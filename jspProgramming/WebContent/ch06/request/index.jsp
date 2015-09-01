<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h5>요청파라미터값 받기</h5>
		<a href = "request_form.html">request_form.html</a>
		
		<h5>요청 방식</h5>
		
		<p>1. get방식</p>
			<ul>
				<li>1) url로 직접 입력</li>
					<li>
					2) &lt; a&gt; 방식 : 
						<a href = "getMethod.jsp?id=white$name=hongkildongl">getMethod.jsp</a>
					</li> 
					<li>
						&lt; form method = "Get" &gt;
					<form  method="get" action= "getMethod.jsp">
						 아이디: <input type = "text" name= "id"/><br/>
						 이름: <input type = "text" name= "name"/><br/>
						 <input type = "submit" value= "getMethod.jsp"/>
					</form>	
				</li>
			</ul>
			
		<p>2. POST 방식</p>
			<ul>		
				<li>
				
				&lt; form method = "POST" &gt;
						<form  method="get" action = getMethod.jsp>
						 아이디: <input type = "text" name= "id"/><br/>
						 이름: <input type = "text" name= "name"/><br/>
						 <input type = "submit" value= "getMethod.jsp"/>
					</form>	
				</li>
			</ul>
		
		
		<h4>[클라이언트 IP]</h4>
		<%=request.getRemoteAddr()%>
		
		<h4>[클라이언트 OS 및 브라우저 정보]</h4>
		<% String browser = request.getHeader("User-Agent"); %>
		<%if(browser.indexOf("MSIE 8.0") != -1) {%>
				Internet Explorer 8.0 이군요	
		<%} else if(browser.indexOf("MSIE 9.0") != -1) {%>
				Internet Explorer 9.0 이군요	
		<%} else if(browser.indexOf("MSIE 10.0") != -1) {%>
				Internet Explorer 10.0 이군요	
		<%} else if(browser.indexOf("MSIE 11.0") != -1) {%>
				Internet Explorer 11.0 이군요	
		<%} else if(browser.indexOf("Chrome") != -1) {%>
				Chrome 이군요
		<%}%>
		
	</body>
</html>