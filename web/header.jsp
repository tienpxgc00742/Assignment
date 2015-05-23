<%-- Document : header Created on : May 16, 2015, 1:26:29 PM Author : MrT --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="./Assets/css/jquery.fancybox.css" rel="stylesheet" media="screen">
  <link rel="stylesheet" type="text/css" href="./Assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/bootstrap-theme.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/font-awesome.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/animate.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/styles.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/ajaxcart.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/megamenu.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/vmegamenu.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/imageslider.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/home.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/mobileresponsive.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/css-ddslick.css">
  <link rel="stylesheet" type="text/css" href="./Assets/css/font.css">
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript" src="./Assets/js/bootstrap-tooltip.js"></script>
  <script type="text/javascript" src="./Assets/js/bootstrap.js"></script>
  <script type="text/javascript" src="./Assets/js/quickview.js"></script>
  <script type="text/javascript" src="./Assets/js/ajaxcart.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.4/jquery.fancybox.pack.js"></script>
  <script type="text/javascript" src="./Assets/js/jquery.nivo.slider.pack.js"></script>
 </head>

 <body>
  <script>
      var initBox = '<div id ="wraper_ajax" class ="loadding_ajaxcart"><i class="fa fa-spinner fa-spin"></i></div>';
      initBox += '<div style="display:none;" class="wrapper_inboxCart"></div>';
      jQuery('body').append(initBox);
  </script>
  <%@include file="resource.jsp" %>
  <sql:query dataSource="${conn}" var="scategory">
      SELECT * FROM wSubCategory;
  </sql:query>
  <div class="header-wrapper">
   <div class="header-quick-access">
    <div class="container">
     <div class="row">
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
       <div class="quick-access">
        <div class="language-currency">
         <div class="header-language">
          <div class="form-language">
           <label class="select-language">Language:</label>
           <ul class="drop-lang">
            <li class="drop-trigger">
             <a class="en" href="./index.jsp/?___store=en&amp;___from_store=en">English<i class="fa fa-caret-down"></i></a>
             <ul class="sub-lang">
              <li><a class="br" href="./index.jsp/?___store=br&amp;___from_store=en">Brazil</a></li>
              <li><a class="en" href="./index.jsp/?___store=en&amp;___from_store=en">English</a></li>
              <li><a class="fr" href="./index.jsp/?___store=fr&amp;___from_store=en">Frech</a></li>
              <li><a class="ge" href="./index.jsp/?___store=ge&amp;___from_store=en">German</a></li>
              <li><a class="it" href="./index.jsp/?___store=it&amp;___from_store=en">Italian</a></li>
              <li><a class="pt" href="./index.jsp/?___store=pt&amp;___from_store=en">Portuguese</a></li>
              <li><a class="rs" href="./index.jsp/?___store=rs&amp;___from_store=en">Russian</a></li>
              <li><a class="es" href="./index.jsp/?___store=es&amp;___from_store=en">Spain</a></li>
              <li><a class="sw" href="./index.jsp/?___store=sw&amp;___from_store=en">Sweden</a></li>
             </ul>
            </li>
           </ul>
          </div>
         </div>
         <div class="header-currency">
          <div class="form-currency">
           <label class="select-currency">Currency:</label>
           <ul class="drop-currency">
            <li class="currency-trigger">
             <a class="level-0" href="./index.jsp/directory/currency/switch/currency/USD/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC8_X19fc3RvcmU9ZW4,/"><span>USD - US Dollar</span><i class="fa fa-caret-down"></i></a>
             <ul class="sub-currency">
              <li>
               <a href="./index.jsp/directory/currency/switch/currency/EUR/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC8_X19fc3RvcmU9ZW4,/">
                EUR - Euro        </a>
              </li>
              <li>
               <a href="./index.jsp/directory/currency/switch/currency/USD/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC8_X19fc3RvcmU9ZW4,/">
                USD - US Dollar        </a>
              </li>
             </ul>
            </li>
           </ul>
          </div>
         </div>
        </div>
       </div>
      </div>
      <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
       <div class="header-toplinks">
        <ul class="links">
         <li class="first"><a href="./account.jsp" title="My Account">My Account</a></li>
          <c:choose>
              <c:when test="${empty sessionScope['6c6f67696e75736572']}">
              <li class="last"><a href="login.jsp" title="Log In">Log In</a></li>
              <li class="login-register">
               <span>/</span><a href="create.jsp" title="Customer Register">Register</a>
              </li>
              <c:if test="${param.islogout eq 'true'}">
                  <script>
                      window.onload = function () {
                           alert('You are logout');
                      }
                  </script>
              </c:if>
          </c:when>
          <c:otherwise>
              <li class="last">
               <a id="logout" href="./functions/user.jsp?action=logout" title="Customer Register">Log Out</a>
              </li>
          </c:otherwise>
         </c:choose>
        </ul>
       </div>
       <!--<p class="welcome-msg"></p>-->
      </div>
     </div>
    </div>
   </div>
   <div class="header">
    <div class="container">
     <div class="page-header-content">
      <div class="row">
       <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
        <a href="./index.jsp/" class="logo"><strong>Magento Commerce</strong>
         <img src="http://nixiagamer.com/wp-content/uploads/2014/06/MSI-Gaming-Logo-component.png" style="width: 350px;height: 80px;margin-top: -20px"></a>
       </div>
       <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
        <form id="search_mini_form" action="productlist.jsp" method="get">
         <div class="form-search">
          <select name="cat" class="dd-select" style="width: 110px;text-indent: 20px;">
           <option>All</option>
           <c:forEach var="cate" items="${scategory.rows}">
               <option>${cate.SubCategoryName}</option>
           </c:forEach>
          </select>
          <input id="search" name="search" type="text" name="q" class="input-text" autocomplete="off" style="height: 35px">
          <button type="submit" class="button" data-original-title="Search" rel="tooltip" style="height: 40px"><span><span>Search</span></span>
          </button>
          <div id="search_autocomplete" class="search-autocomplete" style="display: none;"></div>
         </div>
        </form>
       </div>
       <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
        <div class="header-cart-mini">
         <div class="topcart-mini-container">
          <div id="mini_cart_block">
           <div id="bcart" class="block-cart mini_cart_ajax">
            <div id="scart" class="block-cart">
             <!--<span class="top-cart-icon"></span>-->
             <div class="cart-mini-title">
              <a class="shopping-cart" href="./mycart.jsp" rel="tooltip" data-original-title="">
               <span class="cart-title"><i class="fa fa-shopping-cart"></i></span>
               <span class="cart-count">${fn:length(sessionScope.cart)} item <span class="asc">- </span><span class="price">My Cart</span></span>
               <!--<span class="cart-qty"></span>-->
               <span class="arrows"><i class="fa fa-arrow-right"></i></span>
              </a>
             </div>
             <div class="top-cart-content">
              <!--              Xử lý chức năng giỏ hàng-->
              <c:choose>
                  <c:when test="${empty sessionScope.cart}">
                      <p class="empty">You have no items in your shopping cart.</p>
                      <div class="top-subtotal">Subtotal: <span class="price">$0.00</span></div>
                  </c:when>
                  <c:otherwise>
                      <ol id="cart-sidebar" class="mini-products-list">
                       <c:forEach var="item" items="${sessionScope.cart}">
                           <li class="item odd">
                            <a href="#" class="product-image">
                             <img src="./images/${item.image}" width="50" height="50"></a>
                            <div class="product-details">
                             <a id="${item.pid}" title="Remove This Item" onclick="removeCart(${item.pid})" class="btn-remove">Remove This Item</a>
                             <a href="./mycart.jsp" title="Edit item" class="btn-edit">Edit item</a>
                             <p class="product-name" style="width: 150px"><a href="#">${item.name}</a></p>
                             <strong>${item.qua}</strong> x
                             <span class="price">$${item.price}</span>                    
                            </div>
                           </li> 
                           <c:set var="multiplication" value="${item.qua * item.price}" scope="page"/>
                           <c:set var="total" value="${total + multiplication}" scope="page"/>
                       </c:forEach>
                      </ol>
                      <div class="top-subtotal">Subtotal: <span class="price">$${total}</span></div>
                      <div class="actions">
                       <button type="button" title="Checkout" class="button" onclick="window.location = './checkout.jsp'"><span><span>Checkout</span></span></button>
                      </div>
                  </c:otherwise>
              </c:choose>
             </div>
            </div>
           </div>
          </div>
         </div>
        </div>
       </div>
      </div>
      <nav class="nav-container">
       <div class="nav-mobilemenu-container visible-xs">
        <div class="navbar">
         <div id="navbar-inner" class="navbar-inner navbar-inactive">
          <div class="menu-mobile">
           <a class="btn btn-navbar navbar-toggle" rel="tooltip" data-original-title="">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
           </a>
           <span class="brand navbar-brand">Menu</span>
          </div>
          <ul id="nav-mobilemenu" class="mobilemenu nav-collapse collapse">
           <li class="level0 nav-1 level-top first parent">
            <a href="./index.jsp/fashion.html" class="level-top">
             <span>Fashion</span>
            </a>
            <ul class="level0" style="display: none;">
             <li class="level1 nav-1-1 first parent">
              <a href="./index.jsp/fashion/material-bag.html">
               <span>Material Bag</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-1-1-1 first">
                <a href="./index.jsp/fashion/material-bag/chocolates.html">
                 <span>Chocolates</span>
                </a>
               </li>
               <li class="level2 nav-1-1-2">
                <a href="./index.jsp/fashion/material-bag/bathroom.html">
                 <span>Bathroom</span>
                </a>
               </li>
               <li class="level2 nav-1-1-3">
                <a href="./index.jsp/fashion/material-bag/softwear.html">
                 <span>Softwear</span>
                </a>
               </li>
               <li class="level2 nav-1-1-4 last">
                <a href="./index.jsp/fashion/material-bag/stones.html">
                 <span>Stones</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
             <li class="level1 nav-1-2 parent">
              <a href="./index.jsp/fashion/arreglos.html">
               <span>Arreglos</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-1-2-5 first">
                <a href="./index.jsp/fashion/arreglos/shoes.html">
                 <span>Shoes</span>
                </a>
               </li>
               <li class="level2 nav-1-2-6">
                <a href="./index.jsp/fashion/arreglos/swimwear.html">
                 <span>Swimwear</span>
                </a>
               </li>
               <li class="level2 nav-1-2-7">
                <a href="./index.jsp/fashion/arreglos/books.html">
                 <span>Books</span>
                </a>
               </li>
               <li class="level2 nav-1-2-8 last">
                <a href="./index.jsp/fashion/arreglos/varius.html">
                 <span>Varius</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
             <li class="level1 nav-1-3 parent">
              <a href="./index.jsp/fashion/dresses.html">
               <span>Dresses</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-1-3-9 first">
                <a href="./index.jsp/fashion/dresses/cocktail.html">
                 <span>Cocktail</span>
                </a>
               </li>
               <li class="level2 nav-1-3-10">
                <a href="./index.jsp/fashion/dresses/day.html">
                 <span>Day</span>
                </a>
               </li>
               <li class="level2 nav-1-3-11">
                <a href="./index.jsp/fashion/dresses/evening.html">
                 <span>Evening</span>
                </a>
               </li>
               <li class="level2 nav-1-3-12 last">
                <a href="./index.jsp/fashion/dresses/sports.html">
                 <span>Sports</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
             <li class="level1 nav-1-4 last parent">
              <a href="./index.jsp/fashion/handbags.html">
               <span>Handbags</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-1-4-13 first">
                <a href="./index.jsp/fashion/handbags/blazers.html">
                 <span>Blazers</span>
                </a>
               </li>
               <li class="level2 nav-1-4-14">
                <a href="./index.jsp/fashion/handbags/table.html">
                 <span>table</span>
                </a>
               </li>
               <li class="level2 nav-1-4-15">
                <a href="./index.jsp/fashion/handbags/coats.html">
                 <span>coats</span>
                </a>
               </li>
               <li class="level2 nav-1-4-16 last">
                <a href="./index.jsp/fashion/handbags/kids.html">
                 <span>kids</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
            </ul>
            <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
           <li class="level0 nav-2 level-top parent">
            <a href="./index.jsp/cameras-photos.html" class="level-top">
             <span>Cameras &amp; Photos</span>
            </a>
            <ul class="level0" style="display: none;">
             <li class="level1 nav-2-1 first parent">
              <a href="./index.jsp/cameras-photos/bags.html">
               <span>Bags</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-2-1-1 first">
                <a href="./index.jsp/cameras-photos/bags/iphone.html">
                 <span>Iphone</span>
                </a>
               </li>
               <li class="level2 nav-2-1-2">
                <a href="./index.jsp/cameras-photos/bags/bikinis.html">
                 <span>Bikinis</span>
                </a>
               </li>
               <li class="level2 nav-2-1-3">
                <a href="./index.jsp/cameras-photos/bags/bootees-bags.html">
                 <span>Bootees  Bags</span>
                </a>
               </li>
               <li class="level2 nav-2-1-4">
                <a href="./index.jsp/cameras-photos/bags/blazers.html">
                 <span>Blazers</span>
                </a>
               </li>
               <li class="level2 nav-2-1-5">
                <a href="./index.jsp/cameras-photos/bags/elizabet.html">
                 <span>Elizabet</span>
                </a>
               </li>
               <li class="level2 nav-2-1-6">
                <a href="./index.jsp/cameras-photos/bags/shots.html">
                 <span>Shots</span>
                </a>
               </li>
               <li class="level2 nav-2-1-7">
                <a href="./index.jsp/cameras-photos/bags/apples.html">
                 <span>Apples</span>
                </a>
               </li>
               <li class="level2 nav-2-1-8 last">
                <a href="./index.jsp/cameras-photos/bags/optimation.html">
                 <span>Optimation</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
             <li class="level1 nav-2-2 last parent">
              <a href="./index.jsp/cameras-photos/clothing.html">
               <span>Clothing</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-2-2-9 first">
                <a href="./index.jsp/cameras-photos/clothing/coats.html">
                 <span>coats</span>
                </a>
               </li>
               <li class="level2 nav-2-2-10">
                <a href="./index.jsp/cameras-photos/clothing/t-shirts.html">
                 <span>T-shirts</span>
                </a>
               </li>
               <li class="level2 nav-2-2-11">
                <a href="./index.jsp/cameras-photos/clothing/t-shirts-5.html">
                 <span>Tennis</span>
                </a>
               </li>
               <li class="level2 nav-2-2-12">
                <a href="./index.jsp/cameras-photos/clothing/tyverialarmer.html">
                 <span>Tyverialarmer</span>
                </a>
               </li>
               <li class="level2 nav-2-2-13">
                <a href="./index.jsp/cameras-photos/clothing/clothing.html">
                 <span>Clothing</span>
                </a>
               </li>
               <li class="level2 nav-2-2-14 last">
                <a href="./index.jsp/cameras-photos/clothing/lingerie.html">
                 <span>Lingerie</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
            </ul>
            <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
           <li class="level0 nav-3 level-top">
            <a href="./index.jsp/watches.html" class="level-top">
             <span>Watches</span>
            </a>
           </li>
           <li class="level0 nav-4 level-top">
            <a href="./index.jsp/jewelry.html" class="level-top">
             <span>Jewelry</span>
            </a>
           </li>
           <li class="level0 nav-5 level-top parent">
            <a href="./index.jsp/pc-laptop.html" class="level-top">
             <span>PC &amp; Laptop</span>
            </a>
            <ul class="level0" style="display: none;">
             <li class="level1 nav-5-1 first parent">
              <a href="./index.jsp/pc-laptop/pc-desktop.html">
               <span>PC &amp; Desktop</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-5-1-1 first">
                <a href="./index.jsp/pc-laptop/pc-desktop/t-shirts.html">
                 <span>T-shirts</span>
                </a>
               </li>
               <li class="level2 nav-5-1-2">
                <a href="./index.jsp/pc-laptop/pc-desktop/coats.html">
                 <span>coats</span>
                </a>
               </li>
               <li class="level2 nav-5-1-3">
                <a href="./index.jsp/pc-laptop/pc-desktop/jackets.html">
                 <span>Jackets </span>
                </a>
               </li>
               <li class="level2 nav-5-1-4">
                <a href="./index.jsp/pc-laptop/pc-desktop/jeans.html">
                 <span>jeans</span>
                </a>
               </li>
               <li class="level2 nav-5-1-5">
                <a href="./index.jsp/pc-laptop/pc-desktop/five-stone-rings.html">
                 <span>Five Stone Rings</span>
                </a>
               </li>
               <li class="level2 nav-5-1-6">
                <a href="./index.jsp/pc-laptop/pc-desktop/rocket.html">
                 <span>Rocket</span>
                </a>
               </li>
               <li class="level2 nav-5-1-7">
                <a href="./index.jsp/pc-laptop/pc-desktop/girls.html">
                 <span>Girls</span>
                </a>
               </li>
               <li class="level2 nav-5-1-8 last">
                <a href="./index.jsp/pc-laptop/pc-desktop/boots.html">
                 <span>boots</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
             <li class="level1 nav-5-2 last parent">
              <a href="./index.jsp/pc-laptop/laptops-mac.html">
               <span>Laptops Mac</span>
              </a>
              <ul class="level1" style="display: none;">
               <li class="level2 nav-5-2-9 first">
                <a href="./index.jsp/pc-laptop/laptops-mac/biscuits.html">
                 <span>Biscuits</span>
                </a>
               </li>
               <li class="level2 nav-5-2-10">
                <a href="./index.jsp/pc-laptop/laptops-mac/gifts-and-tech.html">
                 <span>Gifts and Tech</span>
                </a>
               </li>
               <li class="level2 nav-5-2-11">
                <a href="./index.jsp/pc-laptop/laptops-mac/el-installation.html">
                 <span>El-installation</span>
                </a>
               </li>
               <li class="level2 nav-5-2-12">
                <a href="./index.jsp/pc-laptop/laptops-mac/furniture.html">
                 <span>Furniture</span>
                </a>
               </li>
               <li class="level2 nav-5-2-13">
                <a href="./index.jsp/pc-laptop/laptops-mac/cocktail.html">
                 <span>Cocktail</span>
                </a>
               </li>
               <li class="level2 nav-5-2-14 last">
                <a href="./index.jsp/pc-laptop/laptops-mac/toys.html">
                 <span>Toys</span>
                </a>
               </li>
              </ul>
              <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
            </ul>
            <span class="head"><a href="javascript:void(0)"></a></span><span class="head"><a href="javascript:void(0)"></a></span></li>
           <li class="level0 nav-6 level-top">
            <a href="./index.jsp/smartphone-table.html" class="level-top">
             <span>Smartphone &amp; Table</span>
            </a>
           </li>
           <li class="level0 nav-7 level-top">
            <a href="./index.jsp/lights-lamps.html" class="level-top">
             <span>Lights &amp; Lamps</span>
            </a>
           </li>
           <li class="level0 nav-8 level-top">
            <a href="./index.jsp/sound-audio.html" class="level-top">
             <span>Sound &amp; Audio</span>
            </a>
           </li>
           <li class="level0 nav-9 level-top">
            <a href="./index.jsp/televisions.html" class="level-top">
             <span>Televisions</span>
            </a>
           </li>
           <li class="level0 nav-10 level-top last">
            <a href="./index.jsp/media.html" class="level-top">
             <span>Media</span>
            </a>
           </li>
           <li class="blog level0 level-top"><a href="./index.jsp/blog/" class="level0" title="blog"><span>Blog</span></a></li>
          </ul>
         </div>
        </div>
       </div>
       <div id="nav_megamenu" class="nav_megamenu visible-lg visible-md">
        <div id="megamenu_home" class="megamenu act">
         <div class="level-top"><a href="index.jsp"><span>Home</span></a></div>
        </div>
        <div class="megamenu nav_product nav_newproduct">
         <div class="level-top"><a href="index.jsp"><span>Shop</span><i class="fa fa-angle-down"></i></a><span class="new">New</span></div>
         <div class="dropdown" style="left: 594.546875px; width: 0px;">
          <div class="newproduct">
           <p class="des">NEW.</p>
           <ul class="products-grid row">
            <li class="item col-md-3 col-sm-6 col-sms-6 col-smb-12  first">
             <div class="item-inner">
              <a href="./index.jsp/pleasure-rationally.html" title="Dummy Product #15" class="product-image"><img src="./Home page_files/1_1.jpg" width="300" height="300" alt="Dummy Product #15"></a>
              <h2 class="product-name"><a href="./index.jsp/pleasure-rationally.html" title="Dummy Product #15">Dummy Product #15</a></h2>
              <div class="ratings">
               <div class="rating-box">
                <div class="rating" style="width:80%"></div>
               </div>
               <p class="rating-links">
                <a href="./index.jsp/review/product/list/id/15/">(1 Reviews)</a>
                <span class="separator">|</span>
                <a class="add-review" href="./index.jsp/review/product/list/id/15/#review-form">Add Your Review</a>
               </p>
              </div>
              <div class="price-box">
               <p class="old-price">
                <span class="price-label">Regular Price:</span>
                <span class="price" id="old-price-15">
                 $333.00                </span>
               </p>
               <p class="special-price">
                <span class="price-label">Special Price</span>
                <span class="price" id="product-price-15">
                 $222.00                </span>
               </p>
              </div>
              <div class="actions">
               <button type="button" class="button btn-cart" data-original-title="Add to Cart" rel="tooltip"><span><span><i class="fa fa-shopping-cart"></i>Add to Cart</span></span>
               </button>
               <ul class="add-to-links">
                <li><a href="./index.jsp/catalog/product_compare/add/product/15/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC8_X19fc3RvcmU9ZW4,/form_key/Cr56F5hQhRnIsACR/" class="link-compare" data-original-title="Add to Compare" rel="tooltip"><i class="fa fa-exchange"></i></a></li>
                <li><a href="./index.jsp/wishlist/index/add/product/15/form_key/Cr56F5hQhRnIsACR/" class="link-wishlist" data-original-title="Add to Wishlist" rel="tooltip"><i class="fa fa-heart"></i></a></li>
               </ul>
              </div>
             </div>
            </li>
           </ul>
          </div>
         </div>
        </div>
        <div id="megamenu_extra" class="megamenu">
         <div class="level-top"><span class="block-title">Menu&nbsp;Features<i class="fa fa-angle-down"></i></span></div>
         <div id="dropdownmegamenu_extra" class="dropdown cmsblock" style="width: 1118px; left: 0px;">
          <div class="block2" id="block2megamenu_extra">
           <div class="custom-menu-wrapper">
            <div class="row">
             <div class="col-xs-6" style="width: 360px">
              <div class="menu-col menu-col1">
               <div class="menu-custom-img"  onclick="location.href = './Admin/dashboard.jsp'">&nbsp;<em class="fa fa-cogs"></em></div>
               <h3>ADMIN</h3>
               <div class="menu-custom-des">Admin Site.</div>
              </div>
             </div>
             <div class="col-xs-6" style="width: 360px">
              <div class="menu-col menu-col1">
               <div class="menu-custom-img">&nbsp;<em class="fa fa-file-text-o"></em></div>
               <h3>Easy Documentation</h3>
               <div class="menu-custom-des">Document Guide</div>
              </div>
             </div>
             <div class="col-xs-6" style="width: 360px">
               <div class="menu-col menu-col1">
                <div class="menu-custom-img">&nbsp;<em class="fa fa-desktop"></em></div>
                <h3>Responsive Design</h3>
                <div class="menu-custom-des">Quick Cart</div>
               </div>
              </div>
             </div>
            </div>
           </div>
          </div>
         </div>
         <div class="megamenu nav_product nav_saleproduct">
          <div class="level-top"><a href="./index.jsp"><span>clearance</span><i class="fa fa-angle-down"></i></a><span class="hot">Hot</span></div>

         </div>
         <div id="megamenu_link" class="megamenu">
          <div class="level-top">
           <p><a href="../">About</a><a href="./index.jsp">Contact Us</a></p>
          </div>
         </div>
        </div>
        <script type="text/javascript">
            var MEGAMENU_EFFECT = 0;
            jQuery(window).scroll(function () {
                 if (jQuery(this).scrollTop() > 200) {
                      jQuery('nav').addClass("fix-nav");
                 } else {
                      jQuery('nav').removeClass("fix-nav");
                 }
            });
        </script>
      </nav>
     </div>
    </div>
   </div>
  </div>
  <%@include file="script.jsp" %>
 </body>
</html>