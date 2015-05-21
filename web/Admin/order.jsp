<%-- 
    Document   : order
    Created on : May 21, 2015, 11:55:06 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <%@include file="menu.jsp" %>
 </head>
 <body>
  <section class="content-wrap ecommerce-orders">
    <!-- Breadcrumb -->
    <div class="ecommerce-title">

      <div class="row">
        <div class="col s12 m9 l10">
          <!--h1>@@title</h1-->
          <nav>
            <ul class="left">
              <li><a href="ecommerce-dashboard.html">Dashboard</a>
              </li>
              <li><a href="ecommerce-products.html">Products</a>
              </li>
              <li class="active"><a href="ecommerce-orders.html">Orders</a>
              </li>
              <li><a href="ecommerce-customers.html">Customers</a>
              </li>
              <li><a href="ecommerce-settings.html">Settings</a>
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


    <!-- Products -->
    <div class="card">
      <div class="title">
        <h5>Orders</h5>
        <div class="btn-group right">
          <a href="ecommerce-order-single.html" class="btn btn-small z-depth-0"><i class="mdi mdi-editor-mode-edit"></i></a>
          <a href="#" class="btn btn-small red lighten-1 z-depth-0"><i class="mdi mdi-action-delete"></i></a>
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
             <tr>
                <th>
                  <input type="checkbox" id="checkbox1">
                  <label for="checkbox1"></label>
                </th>
                <td>Today</td>
                <td>#0004325</td>
                <td>
                  <img src="assets/_con/images/user-30x30.jpg" alt="John Doe" class="circle photo">John Doe</td>
                <td>$1,489.00</td>
                <td class="blue-text">Pending</td>
                <td><a href="ecommerce-order-single.html" class="btn btn-small z-depth-0"><i class="mdi mdi-editor-mode-edit"></i></a>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <!-- /Products -->


  </section>
 </body>
</html>
