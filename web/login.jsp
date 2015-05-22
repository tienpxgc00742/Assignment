<%-- 
    Document   : login
    Created on : May 21, 2015, 8:56:07 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  autoFlush="true" buffer="1094kb"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  <%@include file="header.jsp" %>
 </head>
 <body>

  <c:choose>
      <c:when test="${not empty sessionScope['6c6f67696e75736572']}">
          <c:redirect url="account.jsp" />
      </c:when>
      <c:otherwise>
          <main class="main-wrapper">
           <div class="container">
            <div class="container-inner">
             <section class="main-page">
              <div class="main-container col1-layout">     
               <div class="main">
                <div class="col-main">
                 <div class="account-login">
                  <div class="page-title">
                   <h1>Login or Create an Account</h1>
                  </div>
                  <form action="functions/user.jsp" method="GET" id="login-form">
                   <input type="hidden" name="page" value="${param.page}"/>
                   <input type="hidden" name="action" value="login"/>
                   <div class="col2-set">
                    <div class="col-1 new-users">
                     <div class="content">
                      <h2>New Customers</h2>
                      <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
                     </div>
                    </div>
                    <div class="col-2 registered-users">
                     <div class="content">
                      <h2>Registered Customers</h2>
                      <p>If you have an account with us, please log in.</p>
                      <font color="red"><c:if test="${not empty param.errMsg}">
                          <c:out value="${param.errMsg}" />
                      </c:if></font>
                      <ul class="form-list">
                       <li>
                        <label for="username" class="required"><em>*</em>Username</label>
                        <div class="input-box">
                         <input type="text" name="loginusername" value="" id="email" class="input-text required-entry validate-email" title="Username" required>
                        </div>
                       </li>
                       <li>
                        <label for="pass" class="required"><em>*</em>Password</label>
                        <div class="input-box">
                         <input type="password" name="loginpassword" class="input-text required-entry validate-password" id="pass" title="Password" required>
                        </div>
                       </li>
                      </ul>
                      <p class="required">* Required Fields</p>
                     </div>
                    </div>
                   </div>
                   <div class="col2-set">
                    <div class="col-1 new-users">
                     <div class="buttons-set">
                      <button type="button" title="Create an Account" class="button" onclick="window.location = './create.jsp';"><span><span>Create an Account</span></span></button>
                     </div>
                    </div>
                    <div class="col-2 registered-users">
                     <div class="buttons-set">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/customer/account/forgotpassword/" class="f-left">Forgot Your Password?</a>
                      <button type="submit" class="button" title="Login" id="send2"><span><span>Login</span></span></button>
                     </div>
                    </div>
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
      </c:otherwise>
  </c:choose>
 </body>
</html>
