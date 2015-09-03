<%@ page contentType="text/html; charset=UTF-8"%>

<%-- 선언문 (JSP가 클래스로 변환될 때 클래스의 필드와 메소드가 될 부분 선언) --%>
<%!  // 그냥 이기호 안에는 필드와 메소드가 선언될 수 있다는 것만 알아둘 것.
		//느낌표가 있다면 필드랑 메소드 두 가지만 올 수 있음
		//필드
		int num1 ;
		int num2 ;
		int result ;
		String op = "" ; //디폴트로 빈 문자열을 넣겠다.
		
		//연산자별 처리를 위한 메소드 선언 
		public int calculator(){
			if (op.equals("+")){
				result = num1 + num2;
			} else if (op.equals("-")) {
				result = num1 - num2;
			} else if (op.equals("*")) {
				result = num1 * num2;
			} else if (op.equals("/")) {
				result = num1 / num2;
			}
		return result;
		}
%>
    <!-- 스크립트릿 (요청시 마다 실행되는 코드) p.189 -->
<% 
System.out.println("스크립트릿");
    //웹 페이지 요청이 POST인 경우에만 수행, 즉 폼을 통해 전달된 것만 수행
    //초기 로딩 시 오류방지
    
    //그냥 실행되는 코드들은 느낌표 빼고 사용할 것.
    if(request.getMethod().equals("POST")){
    	
    	//문자열 형태로 
    	num1 = Integer.parseInt (request.getParameter("num1"));
    	num2 = Integer.parseInt (request.getParameter("num2"));
    	op = request.getParameter("operator");
    	
    }
 %>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>계산기</title>
	</head>
	
	<body>
		<center>
			<h3>계산기</h3>
			<hr>		
			<form name = form1 method=post>
			<input type = "text" NAME = "num1" width= 200 size = "5">
			<select NAME = "operator">
					<option selected>+ </option>
					<option>-</option>
					<option>*</option>
					<option>/</option>
			</select>
			<input type = "text" NAME = "num2" width= 200 size = "5">
			<input type = "submit" value="계산" name= "B1">
			<input type = "reset" value="다시 입력" name= "B2">
			</form>
			<hr>
		계산결과 : 
		 <!-- 아래 꺽쇠괄호 퍼센트 이콜: 표현식 : 하나의 값을 출력하는 코드 : 여기에서는 하나의 정수값이 나오게 되는 calculator() 메소드를 호출함-->
		 <!-- "꺽쇠괄호 퍼센트 이콜 int x=0; 꺽쇠괄호 퍼센트" 이거는 실행문이므로 들어갈 수 없음-->
		<%=calculator() %>
	</body>
</html>