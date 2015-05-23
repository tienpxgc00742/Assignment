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
  <%@include file="../resource.jsp" %>
  <c:choose>
   <c:when test="${empty param.action}">
    <c:if test="${not empty param.pprice}">
     <sql:update dataSource="${conn}" var="insertproduct">
      INSERT INTO wProduct VALUES (?,?,?,?,?,?,?);
      <sql:param value="${param.pname}" />
      <sql:param value="${param.pimage}" />
      <sql:param value="${param.pcat}" />
      <sql:param value="${param.pdes}" />
      <sql:param value="${param.pstock}" />
      <sql:param value="${param.pprice}" />
      <sql:param value="0" />
     </sql:update>
     <c:if test="${insertproduct>=1}">
      <c:redirect url="../Admin/product.jsp" >
       <c:param name="responsetext" value="Thêm thành công sản phẩm tên ${param.pname}" />
      </c:redirect>
     </c:if> 
    </c:if>

   </c:when>
   <c:otherwise>
    <c:if test="${param.action eq 'remove' && not empty paramValues.selectcheckbox}">
     <c:set var="total" value="0"/>
     <c:forEach var="id" items="${paramValues.selectcheckbox}">
      <sql:update dataSource="${conn}" var="count">
       DELETE FROM wProduct WHERE ProductID='${id}';
      </sql:update>
      <c:if test="${count>=1}">  
       <c:set var="total" value="${total + 1}"/>
      </c:if>
     </c:forEach>
     <c:redirect url="../Admin/product.jsp" >
      <c:param name="responsetext" value="Xóa thành công ${total} sản phẩm" />
     </c:redirect>  
    </c:if>
    <c:if test="${param.action eq 'edit' && not empty param.order_status && not empty param.oid}">
     <sql:update dataSource="${conn}" var="update">
      UPDATE wOrder SET [Status]=? WHERE OrderId = ?;
      <sql:param value="${param.order_status}"/>
      <sql:param value="${param.oid}"/>
     </sql:update>
     <c:if test="${update>=1}">
      <c:redirect url="../Admin/order.jsp" >
       <c:param name="responsetext" value="Sửa trạng thái ${param.oid} thành ${param.order_status}" />
      </c:redirect>
     </c:if>
    </c:if>
    <c:if test="${param.action eq 'remove' && not empty paramValues.ordercheckbox}">
     <c:set var="total" value="0"/>
     <c:forEach var="id" items="${paramValues.ordercheckbox}">
      <sql:update dataSource="${conn}" var="count1">
       DELETE FROM wOrderDetail WHERE OrderId='${id}';
      </sql:update>
      <sql:update dataSource="${conn}" var="count2">
       DELETE FROM wOrder WHERE OrderId='${id}';
      </sql:update>
      <c:if test="${count1 >=1 && count2 >=1}">  
       <c:set var="total" value="${total + 1}"/>
      </c:if>
     </c:forEach>
     <c:redirect url="../Admin/order.jsp" >
      <c:param name="responsetext" value="Xóa thành công ${total} sản phẩm" />
     </c:redirect>  
    </c:if>
    <c:if test="${param.action eq 'edit' && not empty param.pprice && not empty param.pid}">
     <sql:update dataSource="${conn}" var="updateproduct">
      UPDATE wProduct SET ProductName = ?,[Image] = ?,SubCategoryName = ?,[Description] = ?,Stock = ?,UnitPrice = ? WHERE ProductID  = ?;
      <sql:param value="${param.pname}" />
      <sql:param value="${param.pimage}" />
      <sql:param value="${param.pcat}" />
      <sql:param value="${param.pdes}" />
      <sql:param value="${param.pstock}" />
      <sql:param value="${param.pprice}" />
      <sql:param value="${param.pid}" />
     </sql:update>
     <c:if test="${updateproduct>=1}">
      <c:redirect url="../Admin/product.jsp" >
       <c:param name="responsetext" value="Sửa thành công sản phầm ${param.pid}" />
      </c:redirect>
     </c:if> 
    </c:if>
   </c:otherwise>
  </c:choose>
 </body>
</html>
