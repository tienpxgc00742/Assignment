<%-- 
    Document   : cart
    Created on : May 19, 2015, 7:06:13 PM
    Author     : Administrator
--%>

<%@page import="java.util.Iterator"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="model.CartItem"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="resource.jsp" %>
<c:if test="${not empty param.productid}">
 <sql:query dataSource="${conn}" var="product">
  SELECT * FROM wProduct WHERE ProductID = ?;
  <sql:param value="${param.productid}"/> 
 </sql:query>
 <c:if test="${product.rowCount >=1}">
  <c:set var="pid" value="${product.rows[0].ProductID}"/>
  <jsp:useBean id="pid" type="java.lang.Integer"/>
  <c:set var="name" value="${product.rows[0].ProductName}"/>
  <jsp:useBean id="name" type="java.lang.String"/>
  <c:set var="price" value="${product.rows[0].UnitPrice}"/>
  <jsp:useBean id="price" type="java.lang.Double"/>
  <c:set var="imageitem" value="${fn:split(product.rows[0].Image, ',')}" />
  <c:set var="image" value="${imageitem[0]}"/>
  <jsp:useBean id="image" type="java.lang.String"/>
  <c:choose>
   <c:when test="${empty sessionScope.cart}">
    <%
     ArrayList<CartItem> cart = new ArrayList<CartItem>();
     cart.add(new CartItem(pid, name, 1, price,image));
     session.setAttribute("cart", cart);
    %>
    Item was added to your cart
   </c:when>
   <c:otherwise>
    <c:if test="${empty param.action}">
     <%
      boolean similar = false;
      ArrayList<CartItem> acart = (ArrayList<CartItem>) session.getAttribute("cart");
      for (CartItem item : acart) {
       if (item.getName().equals(name)) {
        acart.add(new CartItem(pid, name, item.getQua() + 1, price,image));
        acart.remove(item);
        similar = true;
       }
      }
      if (similar == false) {
       acart.add(new CartItem(pid, name, 1, price,image));
      }
      session.setAttribute("cart", acart);
     %>
     Item was added to your cart
    </c:if>
    <c:if test="${param.action eq 'remove'}">
     <%
      ArrayList<CartItem> bcart = (ArrayList<CartItem>) session.getAttribute("cart");
      Iterator iterPlay = bcart.iterator();
      while (iterPlay.hasNext()) {
       CartItem citem = (CartItem) iterPlay.next();
       if (citem.getPid() == pid) {
        iterPlay.remove();
       }
      }
      session.setAttribute("cart", bcart);
     %>
     Item was delete from your cart
    </c:if>
   </c:otherwise>
  </c:choose>
 </c:if>
</c:if>
