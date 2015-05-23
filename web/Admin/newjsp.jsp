<%-- 
    Document   : newjsp
    Created on : May 23, 2015, 12:02:32 PM
    Author     : MrT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
 </head>
 <body>
  <form name="myWebForm" action="x.jsp" method="get">
   <p>Please select every sport that you play.</p>

   Soccer: <input type="checkbox" name="sports" value="soccer"  /><br />

   Football: <input type="checkbox" name="sports" value="football"  /><br /> 

   Baseball: <input type="checkbox" name="sports" value="baseball"  /><br /> 

   Basketball: <input type="checkbox" name="sports" value="basketball"  />
   <input type="submit" value="123"/>
  </form>
 </body>
</html>
