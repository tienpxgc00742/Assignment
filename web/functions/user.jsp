<%-- 
    Document   : user
    Created on : May 22, 2015, 8:31:42 AM
    Author     : Administrator
--%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../resource.jsp" %>
<c:if test="${param.action eq 'register' && not empty param.username && not empty param.password && not empty param.name}">
    <c:catch var ="catchException">
        <sql:update dataSource="${conn}" var="insert">
            Insert into wAccount values (?,?,?,GETDATE(),'image-1.png')
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
<c:if test="${param.action eq 'login' && not empty param.loginusername && not empty param.loginpassword}">
    <sql:query dataSource="${conn}" var="resultlogin">
        SELECT * FROM wAccount WHERE [user] = ? AND pass = ?;
        <sql:param value="${param.loginusername}"/>
        <sql:param value="${param.loginpassword}"/>
    </sql:query>
    <c:choose>
        <c:when test="${fn:length(resultlogin.rows) gt 0}">
            <c:set scope="session" var="6c6f67696e75736572" value="${param.loginusername}"/>
            <c:choose>
                <c:when test="${empty param.page}">
                    <c:redirect url="../account.jsp"/>
                </c:when>
                <c:otherwise>
                    <c:redirect url="..${param.page}"/>
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
            <c:redirect url="../login.jsp" >
                <c:param name="errMsg" value="Invalid login or password." />
            </c:redirect>
        </c:otherwise>
    </c:choose>
</c:if>
<c:if test="${param.action eq 'logout' && not empty sessionScope['6c6f67696e75736572']}">
    <c:remove var="6c6f67696e75736572" scope="session"/>
    <c:redirect url="../index.jsp" >
        <c:param name="islogout" value="true" />
    </c:redirect>
</c:if>