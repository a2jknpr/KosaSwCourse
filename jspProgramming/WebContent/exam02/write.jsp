<%@ page contentType="text/html; charset=UTF-8"%> 

<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="product" class="dto.Product"> 
	<jsp:setProperty name="product" property="*"/>
</jsp:useBean>

<!-- application 범위의 ProductService 객체 사용 -->
<jsp:useBean 
	id="productService" 
	class="service.ProductService"
	scope="application"/>

<%-- ProductService의 add() 메소드를 호출 --%>	
<%productService.add(product);%>

<%-- ProductService의 add() 메소드를 호출 --%>	
<%response.sendRedirect("list.jsp");%> <!-- 글이 저장되면 리스트로 돌아감 -->
