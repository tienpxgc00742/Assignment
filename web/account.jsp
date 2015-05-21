<%-- 
    Document   : account
    Created on : May 21, 2015, 8:17:39 AM
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
   <c:when test="${empty sessionScope['6c6f67696e75736572']}">
    <c:redirect url="login.jsp" />
   </c:when>
   <c:otherwise>
    <div class="container">
     <div class="container-inner">
      <section class="main-page">
       <div class="main-container col2-left-layout">
        <div class="main">
         <div class="row">
          <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
           <div class="col-left sidebar"><div class="nav-vcontainer hidden-xs hidden-sm" style="margin-top: -88px;">
             <div class="nav-inner">
              <div class="vmegamenu-title"><h2><i class="fa fa-bars"></i>Categories</h2></div>
              <div class="vmegamenu-contain">
               <div id="nav_vmegamenu" class="nav_vmegamenu">
                <sql:query dataSource="${conn}" var="category">
                 SELECT * FROM wCategory;
                </sql:query>
                <c:forEach var="c" items="${category.rows}">
                 <div id="megamenu_catid_4" class="megamenu" style="height: 58px;">
                  <div class="level-top">
                   <a href="./index.php/cameras-photos.html">
                    <span><img src="images/icon/laptop.png" style="margin-top: 5px;margin-left: -25px;padding-right: 15px;">${c.CategoryName}</span>
                    <i class="fa fa-angle-down"></i></a>
                  </div>
                  <!--           Danh mục con-->
                  <div id="dropdown4"class="dropdown" style="background: url(https://cdn.pcpartpicker.com/static/forever/images/product/95b206e5dd39d25c27b0db9eac553206.256c.jpg) 100% 100% #fff no-repeat;width: 400px !important;">
                   <div class="block1" id="block14">
                    <div class="column first col1">
                     <div class="itemMenu level1">
                      <a class="itemMenuName level1" href="./index.php/cameras-photos/bags.html"><span>${c.CategoryName}</span></a>
                      <div class="itemSubMenu level1">
                       <div class="itemMenu level2">
                        <sql:query dataSource="${conn}" var="subcategory">
                         SELECT * FROM wSubCategory WHERE CategoryName = ?;
                         <sql:param value="${c.CategoryName}"/> 
                        </sql:query>
                        <c:forEach var="sc" items="${subcategory.rows}">
                         <a class="itemMenuName level2" href="./index.php/cameras-photos/bags/iphone.html"><span>${sc.SubCategoryName}</span></a>
                          </c:forEach>
                       </div>
                      </div>
                     </div>
                    </div>
                    <div class="clearBoth"></div>
                   </div>

                  </div>
                 </div>
                </c:forEach>
               </div>
              </div>
             </div>
            </div>
            <div class="block block-account">
             <div class="block-title">
              <strong><span>My Account</span></strong>
             </div>
             <div class="block-content">
              <ul>
               <li class="current"><strong>Account Dashboard</strong></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/customer/account/edit/">Account Information</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/customer/address/">Address Book</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/sales/order/history/">My Orders</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/sales/billing_agreement/">Billing Agreements</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/sales/recurring_profile/">Recurring Profiles</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/review/customer/">My Product Reviews</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/tag/customer/">My Tags</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/wishlist/">My Wishlist</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/oauth/customer_token/">My Applications</a></li>
               <li><a href="http://themevast.com/demo/tv_bigboom/index.php/newsletter/manage/">Newsletter Subscriptions</a></li>
               <li class="last"><a href="http://themevast.com/demo/tv_bigboom/index.php/downloadable/customer/products/">My Downloadable Products</a></li>
              </ul>
             </div>
            </div>
            <div class="block block-list block-compare">
             <div class="block-title">
              <strong><span>Compare Products                    </span></strong>
             </div>
             <div class="block-content">
              <p class="empty">You have no items to compare.</p>
             </div>
            </div>
            <div class="banner-left"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/banner-left.jpg" alt=""></div></div>
          </div>
          <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
           <div class="col-main">
            <script type="text/javascript">
             jQuery(document).ready(function ($) {
              $('.control').click(function () {
               if ($(this).hasClass('inactive')) {
                $(this).removeClass('inactive');
                $(this).addClass('active');
                $('.themes-demo-wrap').animate({left: '0'}, 500);
               } else {
                $(this).addClass('inactive');
                $('.themes-demo-wrap').animate({left: '-260px'}, 500);
               }
              });
             });
            </script><div class="my-account"><div class="dashboard">
              <div class="page-title">
               <h1>My Dashboard</h1>
              </div>
              <ul class="messages"><li class="success-msg"><ul><li><span>Thank you for registering with Main Website Store.</span></li></ul></li></ul>    <div class="welcome-msg">
               <p class="hello"><strong>Hello, asd asd!</strong></p>
               <p>From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.</p>
              </div>
              <div class="box-account box-info">
               <div class="box-head">
                <h2>Account Information</h2>
               </div>
               <div class="col-1">
                <div class="box">
                 <div class="box-title">
                  <h3>Contact Information</h3>
                  <a href="http://themevast.com/demo/tv_bigboom/index.php/customer/account/edit/">Edit</a>
                 </div>
                 <div class="box-content">
                  <p>
                   asd asd<br>
                   tien@gmail.com<br>
                   <a href="http://themevast.com/demo/tv_bigboom/index.php/customer/account/edit/changepass/1/">Change Password</a>
                  </p>
                 </div>
                </div>
               </div>
              </div>
             </div></div>                                    </div>
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
   </c:otherwise>
  </c:choose>
 </body>
</html>
