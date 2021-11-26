<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Song Details</title>
<link href="assets/css/songlist.css" rel="stylesheet" />

</head>

<style>

   body {
    background-image: url("assets/images/pick4.jpg");
    background-repeat: no-repeat;
    background-size:cover;
    background-attachment: fixed
   }
   
</style>

<body>

  <nav>
  
      <img src="assets/images/4.png" alt="" class="logo">
      <ul class="ul">
      
          <li><a href="">HOME</a></li>
          <li><a  href="">MUSIC</a></li>
          <li><a href="">ABOUT</a></li>
          <li><a href="">CONTACT US</a></li>
          <li><a href="">PLANS</a></li>
          
      </ul>
      
        
      <a  target="_blank"><img src="assets/images/user3.png" style=" width: 40px;
          height: 40px;
          position: absolute;
          margin-top: 12px;
          margin-left: -60px;">
      </a>
      
  </nav>

<div class="frame">

<center>


  <h1 style="color:#FFD700">  Song Details </h1>

  <br>

  

  <audio  controls>
        <source src="assets/images/song.mp3" type="audio/mp3">
  </audio>

  <ul >
       <c:forEach var="song" items="${songDetails}">

	   <c:set var="id" value="${song.id}"/>
	   <c:set var="name" value="${song.name}"/>
	   <c:set var="artist" value="${song.artist}"/>
	   <c:set var="type" value="${song.type}"/>
	   <c:set var="language" value="${song.language}"/>


       <h2 class="font">

           <table>

	         <tr>
	         	<td>Song ID</td>
		        <td>:</td>
		        <td>${song.id}</td>
	         </tr>


	         <tr>
		       <td>Song Name</td>
		       <td>:</td>
		       <td>${song.name}</td>
	         </tr>


	         <tr>
	        	<td>Artist Name</td>
		        <td>:</td>
		        <td>${song.artist}</td>
	         </tr>


	         <tr>
		        <td>Song Type</td>
		        <td>:</td>
		        <td>${song.type}</td>
	         </tr>


	         <tr>
		        <td>Language</td>
		        <td>:</td>
		        <td>${song.language}</td>
	         </tr>

         </table>

	  </c:forEach>


	 <c:url value="updatesong.jsp" var="songupdate">

		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="artist" value="${artist}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="language" value="${language}"/>

	 </c:url>

  </h2>
</center>	

<br>

 <center>

	<a href="${songupdate}">

	  <input type="button" class="button1"  name="update" value="Update Song Details">
	</a>

 </center>	
	
	<c:url value="deletesong.jsp" var="songdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="artist" value="${artist}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="language" value="${language}"/>
	</c:url>
	
 <br>
	
 <center>	

	<a href="${songdelete}">

	  <input type="button"  class="button2"  name="delete" value="Delete song">
	</a>

    <br><br><br>

    <button  type="submit" class="button3"   name="view"  onclick="location.href='playview.jsp';"> View Play List</button> <br><br>


 </center>
 
 <br><br>

<footer>
          <div class="footer"></div>
  
          <div class="logobox">
          
                  <a href="">
                      <img src="assets/images/4.png" alt="logo" style="width: 152px;
                      height: 152px;
                      margin-top: -30%;">
                  </a>
          </div>
  
          <h3 style="position: absolute;
              color: white;
              text-align: center;
              margin: 5% 0 0 31%;
              font-size: 13px;">Copyrights @2021 4Music Digital Media Entertaintment Pvt Ltd All Right Reserved <br>View more at https://www.4MuS.com
          </h3>
  
          <div class="socialmedia">
          
                   <a href="">
                        <img  src="assets/images/insta.png" alt="instagram" style="width: 25px;
                              height: 25px;
                              margin: 10px 0 0 58px;">
                   </a>
                   
                   <a href="">
                        <img src="assets/images/twi.png" alt="twitter" style="width: 25px;
                             height: 25px;
                             margin: 0 0 0 46px;">
                   </a>
                   
                   <a href="">
                        <img src="assets/images/fb.png" alt="facebook" style="width: 17px;
                             height:26px;
                             margin: 0 0 0 46px;">
                  </a>
                  
           </div>
           
      </footer>
</body>
</html>

