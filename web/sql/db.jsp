<%-- 
    Document   : insertdb
    Created on : May 19, 2015, 1:08:43 AM
    Author     : Administrator
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 </head>
 <body>
  <sql:setDataSource var="conn" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://127.0.0.1:1433;databaseName=WSHOP" user="sa" password="123456"/>
  <c:choose>
   <c:when test="${not empty param.pid}">
    <c:if test="${not empty param.pprice}">
     <sql:update dataSource="${conn}" var="insertproduct">
      INSERT INTO wProduct VALUES (?,?,?,?,?,?,?,?);
      <sql:param value="${param.pid}" />
      <sql:param value="${param.pname}" />
      <sql:param value="${param.pimage}" />
      <sql:param value="${param.pcat}" />
      <sql:param value="${param.pdes}" />
      <sql:param value="${param.pstock}" />
      <sql:param value="${param.pprice}" />
      <sql:param value="0" />
     </sql:update>
     <c:if test="${insertproduct>=1}">
      <c:redirect url="../product.jsp" >
       <c:param name="responsetext" value="Thêm thành công sản phẩm #${param.pid} tên ${param.pname}" />
      </c:redirect>
     </c:if> 
    </c:if>
   </c:when>
   <c:otherwise>
    <c:if test="${param.action eq 'remove'}">
     <c:set var="total" value="0"/>
     <c:forEach var="id" items="${paramValues.selectcheckbox}">
      <sql:update dataSource="${conn}" var="count">
       DELETE FROM wProduct WHERE ProductID='${id}';
      </sql:update>
      <c:if test="${count>=1}">  
       <c:set var="total" value="${total + 1}"/>
      </c:if>
     </c:forEach>
     <c:redirect url="./product.jsp" >
      <c:param name="responsetext" value="Xóa thành công ${total} sản phẩm" />
     </c:redirect>  
    </c:if>
    <c:if test="${not empty param.username && not empty param.password && not empty param.name}">
     <c:catch var ="catchException">
      <sql:update dataSource="${conn}" var="insert">
       Insert into wAccount values (?,?,1,?,GETDATE(),'image-1.png')
       <sql:param value="${param.username}"/>
       <sql:param value="${param.password}"/>
       <sql:param value="${param.name}"/>
      </sql:update>
     </c:catch>

     <c:choose>
      <c:when test="${catchException != null}">
       <c:redirect url="../create.jsp">
        <c:param name="response" value="fail" />
       </c:redirect>
      </c:when> 
      <c:otherwise>
       <c:redirect url="../account.jsp">
        <c:set scope="session" var="6c6f67696e75736572" value="${param.username}"/>
        <c:param name="response" value="success" />
       </c:redirect>
      </c:otherwise>
     </c:choose>
    </c:if>
    <c:if test="${not empty param.loginusername && not empty param.loginpassword}">
     <sql:query dataSource="${conn}" var="resultlogin">
      SELECT * FROM wAccount WHERE [user] = ? AND pass = ?;
      <sql:param value="${param.loginusername}"/>
      <sql:param value="${param.loginpassword}"/>
     </sql:query>
     <c:choose>
      <c:when test="${fn:length(resultlogin.rows) gt 0}">
       <c:set scope="session" var="6c6f67696e75736572" value="${param.loginusername}"/>
       <c:redirect url="../account.jsp"/>
      </c:when>
      <c:otherwise>
       <c:redirect url="../login.jsp" >
        <c:param name="errMsg" value="Username/password does not match" />
       </c:redirect>
      </c:otherwise>
     </c:choose>
    </c:if>
   </c:otherwise>
  </c:choose>
 </body>
</html>
