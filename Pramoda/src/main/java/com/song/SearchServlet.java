package com.song;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		
		boolean isTrue;
		
		isTrue = SongDBUtil.validate(name);
		
		if (isTrue == true) {
			List<Song> songDetails = SongDBUtil.getSong( name);
			request.setAttribute("songDetails", songDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("songlist.jsp");
			dis.forward(request, response);
		} 
		
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Entered song name is incorrect');");
			out.println("location='search.jsp'");
			out.println("</script>");
	    }
	}

}
