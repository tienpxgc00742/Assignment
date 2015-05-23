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
<%@include file="../resource.jsp" %>

<c:if test="${not empty param.productid}">
    <c:catch var="Exception">
        <sql:query dataSource="${conn}" var="product">
            SELECT * FROM wProduct WHERE ProductID = ?;
            <sql:param value="${param.productid}"/> 
        </sql:query>
    </c:catch>
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
                    cart.add(new CartItem(pid, name, 1, price, image));
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
                                item.setQua(item.getQua() + 1);
                                similar = true;
                            }
                        }
                        if (similar == false) {
                            acart.add(new CartItem(pid, name, 1, price, image));
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
                <c:if test="${param.action eq 'edit'}">
                    <c:set var="cqua" value="${param.qua}"/>
                    <jsp:useBean id="cqua" type="java.lang.String"/>
                    <%
                        ArrayList<CartItem> ccart = (ArrayList<CartItem>) session.getAttribute("cart");
                        Iterator citerPlay = ccart.iterator();
                        while (citerPlay.hasNext()) {
                            CartItem citem = (CartItem) citerPlay.next();
                            if (citem.getPid() == pid) {
                                citem.setQua(Integer.parseInt(cqua));
                            }
                        }
                        session.setAttribute("cart", ccart);
                    %>
                    Item was edit from your cart
                </c:if>
            </c:otherwise>
        </c:choose>
    </c:if>
</c:if>
<!--CHECK OUT-->
<c:if test="${param.action eq 'checkout' && not empty sessionScope.cart && not empty param.payment && not empty sessionScope['6c6f67696e75736572']}">
    <sql:update dataSource="${conn}" var="order">
        INSERT INTO wOrder(OrderDate,[user],FullName,[Address],Phone,Total,[Type],[Status]) VALUES (default,?,?,?,?,?,?,?);
        <sql:param value="${sessionScope['6c6f67696e75736572']}" />
        <sql:param value="${param.ofullname}" />
        <sql:param value="${param.oaddress}" />
        <sql:param value="${param.ophone}" />
        <sql:param value="${param.ototal}" />
        <sql:param value="${param.payment}" />
        <c:if test="${param.payment eq '1'}">
            <sql:param value="Pending" />
        </c:if>
        <c:if test="${param.payment eq '2'}">
            <sql:param value="Canceled" />
        </c:if>
    </sql:update>
    <c:if test="${order>=1}">
        <sql:query var="current" dataSource="${conn}">
            SELECT IDENT_CURRENT('wOrder') AS OrderID;
        </sql:query>
        <c:set var="oid" value="${current.rows[0].OrderID}" scope="session"/>
        <c:forEach var="icart" items="${sessionScope.cart}">
            <sql:update var="i" dataSource="${conn}">
                INSERT INTO wOrderDetail([OrderId] ,[ProductID] ,[Quantity] ,[UnitPrice]) VALUES (?,?,?,?)
                <sql:param value="${oid}"/>
                <sql:param value="${icart.pid}"/>
                <sql:param value="${icart.qua}"/>
                <sql:param value="${icart.price}"/>
            </sql:update>
        </c:forEach>
        <c:if test="${param.payment eq '1'}">
            <c:remove var="cart" scope="session"/>
            <c:redirect url="../success.jsp" >
                <c:param name="responsetext" value="Thêm thành công sản phẩm #${param.pid} tên ${param.pname}" />
            </c:redirect>
        </c:if>
        <c:if test="${param.payment eq '2'}">
            <c:redirect url="https://www.sandbox.paypal.com/cgi-bin/webscr" >
                <c:param name="upload" value="1" />
                <c:param name="return" value="http://localhost:8084/servjsp/functions/cart.jsp" />
                <c:param name="cmd" value="_cart" />
                <c:param name="business" value="fpt-paypal@gmail.com" />
                <c:set var="num" value="1"/>
                <c:forEach var="ppitem" items="${sessionScope.cart}">
                    <c:param name="item_name_${num}" value="${ppitem.name}" />
                    <c:param name="item_number_${num}" value="${ppitem.pid}" />
                    <c:param name="amount_${num}" value="${ppitem.price}" />
                    <c:param name="quantity_${num}" value="${ppitem.qua}" />
                    <c:set var="num" value="${num + 1}"/>
                </c:forEach>
            </c:redirect>
        </c:if>
    </c:if> 
</c:if>
<!--RESPONSE -->
<c:if test="${not empty param.tx && not empty param.st}">
    123
    <c:out value="${sessionScope.oid}" />
    <sql:update dataSource="${conn}" var="update">
        UPDATE wOrder SET [Status]=?, TransactionID=? WHERE OrderId = ?;
        <sql:param value="Completed" />
        <sql:param value="${param.tx}" />
        <sql:param value="${sessionScope.oid}" />
    </sql:update>
    <c:if test="${update>=1}">
            <c:remove var="cart" scope="session"/>
            <c:redirect url="../checkout.jsp" >
                <c:param name="page" value="success" />
            </c:redirect>
    </c:if>
</c:if>

