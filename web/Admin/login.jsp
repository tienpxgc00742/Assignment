<%-- 
    Document   : login
    Created on : May 18, 2015, 2:42:17 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  <link rel="stylesheet" type="text/css" href="./css/_con.min.css">
  <link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="./css/material-design-icons.min.css">
  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/materialize.min.js"></script>

 </head>
 <body>
  <!--  <section id="lock" style="background: url('http://healthnutsmedia.com/wp-content/uploads/2013/08/Chatter-background-white-HNM-blue-gradient-blue-gear.png');background-size:100%;">
  
      Background Bubbles 
     <canvas id="bubble-canvas"></canvas>
      /Background Bubbles 
  
      Lock Form 
     <form action="j_security_check" method="POST">
      <div class="card-panel" style="margin-top: 200px">
       <div class="row">
        <div class="col m4 s12">
         <img src="../images/image-1.png" alt="">
        </div>
        <input type="text" name="j_username" value="admin"/>
        <div class="col m8 s12">
         <h4>Administrator</h4>
         <div class="input-field">
          <i class="fa fa-unlock-alt prefix"></i>
          <input id="input_password" name="j_password" type="password">
          <label for="input_password">Password</label>
         </div>
         <button class="waves-effect waves-light btn-large z-depth-0 z-depth-1-hover">Unlock</button>
        </div>
       </div>
  
      </div>
     </form>
      /Lock Form 
  
    </section>-->
  <form method="POST" action="j_security_check">
   <table border="0">
    <tr>
     <td>Login</td>
     <td><input type="text" name="j_username"></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="j_password"></td>
    </tr>
   </table>
   <input type="submit" value="Login!">
   </center>
  </form>
 </body>
 <script type="text/javascript" src="./js/_con.min.js"></script>
</html>
