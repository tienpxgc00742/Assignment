<%-- 
    Document   : create
    Created on : May 21, 2015, 7:29:08 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  <%@include file="header.jsp" %>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript" src="./Assets/js/form.js"></script>
  <script type="text/javascript" src="./Assets/js/prototype.js"></script>
 </head>
 <body>
  <main class="main-wrapper">
   <div class="container">
    <div class="container-inner">
     <section class="main-page">
      <div class="main-container col1-layout">     
       <div class="main">
        <div class="col-main">
         <div class="account-create">
          <div class="page-title">
           <h1>Create an Account</h1>
          </div>
          <form action="./sql/user.jsp.jsp" method="POST" id="form-validate">
           <input type="hidden" name="action" value="register"/>
           <font color="red">
           <c:if test="${param.response eq 'fail'}">
            <c:out value="Đã tồn tại username hoặc thông tin không chính xác"/>
           </c:if></font>
           <div class="fieldset">
            <h2 class="legend">Personal Information</h2>
            <ul class="form-list">
             <li class="fields">
              <div class="customer-name">
               <div class="field name-firstname">
                <label for="firstname" class="required"><em>*</em>Full Name</label>
                <div class="input-box">
                 <input type="text" name="name" value="" title="First Name" maxlength="255" class="input-text required-entry" required>
                </div>
               </div>
              </div>
             </li>
             <li>
              <label for="email_address" class="required"><em>*</em>User Name</label>
              <div class="input-box">
               <input type="text" name="username" value="" title="Email Address" class="input-text validate-email required-entry" required>
              </div>
             </li>
            </ul>
           </div>
           <div class="fieldset">
            <h2 class="legend">Login Information</h2>
            <ul class="form-list">
             <li class="fields">
              <div class="field">
               <label for="password" class="required"><em>*</em>Password</label>
               <div class="input-box">
                <input type="password" name="password" id="password" title="Password" class="input-text required-entry validate-password"  required>
               </div>
              </div>
             </li>
            </ul>
           </div>
           <div class="buttons-set">
            <p class="required">* Required Fields</p>
            <p class="back-link"><a href="http://themevast.com/demo/tv_bigboom/index.php/customer/account/login/" class="back-link"><small>« </small>Back</a></p>
            <button type="submit" title="Submit" class="button"><span><span>Submit</span></span></button>
           </div>
          </form>
         </div>
        </div>
       </div>
      </div>
     </section>
    </div>
   </div>
  </main>
  <%@include file="footer.jsp" %>
 </body>
</html>
