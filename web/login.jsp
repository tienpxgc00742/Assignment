<%-- 
    Document   : login
    Created on : May 21, 2015, 8:56:07 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" autoFlush="true" buffer="1094kb"%>
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
            <form action="sql/db.jsp" method="GET" id="login-form">
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
                <ul class="form-list">
                 <li>
                  <label for="username" class="required"><em>*</em>Username</label>
                  <div class="input-box">
                   <input type="text" name="loginusername" value="" id="email" class="input-text required-entry validate-email" title="Username">
                  </div>
                 </li>
                 <li>
                  <label for="pass" class="required"><em>*</em>Password</label>
                  <div class="input-box">
                   <input type="password" name="loginpassword" class="input-text required-entry validate-password" id="pass" title="Password">
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
            <script type="text/javascript">
             //<![CDATA[
             var dataForm = new VarienForm('login-form', true);
             //]]>
            </script>
           </div>
          </div>
         </div>
        </div>
       </section>
       <section class="brandlogo-wrapper">
        <div class="brandlogo-contain">

         <div class="bx-title brand-title"><h2>Brand &amp; Cliens</h2></div>
         <div class="bx-wrapper" style="max-width: 1171px; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 117px;"><ul class="bxslider" style="width: 915%; position: relative; -webkit-transition-duration: 0s; transition-duration: 0s; -webkit-transform: translate3d(-1176px, 0px, 0px);"><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-2.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-3.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-4.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-5.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-6.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-7.png" alt="brand"></a>												

            </li>
            <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-1.png" alt="brand"></a>												

            </li>
            <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-2.png" alt="brand"></a>												

            </li>
            <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-3.png" alt="brand"></a>												

            </li>
            <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-4.png" alt="brand"></a>												

            </li>
            <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-5.png" alt="brand"></a>												

            </li>
            <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-6.png" alt="brand"></a>												

            </li>
            <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-7.png" alt="brand"></a>												

            </li>
            <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-1.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-2.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-3.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-4.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-5.png" alt="brand"></a>												

            </li><li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">						    																													<a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-6.png" alt="brand"></a>												

            </li></ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>

         <script type="text/javascript">
          //<![CDATA[
          jQuery(document).ready(function ($) {
           $('.brandlogo-contain .bxslider').bxSlider(
                   {
                    speed: 600,
                    pause: 3000,
                    minSlides: 1,
                    //infiniteLoop: false,
                    maxSlides: 6,
                    slideWidth: 191,
                    slideMargin: 5,
                    autoHover: true,
                    moveSlides: 1,
                    pager: false,
                    controls: true,
                   }
           );
          });
          //]]>
         </script>
        </div>
       </section>

      </div>
     </div>
    </main>
   </c:otherwise>
  </c:choose>
 </body>
</html>
