<%@ page contentType="text/html; charset=UTF-8"%>
    
<!DOCTYPE html>
<html>
<!-- ------------------------------------------------------------------------------------------- -->	
	<head>
		<meta charset="UTF-8">
		<title>JspProgramming</title>
<!-- ------------------------------------------------------------------------------------------- -->	
		<style type="text/css">
			* {
				margin: 0px;
				padding: 0px;
			}
			body {
				width: 960px;
				margin: 0 auto; 	/* 중앙정렬의 효과 !!!!!!!!!!!!!!!!!!!!!!!! */
				background-color: #E6E6E6;
			}
			#page-wrapper {
				background-color: #FFFFFF;
				margin: 40px 0px; /* 위아래 40씩 오왼0씩  */
				height: 500px;
				padding: 10px 20px;  /* 위아래 10 오왼20씩  */
			}
			header{
				margin-bottom: 10px;
			}
			
			nav {
				border-top: 1px solid #C8C8C8;
				border-bottom: 1px solid #C8C8C8;
				display: flex;
				flex-direction: row;
				}
			
			.menu {
				display: inline-block; 
				margin: 5px;
				width: 50px;
			}
			
			#content {
				height: 400px;
				display: flex;
				flex-direction: row;
			}
			
			aside{
				height: 400px;
				width: 250px;
				borde-right: 1px solid #C8C8C8;
			}
			
			#category{
				width:200px;
				height:50px;
				background-color:gray;
				border: 5px solid #ffffff;
				border-radius: 30px;
				box-shadow: 5px 5px 5px #A9A9A9;
			
			
			.chapter{
				margin-top: 10px;
			}
							
			#category > a {
				display: block;
				border: 1px solid black;
				text-align: 100%;
				line-height: 50px;
				text-decoration: none;
						}
						
			.chapter > a :hover {
				background-color: yellow;
						}
			.chapter > a :active {
				background-color: red;
						}
			
			section{
				height: 400px;
				flex: 1;
			}
			
			footer {
				height: 50px;
				border-top: 1px solid #C8C8C8;
			}
			
			iframe{
				border: 0px;
			}
			
 
		</style>
<!-- ------------------------------------------------------------------------------------------- -->	
	</head>					
<!-- ------------------------------------------------------------------------------------------- -->					
	
	<body>
		<div id = "page-wrapper">
			<header>
				<h1>JspProgramming</h1>
				
			</header>
 
			<nav>
				<div class = "menu">Menu1</div>
				<div class = "menu">Menu2</div>
				<div class = "menu">Menu3</div>
				<div class = "menu">Menu4</div>
				<div class = "menu">Menu5</div>
			</nav>
			
			<div id = "content">
				<aside>
					<div id = "category">
						<p class="chapter">[JSP 기초 문법]</p>
							<a href= "ch05/calc3.jsp" target="iframe">계산기</a>
							<a href= "ch05/calc3.jsp" target="iframe">계산기</a>
							<a href= "ch05/calc3.jsp" target="iframe">계산기</a>
							<a href= "ch05/calc3.jsp" target="iframe">계산기</a>
							
						<p class="chapter">[JSP 내장 객체]</p>
							<a href= "ch05/calc3.jsp" target="iframe">계산기</a>
							<a href= "ch05/calc3.jsp" target="iframe">계산기</a>
					</div>
				</aside>
				<section>
					<iframe name = "iframe"  width ="100%"  height = "100%" ></iframe>
				</section>
			</div>
	<!-- ------------------------------------------------------------------------------------------- -->	
			<footer> JI IN PARK </footer>
	<!-- ------------------------------------------------------------------------------------------- -->			
			
		</div>
	</body>
</html>