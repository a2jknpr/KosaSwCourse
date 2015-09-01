<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*" %>

<% 
int productNo = Integer.parseInt(request.getParameter("product_no"));
%>    

<jsp:useBean
	id="productService"
	class="service.ProductService"
	scope="application"/>
 
 <%Product product=productService.getProduct(productNo);%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			body{
				font-family: "돋움";
				font-size: 12px;
			}
		
			span{
				display: inline-block;
				margin: 5px;
			}		
			
			span.title{
				border: 1px solid white;
				background-color: rgba(255, 255, 255, 0.5);
				width: 70px;
				text-align: center;
			}
			
			pre{
				margin: 10px;
				border: 1px solid white;
				padding: 10px;
				width: 470px;
				height: 100px;
				font-size: medium; 
			}
		</style>
		
		<script type="text/javascript">
			function sendData(){
				var modifyFrom=document.querySelector("#modifyForm");
				console.log(modifyForm);
				
				var title =document.querySelector("#name").value;
				
				var content = document.querySelector("#content").value;
				if(title ==""||content==""){
					alert("상품이름과 상품설명은 있어야 합니다.");
					return; 
				} 
				
			
				modifyFrom.submit();
			}
		
		
		
		</script>
	</head>
	
	<body>
		<h4>상품 보기</h4>
			<form id="modifyForm" name="modifyForm" method="POST" action="modify.jsp">
				<span class="title">No. : <%=product.getNo() %></span>
				<input type ="hidden"  name="no" value="<%=product.getNo()%>" /><br/>
				
				<span class="title">상품이름 : </span>
				<input id ="name"  name="name"  type="text" value="<%=product.getName() %>"/><br/>
				
				<span class="title">상품가격 : </span>
				<input name="price"  type="text" value="<%=product.getPrice() %>"/><br/>
				
				<span class="title">상품수량 : </span>
				<input name="amount"  type="text" value="<%=product.getAmount() %>"/><br/>
				
				<span class="title">상품종류 : </span>
				<input type="text"  name="kind"  value="<%=product.getKind() %>"/><br/>
				
				<span class="title">상품설명 : </span><br/>
				<textarea  id="content" name ="content" cols="30" rows="5"> <%=product.getContent() %></textarea>
				
				
			</form>
			
		<div id="buttonGroup">
			<a href="javascript:sendData()">[수정]</a>
			<a href="detail.jsp?product_no=<%=product.getNo()%>">[취소]</a>
		</div>	
		
	</body>
</html>