package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.BAD_INV_ORDER;

import dto.Board;
import service.BoardService;

public class BoardController {
	private ServletContext application;
	private BoardService boardService;

	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(boardService == null){
			application = request.getServletContext();
			boardService = (BoardService)application.getAttribute("boardService");
			if(boardService == null){
				boardService = new BoardService();
				application.setAttribute("boardService", boardService);
			}

		/*<jsp:useBean
		  id = "boardService"
		  class= "service.BoardService"
		  scope= "application"/> (jsp표준액션 - 자주 사용하는 tag)하고 똑같은 거!!*/
		
		}
		String action = request.getParameter("action");
		switch(action){
			case "list": list(request, response); break;
			case "writeForm": writeForm(request, response); break;
			case "write": write(request, response); break;
		}
	}
	private void write(HttpServletRequest request, HttpServletResponse response) {
		
		
	}
	private void writeForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/exam03/write_form.jsp");
		rd.forward(request, response);
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("BoardController-list");
		
		List<Board> list = boardService.getPage(1,10); //1페이지를 보는데 10개씩!! 그런데 얻은 list를 어디에 쓸 것인가?
		request.setAttribute("list", list);
		
	/*	Board board = list.get(0);
		application.setAttribute("board", board);*/
				
		RequestDispatcher rd = request.getRequestDispatcher("/exam03/list.jsp");
		rd.forward(request, response);
		
	}
}
