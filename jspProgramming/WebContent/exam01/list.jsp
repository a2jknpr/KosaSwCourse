<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.*, java.util.*" %>  


<%
int pageNo = 1;
String strPageNo = request.getParameter("pageNo");
if(strPageNo != null) {
	//pageNo가 전달되었을 경우
	pageNo = Integer.parseInt(strPageNo);
}
%>
  
<jsp:useBean
	id="boardService" 
	class ="service.BoardService"
	scope = "application"/> 
	
	<!-- 목록을 가지고 옴? 만개??를 페이징 해서 보여준다? -->
    
<%
List<Board> list = boardService.getPage(pageNo, boardService.getRowsPerPage()); 
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
			
			#pager{
				margin-top:5px;
				font-size: small;
				text-align: center;
			}
			
			#pager a {
				text-decoration: none;
				color: white;
			}
			
			#pager a:hover{
				color: black;
			}
			
			#pager a.pageNo{
				margin-left: 5px; 
				margin-right: 5px;
			}
			
		</style>
		
	</head>
	
	<body>
		<h4>게시물 목록</h4>
		<table>
			<tr>
				<th style = "width: 50px;">번호</th>
				<th>제목</th>
				<th style = "width: 60px;">글쓴이</th>
				<th style = "width: 80px;">날짜</th>
				<th style = "width: 60px;">조회수</th>
			</tr>
			<%for(Board board : list) {%> <!-- 향상된 포문 -->
			<tr>
				<td><%=board.getNo()%></td>
				<td><a href="detail.jsp?board_no=<%=board.getNo()%>"><%=board.getTitle()%></a></td>
				<td><%=(board.getWriter().length()>3)?board.getWriter().substring(0,3):board.getWriter()%></td>
				<td><%=board.getDate()%></td>
				<td><%=board.getHitcount()%></td>
			</tr>
			<%}%>
		</table>
		
		<div id="pager">
			<%
			int groupNo = boardService.getGroupNo(pageNo);
			%>
			<a href="list.jsp?pageNo=1">[처음]</a>
			
			<%if(groupNo>1) {%>
				<a href="list.jsp?pageNo=<%=boardService.getStartPageNo(groupNo-1)%>">[이전]</a>
			<%}%>
			
			<%for(int i=boardService.getStartPageNo(groupNo); 
						  i<=boardService.getEndPageNo(groupNo); 
						  i++) {%>
						  
				<%=(pageNo==i)?"<b>":""%>
					<a class="pageNo" href="list.jsp?pageNo=<%=i%>"><%=i%></a> &nbsp;
				<%=(pageNo==i)?"</b>":""%>
				
			<%}%>
			
			<%if(groupNo<boardService.getTotalGroupNo()) {%>
			<%-- <%if(boardService.isEndGroupNo(groupNo)) %> --%>
				<a href="list.jsp?pageNo=<%=boardService.getStartPageNo(groupNo+1)%>">[다음]</a>
			<%}%>
			
			<a href="list.jsp?pageNo=<%=boardService.getTotalPageNo()%>">[맨끝]</a>
		</div>
		
		<div id = "buttonGroup" >
			<a href="write_form.jsp">
				<img src="../common/images/board/write.gif"/>
			</a>
		</div>
	</body>
</html>