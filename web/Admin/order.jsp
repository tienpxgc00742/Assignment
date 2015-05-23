<%-- 
    Document   : order
    Created on : May 21, 2015, 11:55:06 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <%@include file="menu.jsp" %>
 </head>
 <body>
  <c:choose>
      <c:when test="${not empty param.action}">
          <c:if test="${param.action eq 'edit' && not empty param.oid}">
              <sql:query var="orders" dataSource="${conn}">
                  SELECT [OrderId], Convert(VARCHAR(11), GetDate(), 101) AS OrderDate,[user],[FullName],[Address],[Phone],[Total],[Type],[Status],[TransactionID] FROM wOrder WHERE OrderId = ?;
                  <sql:param value="${param.oid}"/>
              </sql:query>
              <section class="content-wrap ecommerce-order-single">

               <!-- Breadcrumb -->
               <div class="ecommerce-title">

                <div class="row">
                 <div class="col s12 m9 l10">
                  <!--h1>@@title</h1-->
                  <nav>
                   <ul class="left">
                    <li><a href="dashboard.jsp">Dashboard</a>
                    </li>
                    <li><a href="product.jsp">Products</a>
                    </li>
                    <li class="active"><a href="order.jsp">Orders</a>
                    </li>
                    <li><a href="customer.jsp">Customers</a>
                    </li>
                    <li><a href="categories.jsp">Settings</a>
                    </li>
                   </ul>
                  </nav>

                 </div>
                 <div class="col s12 m3 l2 right-align">
                  <a href="#!" class="btn grey lighten-3 grey-text z-depth-0 chat-toggle"><i class="fa fa-comments"></i></a>
                 </div>
                </div>

               </div>
               <!-- /Breadcrumb -->

               <form action="../functions/db.jsp">
                <input type="hidden" name="action" value="edit"/>
                <!-- Save and Cancel buttons -->
                <p class="right-align">
                 <input type="submit"  class="btn teal" value="Save" style="width: 104"/>
                 <a class="btn" href="./order.jsp">Cancel</a>
                </p>
                <!-- /Save and Cancel buttons -->

                <c:forEach var="order" items="${orders.rows}">
                    <input type="hidden" name="oid" value="${order.OrderId}"/>
                    <div class="row">
                     <!-- General -->
                     <div class="col s12">
                      <div class="card-panel">
                       <div class="row no-margin-top">
                        <div class="col s12 l4">
                         <h4>#${order.OrderId}</h4>
                        </div>
                        <div class="col s12 l4">
                         <h4>${order.OrderDate}</h4>
                        </div>
                        <div class="col s12 l4">
                         <select id="status"name="order_status">
                          <option value="" disabled="">Order Status</option>
                          <option value="Pending" ${order.Status == 'Pending' ? 'selected' : ''}>Pending</option>
                          <option value="Completed" ${order.Status == 'Completed' ? 'selected' : ''}>Completed</option>
                          <option value="Canceled" ${order.Status == 'Canceled' ? 'selected' : ''}>Canceled</option>
                         </select>
                        </div>
                       </div>
                      </div>
                     </div>
                     <!-- /General -->
                    </div>


                    <div class="row">
                     <!-- Customer -->
                     <div class="col s12 l6">
                      <div class="card">
                       <div class="title">
                        <h5>Customer</h5>
                        <a class="minimize" href="#">
                         <i class="mdi-navigation-expand-less"></i>
                        </a>
                       </div>
                       <div class="content">
                        <sql:query var="user" dataSource="${conn}">
                            SELECT * FROM wAccount WHERE [user] = ?
                            <sql:param value="${order.user}"/>
                        </sql:query>
                        <div class="row no-margin-top">
                         <div class="col s12 l3">
                          <img width="100" src="../images/${user.rows[0].avatar}" alt="Patsy Griffin" class="circle photo">
                         </div>
                         <div class="col s12 l9">

                          <h4>${order.user}</h4>
                          ${order.FullName}
                          <br> ${order.Address}
                          <br><i class="mdi-communication-phone"></i> ${order.Phone}
                         </div>
                        </div>

                       </div>
                      </div>
                     </div>
                     <!-- /Customer -->

                     <!-- Payment -->
                     <div class="col s12 l6">
                      <div class="card">
                       <div class="title">
                        <h5>Payment</h5>
                        <a class="minimize" href="#">
                         <i class="mdi-navigation-expand-less"></i>
                        </a>
                       </div>
                       <div class="content">

                        <!-- Status -->
                        <div class="row no-margin-top">
                         <div class="col s3">
                          <label class="setting-title">
                           Status
                          </label>
                         </div>
                         <div class="col s9">
                          <c:choose>
                              <c:when test="${not empty order.TransactionID}">
                                  <label class="green-text">Paid</label>
                              </c:when>
                              <c:otherwise>
                                  <label class="red-text">UnPaid</label>
                              </c:otherwise>
                          </c:choose>
                         </div>
                        </div>
                        <!-- /Status -->

                        <!-- Payment Type -->
                        <div class="row no-margin-top">
                         <div class="col s3">
                          <label class="setting-title">
                           Type
                          </label>
                         </div>
                         <div class="col s3">
                          <label>
                           <img src="../Assets/images/paypal.png" alt="PayPal">
                          </label>
                         </div>
                         <div class="col s5">
                          <label>TransactionID: #${order.TransactionID}</label>
                         </div>
                        </div>
                        <!-- /Payment Type -->

                       </div>
                      </div>
                     </div>
                     <!-- /Payment -->
                    </div>


                    <!-- Products -->
                    <div class="row">
                     <div class="col s12">
                      <div class="card">
                       <div class="title">
                        <h5>Products</h5>
                        <a class="minimize" href="#">
                         <i class="mdi-navigation-expand-less"></i>
                        </a>
                       </div>
                       <div class="content">

                        <div class="table-responsive">
                         <table class="table table-hover">
                          <sql:query dataSource="${conn}" var="dorders">
                              SELECT OrderDetailId,[Image],ProductName,dbo.usp_ClearHTMLTags([Description]) AS [Description],Quantity,wOrderDetail.UnitPrice FROM wOrderDetail INNER JOIN wProduct ON wOrderDetail.ProductID = wProduct.ProductID WHERE OrderId = ?
                              <sql:param value="${order.OrderId}"/>
                          </sql:query>
                          <thead>
                           <tr>
                            <th>SKU</th>
                            <th>Image</th>
                            <th>Product Title</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Total</th>
                           </tr>
                          </thead>
                          <tbody>
                           <c:forEach var="dorder" items="${dorders.rows}">
                               <tr>
                                <c:set var="imagetext" value="${dorder.Image}"/>
                                <c:set var="imageitem" value="${fn:split(imagetext, ',')}" />
                                <th>#${dorder.OrderDetailId}</th>
                                <td>
                                 <img src="../images/${imageitem[0]}" width="70" height="70">
                                </td>
                                <td>
                                 <a href="ecommerce-product-single.html">
                                  <strong class="grey-text text-darken-2">${dorder.ProductName}</strong>
                                  <br>
                                  <span class="grey-text">${fn:substring(dorder.Description, 0, 50)}</span>
                                 </a>
                                </td>
                                <td>${dorder.Quantity}</td>
                                <td>$${dorder.UnitPrice}</td>
                                <td>$${dorder.Quantity * dorder.UnitPrice}</td>
                               </tr>
                           </c:forEach>
                           <tr>
                            <td colspan="3" rowspan="4">
                            </td>
                            <td class="right-align"><strong>Subtotal</strong>
                            </td>
                            <td class="right-align" colspan="2">$${order.Total}</td>
                           </tr>
                           <tr>
                            <td class="right-align"><strong>Shipping</strong>
                            </td>
                            <td class="right-align" colspan="2">$0.00</td>
                           </tr>

                           <tr>
                            <td class="right-align"><strong>VAT</strong>
                            </td>
                            <td class="right-align" colspan="2">$0.00</td>
                           </tr>

                           <tr>
                            <td class="right-align"><strong>Total</strong>
                            </td>
                            <td class="right-align" colspan="2">
                             <strong class="h2">$${order.Total}</strong>
                            </td>
                           </tr>

                          </tbody>
                         </table>
                        </div>

                       </div>
                      </div>
                     </div>
                    </div>
                    <!-- /Products -->
                </form>
               </c:forEach>
              </section>
          </c:if>
      </c:when>
      <c:otherwise>
          <sql:query var="orders" dataSource="${conn}">
              SELECT [OrderId], Convert(VARCHAR(11), GetDate(), 101) AS OrderDate,[user],[FullName],[Address],[Phone],[Total],[Type],[Status],[TransactionID] FROM wOrder;
          </sql:query>
          <section class="content-wrap ecommerce-orders" style="font-size: 15px;">
           <!-- Breadcrumb -->
           <div class="ecommerce-title">
            <div class="row">
             <div class="col s12 m9 l10">
              <!--h1>@@title</h1-->
              <nav>
               <ul class="left">
                <li><a href="dashboard.jsp">Dashboard</a>
                </li>
                <li><a href="product.jsp">Products</a>
                </li>
                <li class="active"><a href="order.jsp">Orders</a>
                </li>
                <li><a href="customer.jsp">Customers</a>
                </li>
                <li><a href="categories.jsp">Settings</a>
                </li>
               </ul>
              </nav>
             </div>
             <div class="col s12 m3 l2 right-align">
              <a href="#!" class="btn grey lighten-3 grey-text z-depth-0 chat-toggle"><i class="fa fa-comments"></i></a>
             </div>
            </div>
           </div>
           <!-- Products -->
           <form id="orderform" action="../functions/db.jsp" method="GET">
            <input type="hidden" name="action" value="remove"/>
           <div class="card">
            <div class="title">
             <h5>Orders</h5>
             <div class="btn-group right">
              <a class="btn btn-small red lighten-1 z-depth-0" onclick="document.getElementById('orderform').submit();"><i class="mdi mdi-action-delete"></i></a>
             </div>
            </div>
            <div class="content">
             <div class="table-responsive">
              <table class="table table-hover">
               <thead>
                <tr>
                 <th>Select</th>
                 <th>Date</th>
                 <th>Order ID</th>
                 <th style="width: 100%">Customer</th>
                 <th>Total</th>
                 <th>Status</th>
                 <th>Action</th>
                </tr>
               </thead>
               <tbody>
                <c:forEach var="order" items="${orders.rows}">
                    <tr>
                     <th>
                      <input name="ordercheckbox" type="checkbox" id="checkbox-${order.OrderId}" value="${order.OrderId}">
                      <label for="checkbox-${order.OrderId}"></label>
                     </th>
                     <td>${order.OrderDate}</td>
                     <td>#${order.OrderId}</td>
                     <sql:query var="user" dataSource="${conn}">
                         SELECT * FROM wAccount WHERE [user] = ?
                         <sql:param value="${order.user}"/>
                     </sql:query>
                     <td>
                      <img src="../images/${user.rows[0].avatar}" width="30" height="30" alt="John Doe" class="circle photo">${order.user}
                     </td>

                     <td>$${order.Total}</td>

                     <td class='${order.Status == "Completed" ? 'green' : '' }${order.Status == "Canceled" ? 'red' : '' }${order.Status == "Pending" ? 'blue' : '' }-text'>${order.Status}</td>

                     <td><a href="./order.jsp?action=edit&&oid=${order.OrderId}" class="btn btn-small z-depth-0"><i class="mdi mdi-editor-mode-edit"></i></a>
                     </td>
                    </tr>
                </c:forEach>
               </tbody>
              </table>
             </div>
            </div>
           </div>
           </form>
           <!-- /Products -->


          </section>
      </c:otherwise>
  </c:choose>
  <script>
   <c:if test="${not empty param.responsetext}">
      window.onload = function () {
           Materialize.toast('${param.responsetext}', 4000)
      }
   </c:if>
  </script>
 </body>
</html>
