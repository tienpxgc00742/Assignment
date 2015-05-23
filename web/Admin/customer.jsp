<%--
    Document   : customers
    Created on : May 17, 2015, 3:11:21 PM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 </head>
 <body>
  <%@include file="menu.jsp"%>
  <sql:query dataSource="${conn}" var="resultaccount">
   SELECT * FROM wAccount 
  </sql:query>
  <sql:query dataSource="${conn}" var="profile" sql="SELECT * FROM wAccount WHERE [user] = ?">
   <sql:param value="${param.username}"/> 
  </sql:query>
  <c:choose>
   <c:when test="${empty param.username}">
    <section class="content-wrap ecommerce-customers">
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
          <li><a href="order.jsp">Orders</a>
          </li>
          <li class="active"><a href="customer.jsp">Customers</a>
          </li>
          <li><a href="categories.jsp">Categories</a>
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
     <div class="row">
      <c:forEach var="a" items="${resultaccount.rows}" >
       <div class="col s6 m3 l2">
        <div class="card image-card">
         <div class="image">
          <img src="../images/${a.Avatar}" alt="" style="width: 237px;height: 190px;  max-width: 100%;">
          <a href="customer.jsp?username=${a.user}" class="link"></a>
         </div>
         <div class="content">
          <h4 style="text-align: center">${a.user}</h4>
         </div>
        </div>
       </div>
      </c:forEach>
     </div>
    </section>
   </c:when>
   <c:otherwise>
    <section class="content-wrap">
     <!-- Breadcrumb -->
     <div class="page-title">
      <div class="row">
       <div class="col s12 m9 l10">
        <h1>Profile</h1>
        <ul>
         <li>
          <a href="#"><i class="fa fa-home"></i> Home</a>  <i class="fa fa-angle-right"></i>
         </li>
         <li><a href="dashboard.html">Dashboard</a>  <i class="fa fa-angle-right"></i>
         </li>
         <li><a href="#">Pages</a>  <i class="fa fa-angle-right"></i>
         </li>
         <li><a href="page-profile.html">Profile</a>
         </li>
        </ul>
       </div>
       <div class="col s12 m3 l2 right-align">
        <a href="#!" class="btn grey lighten-3 grey-text z-depth-0 chat-toggle"><i class="fa fa-comments"></i></a>
       </div>
      </div>
     </div>
     <!-- /Breadcrumb -->
     <div class="card-panel">
      <table class="profile-info">
       <tbody>
        <tr>
         <c:forEach var="p" items="${profile.rows}" >
          <td class="photo">
           <img src="../images/${p.avatar}" alt="Jogh Doe" style="width: 150px;height: 150px">
          </td>
          <td>
           <!-- Name -->
           <h3>${p.name}</h3>
           <!-- /Name -->
           <!-- Status Message -->
           <h5>Joined: ${p.joindate}</h5>
           <!-- /Status Message -->
           <!-- Contact Buttons -->
           <div class="contacts">
            <a href="#!" class="blue darken-3 white-text waves-effect">
             <i class="fa fa-facebook"></i>
            </a>
            <a href="#!" class="blue lighten-2 white-text waves-effect">
             <i class="fa fa-twitter"></i>
            </a>
            <a href="#!" class="red white-text waves-effect">
             <i class="fa fa-google-plus"></i>
            </a>
            <a href="#!" class="blue lighten-1 white-text waves-effect">
             <i class="fa fa-skype"></i>
            </a>
            <a href="#!" class="pink lighten-2 white-text waves-effect">
             <i class="fa fa-dribbble"></i>
            </a>
            <a href="#!" class="grey darken-3 white-text waves-effect">
             <i class="fa fa-github"></i>
            </a>
           </div>
           <!-- /Contact Buttons -->
          </td>
         </c:forEach>
        </tr>
       </tbody>
      </table>
     </div>
     <div class="row">
      <div class="col s12 l9">
       <!-- About -->
       <div class="card">
        <div class="title">
         <h5><i class="fa fa-user"></i> About</h5>
         <a class="close" href="#">
          <i class="mdi-content-clear"></i>
         </a>
         <a class="minimize" href="#">
          <i class="mdi-navigation-expand-less"></i>
         </a>
        </div>
        <div class="content">
         
        </div>
       </div>
       <!-- /About -->
      </div>
      <div class="col s12 l3" style="margin-top: -12px;">
       <p></p>
       <!-- Skills -->
       <div class="card profile-skills">
        <div class="title">
         <h5><i class="fa fa-android"></i> Tools</h5>
         <a class="close" href="#">
          <i class="mdi-content-clear"></i>
         </a>
         <a class="minimize" href="#">
          <i class="mdi-navigation-expand-less"></i>
         </a>
        </div>
        <div class="content">
         <a href="#!" class="skill red">Remove</a>
        </div>
       </div>
       <!-- /Skills -->
       <p></p>
      </div>
     </div>
    </section>
   </c:otherwise>
  </c:choose>
 </body>
</html>
