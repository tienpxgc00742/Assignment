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
          <li><a href="ecommerce-dashboard.html">Dashboard</a>
          </li>
          <li><a href="ecommerce-products.html">Products</a>
          </li>
          <li><a href="ecommerce-orders.html">Orders</a>
          </li>
          <li class="active"><a href="ecommerce-customers.html">Customers</a>
          </li>
          <li><a href="ecommerce-settings.html">Categories</a>
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
          <img src="../images/${a.Avatar}" alt="" style="width: 237px;height: 230px;  max-width: 100%;">
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
         Phasellus viverra, lectus quis iaculis gravida, nisl felis cursus dui, id rutrum nibh quam nec ante. In ullamcorper ipsum nec tincidunt convallis. Fusce rhoncus, nisl nec ornare laoreet, ligula eros volutpat odio, sit amet ultricies ex nulla quis dolor.
         Sed consectetur, elit non ultricies viverra, orci ex feugiat felis, quis suscipit enim metus id ante. Aenean urna elit, laoreet accumsan pharetra et, lobortis nec odio. Ut faucibus, neque at posuere fermentum, ipsum enim lacinia augue, nec
         malesuada velit orci sed enim. Vivamus porttitor lacus eget arcu dapibus semper. Proin nec pretium nunc, vitae interdum tortor.
        </div>
       </div>
       <!-- /About -->
      </div>
      <div class="col s12 l3">
       <!-- Statistics -->
       <div class="card profile-skills">
        <div class="title">
         <h5><i class="fa fa-bar-chart"></i> Statistics</h5>
         <a class="close" href="#">
          <i class="mdi-content-clear"></i>
         </a>
         <a class="minimize" href="#">
          <i class="mdi-navigation-expand-less"></i>
         </a>
        </div>
        <div class="content">
         <div class="row center-align" style="margin-top: 0">
          <div class="col m6 s12">
           <strong>87</strong>
           <h5>Following</h5>
          </div>
          <div class="col m6 s12">
           <strong>12</strong>
           <h5>Followers</h5>
          </div>
         </div>
        </div>
       </div>
       <!-- /Statistics -->
       <p></p>
       <!-- Skills -->
       <div class="card profile-skills">
        <div class="title">
         <h5><i class="fa fa-trophy"></i> Skills</h5>
         <a class="close" href="#">
          <i class="mdi-content-clear"></i>
         </a>
         <a class="minimize" href="#">
          <i class="mdi-navigation-expand-less"></i>
         </a>
        </div>
        <div class="content">
         <a href="#!" class="skill">JavaScript</a>
         <a href="#!" class="skill">CSS3</a>
         <a href="#!" class="skill">HTML5</a>
         <a href="#!" class="skill">jQuery</a>
         <a href="#!" class="skill">AngularJS</a>
         <a href="#!" class="skill">Bootstrap</a>
         <a href="#!" class="skill">PHP</a>
         <a href="#!" class="skill">MySQL</a>
        </div>
       </div>
       <!-- /Skills -->
       <p></p>
       <!-- Send Message -->
       <div class="card">
        <div class="title">
         <h5><i class="fa fa-user"></i> Send Message</h5>
         <a class="close" href="#">
          <i class="mdi-content-clear"></i>
         </a>
         <a class="minimize" href="#">
          <i class="mdi-navigation-expand-less"></i>
         </a>
        </div>
        <div class="content">
         <form action="#!">
          <div class="input-field">
           <textarea id="textarea1" class="materialize-textarea" name="message"></textarea>
           <label for="textarea1">Send me message</label>
          </div>
          <button class="btn">Send</button>
         </form>
        </div>
       </div>
       <!-- /Send Message -->
      </div>
     </div>
    </section>
   </c:otherwise>
  </c:choose>
 </body>
</html>