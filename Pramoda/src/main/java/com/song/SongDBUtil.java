package com.song;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class SongDBUtil {
   
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
   
	
public static boolean validate(String name) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from song where name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} 
			
			else {
				isSuccess = false;
			}
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	

public static List<Song> getSong(String name1) {
	
	ArrayList<Song> song2 = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from song where name='"+name1+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String artist = rs.getString(3);
			String type = rs.getString(4);
			String language = rs.getString(5);
		
			Song song = new Song(id,name, artist, type, language);
			song2.add(song);
		}
		
	} catch (Exception e) {
		
	}
	
	return song2;	
}



	 public static boolean insertsong(String name, String artist, String type, String language) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into song values (0,'"+name+"','"+artist+"','"+type+"','"+language+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	 }	
	    	
	    	public static boolean updatesong(String id, String name, String artist, String type, String language) {
	        	
	        	try {
	        		
	        		con = DBConnect.getConnection();
	        		stmt = con.createStatement();
	        		String sql = "update song set name='"+name+"',artist='"+artist+"',type='"+type+"',language='"+language+"'"
	        				+ "where id='"+id+"'";
	        		int rs = stmt.executeUpdate(sql);
	        		
	        		if(rs > 0) {
	        			isSuccess = true;
	        		}
	        		else {
	        			isSuccess = false;
	        		}
	        		
	        	}
	        	catch(Exception e) {
	        		e.printStackTrace();
	        	}
	        	
	        	return isSuccess;
	        
	 }
	    	
	    	public static List<Song> getSongDetails(String Id) {
	        	
	        	int convertedID = Integer.parseInt(Id);
	        	
	        	ArrayList<Song> song = new ArrayList<>();
	        	
	        	try {
	        		
	        		con = DBConnect.getConnection();
	        		stmt = con.createStatement();
	        		String sql = "select * from song where id='"+convertedID+"'";
	        		rs = stmt.executeQuery(sql);
	        		
	        		while(rs.next()) {
	        			int id = rs.getInt(1);
	        			String name = rs.getString(2);
	        			String artist = rs.getString(3);
	        			String type = rs.getString(4);
	        			String language = rs.getString(5);
	        		
	        			
	        			Song s = new Song(id,name, artist, type, language);
	        			song.add(s);
	        		}
	        		
	        	}
	        	catch(Exception e) {
	        		e.printStackTrace();
	        	}	
	        	return song;	
	        }
	    	
	    	
	    	public static boolean deleteSong(String id) {
	        	
	        	int convId = Integer.parseInt(id);
	        	
	        	try {
	        		
	        		con = DBConnect.getConnection();
	        		stmt = con.createStatement();
	        		String sql = "delete from song where id='"+convId+"'";
	        		int r = stmt.executeUpdate(sql);
	        		
	        		if (r > 0) {
	        			isSuccess = true;
	        		}
	        		else {
	        			isSuccess = false;
	        		}
	        		
	        	}
	        	catch (Exception e) {
	        		e.printStackTrace();
	        	}
	        	
	        	return isSuccess;
	        }
	        
}
