<%@ page language="java" contentType="text/html; charset=UTF-8"
  		 pageEncoding="UTF-8"%> 
  		 
  		<%-- 페이지 지시자 :                  
  		Encoding="UTF-8"% : 저장될 때 어떤 것으로 저장될 것인가?
  		 default가  charset=UTF-8"
  		 내용의 타입 : jsp실행후 응답의 종류가 뭐냐?라는 것.. text. html : text로 구성이 되어있는데 html을 만들어내더라..
  		 만들어내는 문자를 어떻게 인코딩 했느냐? 
  		예를 들어  text/html; charset=UTF-8  자리에 application.zip이라고 작성 후 실행하면 header 행을 읽고 
  		바디행을 읽을 수 있음에도 불구하고 다운로드가
  		 되어버린다 해석을 못하니까??--%>
<!DOCTYPE html> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
			 <!-- 
			 	[태그 주석]
			 	1. 결과물에 포함 
			 	2. 포함된 자바 코드가 실행됨
			 	 예) <%= 10+20%>
 	  		-->
 	 	
		 	<%-- 
			 	1. 결과물에 포함되지 않음
			 	2. 자바 코드가 실행되지 않음
			 	 : 어떻게 아는가?
			 	 	예) <%= 10+20%>
		 	--%>
		
	</body>
</html>
<%-- 웹서버에 정보를 실행 결과등을 제공해줌 / 웹브라우저에 지시함 / 페이지 지시자 --%>
 	
 	
 	
 	
 	
 	