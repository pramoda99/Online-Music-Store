package com.song;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateSongServlet")
public class UpdateSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("sid");
		String name = request.getParameter("name");
		String artist = request.getParameter("artist");
		String type = request.getParameter("type");
		String language = request.getParameter("language");
		
	    boolean isTrue;
	    
	    isTrue = SongDBUtil.updatesong(id, name, artist, type, language);
        
		if(isTrue == true) {
			
			List<Song> songDetails = SongDBUtil.getSongDetails(id);
			request.setAttribute("songDetails", songDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("songlist.jsp");
			dis.forward(request, response);
		}

       else {
    	   
	       List<Song> songDetails = SongDBUtil.getSongDetails(id);
	       request.setAttribute("songDetails", songDetails);
	
	       RequestDispatcher dis = request.getRequestDispatcher("songlist.jsp");
	       dis.forward(request, response);
      }
	}

}
