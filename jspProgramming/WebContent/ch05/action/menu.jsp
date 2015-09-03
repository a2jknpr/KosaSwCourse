<%@ page contentType="text/html; charset=UTF-8"%>

<%
int no = Integer.parseInt(request.getParameter("no"));
%>
    
 <nav class = "menu">
 <%-- 	<% if (no == 1){ %>
 		<div class = "menuitem selected">menu1</div>
 	 	<div class = "menuitem">menu2</div>
 		<div class = "menuitem">menu3</div>
 	<% } else if (no == 2) {%>
 		<div class = "menuitem">menu1</div>
 		<div class = "menuitem selected">menu2</div>
 		<div class = "menuitem">menu3</div>
 	<% } else if (no == 3) {%>
 		<div class = "menuitem">menu1</div>
 		<div class = "menuitem">menu2</div>
 		<div class = "menuitem selected">menu3</div>
 	<%} %>
 	 --%>
 	 
 		<div class = "menuitem <%=(no==1)?"selected":"" %>">menu1</div>
 	 	<div class = "menuitem <%=(no==2)?"selected":"" %>">menu2</div>
 		<div class = "menuitem <%=(no==3)?"selected":"" %>">menu3</div>
 </nav>
 
