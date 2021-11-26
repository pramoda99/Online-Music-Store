package com.song;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteSongServlet")
public class DeleteSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("sid");
		boolean isTrue;
		
		isTrue = SongDBUtil.deleteSong(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("songinsert.jsp");
			dispatcher.forward(request, response);
		}
		
		else {
			
			List<Song> songDetails = SongDBUtil.getSongDetails(id);
			request.setAttribute("songDetails", songDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("songlist.jsp");
			dispatcher.forward(request, response);
		}
	}

}
