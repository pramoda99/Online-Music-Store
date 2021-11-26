<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">

   <title>4MUSIC Update song</title>
   <link href="assets/css/updatesong.css" rel="stylesheet" />

  </head>

<style>

  body {
    background-image: url("assets/images/pic5.jpg");
    background-repeat: no-repeat;
    background-size:cover;
    
  }

</style>

<body>

  <nav>
  
      <img src="assets/images/4.png" alt="" class="logo">
      
       <ul>
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

<br><br>

 <div class="box">
  <div class="productData" >
   <center>

     <%
		  String id = request.getParameter("id");
		  String name = request.getParameter("name");
		  String artist = request.getParameter("artist");
		  String type = request.getParameter("type");
		  String language = request.getParameter("language");

      %>

 <form  action="update" method="post">

      <h1 style="color:#8B0000"> Update Song Details </h1>
      <h2 class="font">

	  <table>

		<tr>
			<td>Song ID</td>
			<td><input type="text" class="log" name="sid" value="<%= id %>" readonly></td>
		</tr>

		<tr>
			<td>Song Name</td>
			<td><input type="text" class="log" name="name" value="<%= name %>"></td>
		</tr>

		<tr>
		    <td>Artist Name</td>
		    <td><input type="text" class="log" name="artist" value="<%= artist %>"></td>
	    </tr>

	    <tr>
	        <td>Song Type</td>
		    <td><input type="text" class="log" name="type" value="<%= type %>"></td>
    	</tr>

	    <tr>
		    <td>Language</td>
		    <td><input type="text" class="log" name="language" value="<%= language %>"></td>
	    </tr>

	  </table>
	  </h2>
 	  <br>

	  <input onclick="myFunction()" class="set" type="submit" name="submit" value="Update Song">

	</form>

	<script>
		function myFunction() {
		alert("Song details updated in the system successfully!!! ");
		}

	</script>

  </center>

 </div>
</div>


<br><br><br><br><br><br><br><br><br>

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
           font-size: 13px;">Copyrights @2020 ZANGO Digital Media Entertaintment Pvt Ltd All Right Reserved <br>View more at https://www.zango.com
        </h3>

        <div class="socialmedia">
        
            <a href="">
                <img src="assets/images/insta.png" alt="instagram" style="width: 25px;
                height: 25px;
                margin: 10px 0 0 58px;">
            </a>
            
            <a href="">
                <img src="assets/images/twi.png" alt="twitter" style="width: 25px;height: 25px; margin: 0 0 0 46px;">
            </a>
            
            <a href="">
                <img src="assets/images/fb.png" alt="facebook" style="width: 17px;
                height:26px; margin: 0 0 0 46px;">
            </a>
            
        </div>
        
    </footer>

</body>
</html>