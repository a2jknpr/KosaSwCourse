<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			body {
				color: white;
			}
			table {
				width: 100%;
				border-collapse: collapse;
				font-size: small;
			}
			table, th, td {
				border: 1px solid white;
				text-align: center;
			}
			th {
				background-color: gray;
			}
			
			#buttonGroup {
				margin: 10px;
				text-align: center;
			}
			
			#buttonGroup a {
				display:inline-block;
				width: 70px;
				line-height: 30px;
				text-decoration: none;
				font-size: small;
				color: white;
				border: 1px solid darkgray;
				background-color: gray;
				font-weight: bold;
			}
			
			#buttonGroup a:hover {
				color: black;
				background-color: lightgray;
			}
		</style>
	</head>
	
	<body>
		<h4>게시물 목록</h4>
		
		<table>
			<tr>
				<th style = "width: 20px;">No.</th>
				<th style = "width: 40px;">상품이름</th>
				<th style = "width: 40px;">상품가격</th>
				<th style = "width: 40px;">상품수량</th>
				<th style = "width: 60px;">상품종류</th>
				<th style = "width: 100px;">상품설명</th>
			</tr>
			
			<c:forEach var="product" items="${list}">
				<tr>
					<td>${product.no}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.amount}</td>
					<td>${product.kind}</td>
					<td>${product.content}</td>
				</tr>
			</c:forEach>
			
		</table>
		
		<div id="buttonGroup">
			<a href="writeForm">글쓰기</a>
		</div>
	</body>
</html>


