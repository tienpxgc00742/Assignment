<%-- 
    Document   : resource
    Created on : May 17, 2015, 3:22:06 PM
    Author     : Administrator
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head></head>
    <body>
        <sql:setDataSource var="conn" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" url="jdbc:sqlserver://127.0.0.1:1433;databaseName=WSHOP" user="sa" password="123456"/>
    </body>
</html>
