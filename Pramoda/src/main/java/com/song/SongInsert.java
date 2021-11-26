package com.song;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SongInsert")
public class SongInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String artist = request.getParameter("artist");
		String type = request.getParameter("type");
		String language = request.getParameter("language");
		
     boolean isTrue;
		
		isTrue = SongDBUtil.insertsong(name, artist, type, language);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("search.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
