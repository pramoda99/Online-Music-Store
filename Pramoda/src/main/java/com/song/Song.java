package com.song;

public class Song {

	private int id;
    private String name;
    private String artist;
    private String type;
    private String language;
   
    
    public Song(int id, String name, String artist, String type, 
    		String language) {
	this.id = id;
	this.name = name;
	this.artist = artist;
	this.type = type;
	this.language = language;
	
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getArtist() {
        return artist;
    }

    public String getType() {
        return type;
    }

    public String getLanguage() {
        return language;
    }
}
