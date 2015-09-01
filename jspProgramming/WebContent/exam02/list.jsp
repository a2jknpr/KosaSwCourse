<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*, java.util.*" %>  
  
<jsp:useBean
	id="productService" 
	class ="service.ProductService"
	scope = "application"/> 
	

<%
List<Product> list = productService.getPage(1, 10);
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			table{
				width: 100%;
				border-collapse: collapse;
				font-size: small;
			}
		
			table, th, td {
				border: 1px solid black;
				text-align: center;
			}
			th{
				background-color: white;
			}
			
			td{
				background-color: rgba(255, 255, 255, 0.4);
			}
		
			#buttonGroup{
				margin:10px;
				text-align: center;
				
			}
		
		</style>
		
	</head>
	
	<body>
		<h4>[축] **신장개업** JY마트 입니다! [축]</h4>
		<table>
			<tr>
				<th style = "width: 20px;">No.</th>
				<th style = "width: 40px;">상품이름</th>
				<th style = "width: 40px;">상품가격</th>
				<th style = "width: 40px;">상품수량</th>
				<th style = "width: 60px;">상품종류</th>
				<th style = "width: 100px;">상품설명</th>
			</tr>
			<% for(Product product : list) {%> <!-- 향상된 for문 -->
			<tr>
				<td><%=product.getNo()%></td>
				<td><a href="detail.jsp?product_no=<%=product.getNo()%>"><%=product.getName()%></a></td>  <!-- pk값이므로.. -->
				<td><%=product.getPrice()%></td>
				<td><%=product.getAmount()%></td>
				<td><%=product.getKind()%></td>
				<td><%=product.getContent()%></td>
			</tr>
			<%} %>
		</table>
		<div id = "buttonGroup" >
			<a href="write_form.jsp">
				<img src="../common/images/board/write.gif"/>
			</a>
		</div>
	</body>
</html>