<%@ page contentType="text/html; charset=UTF-8"%>
    
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="product" class="dto.Product">
	<jsp:setProperty name="product" property="*"/>
</jsp:useBean>

<jsp:useBean 
	id="productService"
	class="service.ProductService"
	scope="application"/>
	
<!-- 	ProductService productservice= new ProductService();
	 -->
<%productService.modify(product);%>
<%response.sendRedirect("list.jsp"); %>
	