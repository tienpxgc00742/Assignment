<%-- Document : xxx Created on : May 19, 2015, 11:35:07 AM Author : Administrator --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Dummy Product #02</title>
  <c:if test="${empty param.mode}">
   <%@include file="header.jsp" %>
  </c:if>
  <meta name="keywords" content="Magento, Varien, E-commerce">
  <meta name="robots" content="INDEX,FOLLOW">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
  <link rel="stylesheet" type="text/css" href="./Assets/css/font.css">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/base/default/css/widgets.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/ajaxcart/css/ajaxcart.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/blog/css/blog.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/megamenu/css/megamenu.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/megamenu/css/vmegamenu.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/themevast/css/cltool.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/cloudzoom/css/cloudzoom.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/css/print.css" media="print">
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/prototype/prototype.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/lib/ccard.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/prototype/validation.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/builder.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/effects.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/dragdrop.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/controls.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/slider.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/js.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/form.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/menu.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/mage/translate.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/mage/cookies.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/jquery.min.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/noconflict.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/jquery.fancybox.pack.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/bootstrap/bootstrap.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/bootstrap/bootstrap-tooltip.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/themevast.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/ajaxcart.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/jquery.bxslider.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/jquery.ddslick.min.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/megamenu.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/quickview.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/timer.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/product.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/configurable.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/calendar/calendar.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/calendar/calendar-setup.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/cloud-zoom.1.0.3.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/lightbox.js"></script>
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/css/mobileresponsive.css" media="all">
  <style>
   .add-to-box .fa {
    margin-top: 10px;
   }
  </style>
  <script type="text/javascript">
   //<![CDATA[
   Mage.Cookies.path = '/demo/tv_bigboom';
   Mage.Cookies.domain = '.themevast.com';
   //]]>
  </script>
  <script type="text/javascript">
   //<![CDATA[
   optionalZipCountries = ["HK", "IE", "MO", "PA"];
   //]]>
  </script>
  <script type="text/javascript">
   function initLightbox() {
    new Lightbox({
     fileLoadingImage: 'http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/cloudzoom/images/loading.gif',
     fileBottomNavCloseImage: 'http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/cloudzoom/images/closelabel.gif',
     overlayOpacity: 0.8, // controls transparency of shadow overlay
     animate: true, // toggles resizing animations
     resizeSpeed: 7, // controls the speed of the image resizing animations (1=slowest and 10=fastest)
     borderSize: 10,
     // When grouping images this is used to write: Image # of #.
     // Change it for non-english localization
     labelImage: "Image",
     labelOf: "of"
    });
   }
   if (Prototype.Browser.IE) {
    Event.observe(window, 'load', function () { //KB927917 fix
     initLightbox();
    });
   } else {
    document.observe("dom:loaded", function () {
     initLightbox();
    });
   }
  </script>
  <c:if test="${empty param.mode}">
  <body class=" catalog-product-view catalog-product-view product-quisque-in-arcu" data-twttr-rendered="true">
   <iframe id="twttrHubFrameSecure" allowtransparency="true" frameborder="0" scrolling="no" tabindex="0" name="twttrHubFrameSecure" src="https://platform.twitter.com/widgets/hub.f15fe2cd70788a40560e69fa17341d5e.html" style="position: absolute; top: -9999em; width: 10px; height: 10px;"></iframe>
   <iframe id="twttrHubFrame" allowtransparency="true" frameborder="0" scrolling="no" tabindex="0" name="twttrHubFrame" src="http://platform.twitter.com/widgets/hub.f15fe2cd70788a40560e69fa17341d5e.html" style="position: absolute; top: -9999em; width: 10px; height: 10px;"></iframe>
   <div class="wrapper">
    <div class="page">
     <main class="main-wrapper">
      <div class="container">
       <div class="container-inner">
        <section class="main-page">
         <div class="main-container col2-left-layout">
          <div class="main">
           <div class="row">
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
             <div class="col-left sidebar">
              <div class="nav-vcontainer hidden-xs hidden-sm">
               <div class="nav-inner">
                <div class="vmegamenu-title">
                 <h2><i class="fa fa-bars"></i>Categories</h2></div>
                <%@include file="resource.jsp" %>
                <sql:query dataSource="${conn}" var="category">
                 SELECT * FROM wCategory;
                </sql:query>
                <div class="vmegamenu-contain">
                 <div id="nav_vmegamenu" class="nav_vmegamenu">
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
               <script type="text/javascript">
                //<![CDATA[
                var MEGAMENU_EFFECT = 0;
                //]]>
               </script>
              </div>
              <div class="relatedslider">
               <div class="bx-title related-title">
                <h2 class="title">Related Products</h2></div>
               <div class="bx-wrapper" style="max-width: 270px; margin: 0px auto;">
                <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 404px;">
                 <ul class="products-grid" id="block-related" style="width: 515%; position: relative; -webkit-transition-duration: 0s; transition-duration: 0s; -webkit-transform: translate3d(-810.000061035156px, 0px, 0px);">
                  <li class="item last odd bx-clone" style="float: left; list-style: none; position: relative; width: 270px;">
                   <div class="related-subtitle">
                    Check items to add to the cart or <a href="#" onclick="selectAllRelated(this);
                      return false;">select all</a>
                   </div>
                   <div class="item-inner">
                    <a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html" title="Dummy Product #01" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/thumbnail/300x300/9df78eab33525d08d6e5fb8d27136e95/1/_/1.jpg" alt="Dummy Product #01"></a>
                    <div class="product-details">
                     <p class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html">Dummy Product #01</a></p>
                     <div class="ratings">
                      <div class="rating-box">
                       <div class="rating" style="width:75%"></div>
                      </div>
                      <p class="rating-links">
                       <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/">(2 Reviews)</a>
                       <span class="separator">|</span>
                       <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/#review-form">Add Your Review</a>
                      </p>
                     </div>
                     <div class="price-box">
                      <p class="old-price">
                       <span class="price-label">Regular Price:</span>
                       <span class="price" id="old-price-1-related">
                        $170.00                </span>
                      </p>
                      <p class="special-price">
                       <span class="price-label">Special Price</span>
                       <span class="price" id="product-price-1-related">
                        $150.00                </span>
                      </p>
                     </div>
                    </div>
                   </div>
                  </li>
                  <li class="item odd" style="float: left; list-style: none; position: relative; width: 270px;">
                   <div class="related-subtitle">
                    Check items to add to the cart
                    <input type="checkbox" class="checkbox related-checkbox" id="related-checkbox3" name="related_products[]" value="3"> or <a href="#" onclick="selectAllRelated(this);
                      return false;">select all</a>
                   </div>
                   <div class="item-inner">
                    <a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html" title="Dummy Product #03" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/thumbnail/300x300/9df78eab33525d08d6e5fb8d27136e95/3/_/3_2.jpg" alt="Dummy Product #03"></a>
                    <div class="product-details">
                     <p class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html">Dummy Product #03</a></p>
                     <div class="ratings">
                      <div class="rating-box">
                       <div class="rating" style="width:100%"></div>
                      </div>
                      <p class="rating-links">
                       <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/">(1 Reviews)</a>
                       <span class="separator">|</span>
                       <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/#review-form">Add Your Review</a>
                      </p>
                     </div>
                     <div class="price-box">
                      <span class="regular-price" id="product-price-3-related">
                       <span class="price">$999.00</span> </span>
                     </div>
                    </div>
                   </div>
                  </li>
                  <li class="item even" style="float: left; list-style: none; position: relative; width: 270px;">
                   <div class="related-subtitle">
                    Check items to add to the cart
                    <input type="checkbox" class="checkbox related-checkbox" id="related-checkbox4" name="related_products[]" value="4"> or <a href="#" onclick="selectAllRelated(this);
                      return false;">select all</a>
                   </div>
                   <div class="item-inner">
                    <a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html" title="Dummy Product #04" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/thumbnail/300x300/9df78eab33525d08d6e5fb8d27136e95/4/_/4_3.jpg" alt="Dummy Product #04"></a>
                    <div class="product-details">
                     <p class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html">Dummy Product #04</a></p>
                     <div class="ratings">
                      <div class="rating-box">
                       <div class="rating" style="width:90%"></div>
                      </div>
                      <p class="rating-links">
                       <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/4/">(1 Reviews)</a>
                       <span class="separator">|</span>
                       <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/4/#review-form">Add Your Review</a>
                      </p>
                     </div>
                     <div class="price-box">
                      <p class="old-price">
                       <span class="price-label">Regular Price:</span>
                       <span class="price" id="old-price-4-related">
                        $123.00                </span>
                      </p>
                      <p class="special-price">
                       <span class="price-label">Special Price</span>
                       <span class="price" id="product-price-4-related">
                        $110.00                </span>
                      </p>
                     </div>
                    </div>
                   </div>
                  </li>
                  <li class="item last odd" style="float: left; list-style: none; position: relative; width: 270px;">
                   <div class="related-subtitle">
                    Check items to add to the cart or <a href="#" onclick="selectAllRelated(this);
                      return false;">select all</a>
                   </div>
                   <div class="item-inner">
                    <a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html" title="Dummy Product #01" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/thumbnail/300x300/9df78eab33525d08d6e5fb8d27136e95/1/_/1.jpg" alt="Dummy Product #01"></a>
                    <div class="product-details">
                     <p class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html">Dummy Product #01</a></p>
                     <div class="ratings">
                      <div class="rating-box">
                       <div class="rating" style="width:75%"></div>
                      </div>
                      <p class="rating-links">
                       <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/">(2 Reviews)</a>
                       <span class="separator">|</span>
                       <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/#review-form">Add Your Review</a>
                      </p>
                     </div>
                     <div class="price-box">
                      <p class="old-price">
                       <span class="price-label">Regular Price:</span>
                       <span class="price" id="old-price-1-related">
                        $170.00                </span>
                      </p>
                      <p class="special-price">
                       <span class="price-label">Special Price</span>
                       <span class="price" id="product-price-1-related">
                        $150.00                </span>
                      </p>
                     </div>
                    </div>
                   </div>
                  </li>
                  <li class="item odd bx-clone" style="float: left; list-style: none; position: relative; width: 270px;">
                   <div class="related-subtitle">
                    Check items to add to the cart
                    <input type="checkbox" class="checkbox related-checkbox" id="related-checkbox3" name="related_products[]" value="3"> or <a href="#" onclick="selectAllRelated(this);
                      return false;">select all</a>
                   </div>
                   <div class="item-inner">
                    <a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html" title="Dummy Product #03" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/thumbnail/300x300/9df78eab33525d08d6e5fb8d27136e95/3/_/3_2.jpg" alt="Dummy Product #03"></a>
                    <div class="product-details">
                     <p class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html">Dummy Product #03</a></p>
                     <div class="ratings">
                      <div class="rating-box">
                       <div class="rating" style="width:100%"></div>
                      </div>
                      <p class="rating-links">
                       <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/">(1 Reviews)</a>
                       <span class="separator">|</span>
                       <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/#review-form">Add Your Review</a>
                      </p>
                     </div>
                     <div class="price-box">
                      <span class="regular-price" id="product-price-3-related">
                       <span class="price">$999.00</span> </span>
                     </div>
                    </div>
                   </div>
                  </li>
                 </ul>
                </div>
                <div class="bx-controls bx-has-controls-direction">
                 <div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div>
                </div>
               </div>
              </div>
              <script type="text/javascript">
               decorateList('block-related', 'none-recursive')
              </script>
              <script type="text/javascript">
               //<![CDATA[
               $$('.related-checkbox').each(function (elem) {
                Event.observe(elem, 'click', addRelatedToProduct)
               });
               var relatedProductsCheckFlag = false;

               function selectAllRelated(txt) {
                if (relatedProductsCheckFlag == false) {
                 $$('.related-checkbox').each(function (elem) {
                  elem.checked = true;
                 });
                 relatedProductsCheckFlag = true;
                 txt.innerHTML = "unselect all";
                } else {
                 $$('.related-checkbox').each(function (elem) {
                  elem.checked = false;
                 });
                 relatedProductsCheckFlag = false;
                 txt.innerHTML = "select all";
                }
                addRelatedToProduct();
               }

               function addRelatedToProduct() {
                var checkboxes = $$('.related-checkbox');
                var values = [];
                for (var i = 0; i < checkboxes.length; i++) {
                 if (checkboxes[i].checked)
                  values.push(checkboxes[i].value);
                }
                if ($('related-products-field')) {
                 $('related-products-field').value = values.join(',');
                }
               }
               jQuery(document).ready(function ($) {
                (function (selector) {
                 var $content = $(selector);
                 var $slider = $('.products-grid', $content);
                 var slider = $slider.bxSlider({
                  auto: 0,
                  speed: 600,
                  controls: 1,
                  pager: 0,
                  maxSlides: 1,
                  slideWidth: 270, //infiniteLoop: false,
                  moveSlides: 1,
                  slideMargin: 0,
                  autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
                 })
                })(".relatedslider");
               });
               //]]>
              </script>
              <div class="block block-list block-compare">
               <div class="block-title">
                <strong><span>Compare Products                    </span></strong>
               </div>
               <div class="block-content">
                <p class="empty">You have no items to compare.</p>
               </div>
              </div>
              <div class="banner-left"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/banner-left.jpg" alt=""></div>
             </div>
            </div>
            <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
             <div class="col-main">
              <div class="breadcrumbs">
               <ul>
                <li class="home">
                 <a href="http://themevast.com/demo/tv_bigboom/index.php/" title="Go to Home Page">Home</a>
                 <span>/ </span>
                </li>
                <li class="product">
                 <strong>Dummy Product #02</strong>
                </li>
               </ul>
              </div>
              <script type="text/javascript">
               jQuery(document).ready(function ($) {
                $('.control').click(function () {
                 if ($(this).hasClass('inactive')) {
                  $(this).removeClass('inactive');
                  $(this).addClass('active');
                  $('.themes-demo-wrap').animate({
                   left: '0'
                  }, 500);
                 } else {
                  $(this).addClass('inactive');
                  $('.themes-demo-wrap').animate({
                   left: '-260px'
                  }, 500);
                 }
                });
               });
              </script>
              <script type="text/javascript">
               var optionsPrice = new Product.OptionsPrice([]);
              </script>
              <div id="messages_product_view"></div>
              <div class="product-view">
               <div class="product-essential">
                <form action="http://themevast.com/demo/tv_bigboom/index.php/checkout/cart/add/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC9xdWlzcXVlLWluLWFyY3UuaHRtbA,,/product/2/form_key/Ebl9dwDkzQf9wold/" method="post" id="product_addtocart_form">
                 <div class="row">
                  <div class="product-img-box col-sm-12 col-md-5 col-sms-6 col-smb-12">
                   <div id="wrap" style="top:0px;z-index:9;position:relative;">
                    <a href="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/image/600x600/9df78eab33525d08d6e5fb8d27136e95/2/_/2_1.jpg" class="cloud-zoom" id="cloudzoom" style="position: relative; display: block;" rel="adjustX:10, adjustY:-2, zoomWidth:400, zoomHeight:400">
                     <img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/image/600x600/9df78eab33525d08d6e5fb8d27136e95/2/_/2_1.jpg" alt="Dummy Product #02" title="Dummy Product #02" style="display: block;"> </a>
                    <div class="mousetrap" style="width: 323px; height: 323px; top: 0px; left: 0px; position: absolute; z-index: 9999; cursor: move; background-image: url(http://themevast.com/demo/tv_bigboom/js/themevast/plugin/blank.png);"></div>
                   </div>
                   <div class="more-views thumbnail-container horizontal">
                    <ul class="bxslider">
                     <li>
                      <a href="xxx" class="cloud-zoom-gallery" title="" name="xxx" rel="useZoom: 'cloudzoom', smallImage: ''">
                       <img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/thumbnail/78x78/9df78eab33525d08d6e5fb8d27136e95/2/_/2_1.jpg" alt=""></a>
                     </li>
                    </ul>
                   </div>
                   <script type="text/javascript">
                    //<![CDATA[
                    jQuery(document).ready(function ($) {
                     $('.thumbnail-container .bxslider').bxSlider({
                      slideWidth: 78,
                      slideMargin: 10,
                      mode: 'horizontal',
                      minSlides: 1,
                      maxSlides: 4,
                      pager: false,
                      speed: 500,
                      pause: 3000,
                      moveSlides: 1,
                     });
                    });
                    //]]>
                   </script>
                  </div>
                  <div class="product-shop col-sm-12 col-md-7 col-sms-6 col-smb-12">
                   <div class="product-name">
                    <h1>Dummy Product #02</h1>
                   </div>
                   <div class="ratings">
                    <div class="rating-box">
                     <div class="rating" style="width:80%"></div>
                    </div>
                    <p class="rating-links">
                     <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/2/">(1 Reviews)</a>
                     <span class="separator">|</span>
                     <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/2/#review-form">Add Your Review</a>
                    </p>
                   </div>
                   <p class="availability in-stock">Availability: <span>In stock</span></p>
                   <div class="price-box">
                    <p class="old-price">
                     <span class="price-label">Regular Price:</span>
                     <span class="price" id="old-price-2">
                      $800.00                </span>
                    </p>
                    <p class="special-price">
                     <span class="price-label">Special Price</span>
                     <span class="price" id="product-price-2">
                      $699.00                </span>
                    </p>
                   </div>
                   <div class="short-description">
                    <!--<h2>Quick Overview</h2>-->
                    <div class="std">Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis. </div>
                   </div>
                   <div class="add-to-box">
                    <ul class="add-to-links">
                     <li><a href="http://themevast.com/demo/tv_bigboom/index.php/wishlist/index/add/product/2/form_key/Ebl9dwDkzQf9wold/" onclick="productAddToCartForm.submitLight(this, this.href);
                       return false;" class="link-wishlist" data-original-title="Add to Wishlist" rel="tooltip"><i class="fa fa-heart"></i></a></li>
                     <li> <a href="http://themevast.com/demo/tv_bigboom/index.php/catalog/product_compare/add/product/2/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC9xdWlzcXVlLWluLWFyY3UuaHRtbA,,/form_key/Ebl9dwDkzQf9wold/" class="link-compare" data-original-title="Add to Compare" rel="tooltip"><i class="fa fa-exchange"></i></a></li>
                    </ul>
                    <p class="email-friend"><a class="email-friend-a" href="http://themevast.com/demo/tv_bigboom/index.php/sendfriend/product/send/id/2/" data-original-title="Email to a Friend" rel="tooltip"><i class="fa fa-envelope"></i></a></p>
                   </div>
                   <div class="addthis_native_toolbox" data-url="http://themevast.com/demo/tv_bigboom/index.php/quisque-in-arcu.html" data-title="Dummy Product #02">
                    <div id="atstbx" class="at-share-tbx-element addthis_default_style addthis_20x20_style addthis-smartlayers addthis-animated at4-show">
                     <a class="addthis_button_facebook_like at300b" fb:like:layout="button_count">
                      <div class="fb-like fb_iframe_widget" data-ref=".VVr67_0HU04.like" data-layout="button_count" data-show_faces="false" data-share="false" data-action="like" data-width="90" data-font="arial" data-href="http://themevast.com/demo/tv_bigboom/index.php/quisque-in-arcu.html" data-send="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=172525162793917&amp;container_width=0&amp;font=arial&amp;href=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html&amp;layout=button_count&amp;locale=vi_VN&amp;ref=.VVr67_0HU04.like&amp;sdk=joey&amp;send=false&amp;share=false&amp;show_faces=false&amp;width=90"><span style="vertical-align: bottom; width: 86px; height: 20px;"><iframe name="f16ff3f9f8" width="90px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:like Facebook Social Plugin" src="http://www.facebook.com/v2.0/plugins/like.php?action=like&amp;app_id=172525162793917&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2FNM7BtzAR8RM.js%3Fversion%3D41%23cb%3Df5602a1e8%26domain%3Dthemevast.com%26origin%3Dhttp%253A%252F%252Fthemevast.com%252Ffb7a9f994%26relation%3Dparent.parent&amp;container_width=0&amp;font=arial&amp;href=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html&amp;layout=button_count&amp;locale=vi_VN&amp;ref=.VVr67_0HU04.like&amp;sdk=joey&amp;send=false&amp;share=false&amp;show_faces=false&amp;width=90" style="border: none; visibility: visible; width: 86px; height: 20px;" class=""></iframe></span></div>
                     </a>
                     <a class="addthis_button_tweet at300b">
                      <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.b169aa788731255dd55f1bb243b660e1.en.html#_=1432025839982&amp;count=horizontal&amp;counturl=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html&amp;dnt=false&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html&amp;size=m&amp;text=Dummy%20Product%20%2302%3A&amp;url=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html%23.VVr679zuMI0.twitter" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="position: static; visibility: visible; width: 79px; height: 20px;"></iframe>
                     </a><a class="addthis_button_pinterest_pinit at300b" pi:pinit:layout="horizontal"><span class="at_PinItButton"></span></a>
                     <a class="addthis_button_google_plusone at300b" g:plusone:size="medium">
                      <div id="___plusone_0" style="text-indent: 0px; margin: 0px; padding: 0px; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 90px; height: 20px; background: transparent;">
                       <iframe frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 90px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1432025840006" name="I0_1432025840006" src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;hl=en-US&amp;origin=http%3A%2F%2Fthemevast.com&amp;url=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en_GB.iysfLONW-ZI.O%2Fm%3D__features__%2Fam%3DEQ%2Frt%3Dj%2Fd%3D1%2Ft%3Dzcms%2Frs%3DAGLTcCP1uegVzJJ9U8XSjPr4yWtuFbnHNQ#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1432025840006&amp;parent=http%3A%2F%2Fthemevast.com&amp;pfname=&amp;rpctoken=35525799" data-gapiattached="true" title="+1"></iframe>
                      </div>
                     </a>
                     <a class="atc_s addthis_button_compact"><span></span></a>
                     <div class="atclear"></div>
                    </div>
                   </div>
                   <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-549fdf445bd3a1b9" async="async"></script>
                   <div class="add-to-box-cart">
                    <div class="add-to-cart">
                     <div class="input-content">
                      <label for="qty">Quantity</label>
                      <div class="box-qty">
                       <input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qty" class="input-text qty">
                       <div class="qty-arrows">
                        <input type="button" onclick="var qty_el = document.getElementById('qty');
                       var qty = qty_el.value;
                       if (!isNaN(qty))
                        qty_el.value++;
                       return false;" class="qty-increase">
                        <input type="button" onclick="var qty_el = document.getElementById('qty');
                          var qty = qty_el.value;
                          if (!isNaN(qty) & qty > 1)
                           qty_el.value--;
                          return false;" class="qty-decrease">
                       </div>
                      </div>
                     </div>
                     <button type="button" class="button btn-cart" onclick="productAddToCartForm.submit(this)" data-original-title="Add to Cart" rel="tooltip"><span>Add to Cart</span></button>
                    </div>
                   </div>
                  </div>
                 </div>
                 <div class="clearer"></div>
                 <div class="no-display">
                  <input type="hidden" name="product" value="2">
                  <input type="hidden" name="related_product" id="related-products-field" value="">
                 </div>
                </form>
                <script type="text/javascript">
                 //<![CDATA[
                 var productAddToCartForm = new VarienForm('product_addtocart_form');
                 productAddToCartForm.submit = function (button, url) {
                  if (this.validator.validate()) {
                   var form = this.form;
                   var oldUrl = form.action;
                   if (url) {
                    form.action = url;
                   }
                   var e = null;
                   try {
                    this.form.submit();
                   } catch (e) {
                   }
                   this.form.action = oldUrl;
                   if (e) {
                    throw e;
                   }
                   if (button && button != 'undefined') {
                    button.disabled = true;
                   }
                  }
                 }.bind(productAddToCartForm);
                 productAddToCartForm.submitLight = function (button, url) {
                  if (this.validator) {
                   var nv = Validation.methods;
                   delete Validation.methods['required-entry'];
                   delete Validation.methods['validate-one-required'];
                   delete Validation.methods['validate-one-required-by-name'];
                   // Remove custom datetime validators
                   for (var methodName in Validation.methods) {
                    if (methodName.match(/^validate-datetime-.*/i)) {
                     delete Validation.methods[methodName];
                    }
                   }
                   if (this.validator.validate()) {
                    if (url) {
                     this.form.action = url;
                    }
                    this.form.submit();
                   }
                   Object.extend(Validation.methods, nv);
                  }
                 }.bind(productAddToCartForm);
                 //]]>
                </script>
               </div>
               <div class="product-collateral row-fluid">
                <ul class="product-tabs">
                 <li id="product_tabs_description" class=" active first"><a href="javascript:void(0)">Product Description</a></li>
                 <li id="product_tabs_product_additional_data" class=""><a href="javascript:void(0)">Reviews</a></li>
                 <li id="product_tabs_product.tags" class="last"><a href="javascript:void(0)">Product Tags</a></li>
                </ul>
                <div class="product-tabs-content" id="product_tabs_description_contents">
                 <h2>Details</h2>
                 <div class="std">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue. Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis. </div>
                </div>
                <div class="product-tabs-content" id="product_tabs_product_additional_data_contents" style="display: none;">
                 <div class="box-collateral box-reviews row" id="customer-reviews">
                  <div class="col-xs-12 col-sm-5">
                   <div class="review-col1">
                    <h2>Customer Reviews</h2>
                    <dl>
                     <dt>
                     <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/view/id/8/">Beautiful Handmade Gift</a> Review by <span>ThemesVast</span>		    </dt>
                     <dd>
                      <table class="ratings-table">
                       <colgroup>
                        <col width="1">
                        <col>
                       </colgroup>
                       <tbody>
                        <tr>
                         <th>Price</th>
                         <td>
                          <div class="rating-box">
                           <div class="rating" style="width:80%;"></div>
                          </div>
                         </td>
                        </tr>
                        <tr>
                         <th>Quality</th>
                         <td>
                          <div class="rating-box">
                           <div class="rating" style="width:80%;"></div>
                          </div>
                         </td>
                        </tr>
                       </tbody>
                      </table>
                      Beautiful Handmade Gift <small class="date">(Posted on 10/1/2014)</small>
                     </dd>
                    </dl>
                   </div>
                  </div>
                  <div class="col-xs-12 col-sm-7">
                   <div class="review-col2">
                    <div class="form-add">
                     <h2>Write Your Own Review</h2>
                     <form action="http://themevast.com/demo/tv_bigboom/index.php/review/product/post/id/2/" method="post" id="review-form">
                      <input name="form_key" type="hidden" value="Ebl9dwDkzQf9wold">
                      <fieldset>
                       <h3>You're reviewing: <span>Dummy Product #02</span></h3>
                       <h4>How do you rate this product? <em class="required">*</em></h4>
                       <span id="input-message-box"></span>
                       <table class="data-table" id="product-review-table">
                        <colgroup>
                         <col>
                         <col width="1">
                         <col width="1">
                         <col width="1">
                         <col width="1">
                         <col width="1">
                        </colgroup>
                        <thead>
                         <tr class="first last">
                          <th>&nbsp;</th>
                          <th><span class="nobr">1 star</span></th>
                          <th><span class="nobr">2 stars</span></th>
                          <th><span class="nobr">3 stars</span></th>
                          <th><span class="nobr">4 stars</span></th>
                          <th><span class="nobr">5 stars</span></th>
                         </tr>
                        </thead>
                        <tbody>
                         <tr class="first odd">
                          <th>Price</th>
                          <td class="value">
                           <input type="radio" name="ratings[3]" id="Price_1" value="11" class="radio">
                          </td>
                          <td class="value">
                           <input type="radio" name="ratings[3]" id="Price_2" value="12" class="radio">
                          </td>
                          <td class="value">
                           <input type="radio" name="ratings[3]" id="Price_3" value="13" class="radio">
                          </td>
                          <td class="value">
                           <input type="radio" name="ratings[3]" id="Price_4" value="14" class="radio">
                          </td>
                          <td class="value last">
                           <input type="radio" name="ratings[3]" id="Price_5" value="15" class="radio">
                          </td>
                         </tr>
                         <tr class="last even">
                          <th>Quality</th>
                          <td class="value">
                           <input type="radio" name="ratings[1]" id="Quality_1" value="1" class="radio">
                          </td>
                          <td class="value">
                           <input type="radio" name="ratings[1]" id="Quality_2" value="2" class="radio">
                          </td>
                          <td class="value">
                           <input type="radio" name="ratings[1]" id="Quality_3" value="3" class="radio">
                          </td>
                          <td class="value">
                           <input type="radio" name="ratings[1]" id="Quality_4" value="4" class="radio">
                          </td>
                          <td class="value last">
                           <input type="radio" name="ratings[1]" id="Quality_5" value="5" class="radio">
                          </td>
                         </tr>
                        </tbody>
                       </table>
                       <input type="hidden" name="validate_rating" class="validate-rating" value="">
                       <script type="text/javascript">
                        decorateTable('product-review-table')
                       </script>
                       <ul class="form-list">
                        <li>
                         <label for="nickname_field" class="required"><em>*</em>Nickname</label>
                         <div class="input-box">
                          <input type="text" name="nickname" id="nickname_field" class="input-text required-entry" value="">
                         </div>
                        </li>
                        <li>
                         <label for="summary_field" class="required"><em>*</em>Summary of Your Review</label>
                         <div class="input-box">
                          <input type="text" name="title" id="summary_field" class="input-text required-entry" value="">
                         </div>
                        </li>
                        <li>
                         <label for="review_field" class="required"><em>*</em>Review</label>
                         <div class="input-box">
                          <textarea name="detail" id="review_field" cols="5" rows="3" class="required-entry"></textarea>
                         </div>
                        </li>
                       </ul>
                      </fieldset>
                      <div class="buttons-set">
                       <button type="submit" title="Submit Review" class="button"><span><span>Submit Review</span></span>
                       </button>
                      </div>
                     </form>
                     <script type="text/javascript">
                      //<![CDATA[
                      var dataForm = new VarienForm('review-form');
                      Validation.addAllThese(
                              [
                               ['validate-rating', 'Please select one of each of the ratings above', function (v) {
                                 var trs = $('product-review-table').select('tr');
                                 var inputs;
                                 var error = 1;
                                 for (var j = 0; j < trs.length; j++) {
                                  var tr = trs[j];
                                  if (j > 0) {
                                   inputs = tr.select('input');
                                   for (i in inputs) {
                                    if (inputs[i].checked == true) {
                                     error = 0;
                                    }
                                   }
                                   if (error == 1) {
                                    return false;
                                   } else {
                                    error = 1;
                                   }
                                  }
                                 }
                                 return true;
                                }]
                              ]
                              );
                      //]]>
                     </script>
                    </div>
                   </div>
                  </div>
                 </div>
                </div>
                <div class="product-tabs-content" id="product_tabs_product.tags_contents" style="display: none;">
                 <div class="box-collateral box-tags">
                  <h2>Product Tags</h2>
                  <form id="addTagForm" action="http://themevast.com/demo/tv_bigboom/index.php/tag/index/save/product/2/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC9xdWlzcXVlLWluLWFyY3UuaHRtbA,,/" method="get">
                   <div class="form-add">
                    <label for="productTagName">Add Your Tags:</label>
                    <div class="input-box">
                     <input type="text" class="input-text required-entry" name="productTagName" id="productTagName">
                    </div>
                    <button type="button" title="Add Tags" class="button" onclick="submitTagForm()">
                     <span>
                      <span>Add Tags</span>
                     </span>
                    </button>
                   </div>
                  </form>
                  <p class="note">Use spaces to separate tags. Use single quotes (') for phrases.</p>
                  <script type="text/javascript">
                   //<![CDATA[
                   var addTagFormJs = new VarienForm('addTagForm');

                   function submitTagForm() {
                    if (addTagFormJs.validator.validate()) {
                     addTagFormJs.form.submit();
                    }
                   }
                   //]]>
                  </script>
                 </div>
                </div>
                <script type="text/javascript">
                 //<![CDATA[
                 Varien.Tabs = Class.create();
                 Varien.Tabs.prototype = {
                  initialize: function (selector) {
                   var self = this;
                   $$(selector + ' a').each(this.initTab.bind(this));
                  },
                  initTab: function (el) {
                   el.href = 'javascript:void(0)';
                   if ($(el.parentNode).hasClassName('active')) {
                    this.showContent(el);
                   }
                   el.observe('click', this.showContent.bind(this, el));
                  },
                  showContent: function (a) {
                   var li = $(a.parentNode),
                           ul = $(li.parentNode);
                   ul.select('li').each(function (el) {
                    var contents = $(el.id + '_contents');
                    if (el == li) {
                     el.addClassName('active');
                     contents.show();
                    } else {
                     el.removeClassName('active');
                     contents.hide();
                    }
                   });
                  }
                 }
                 new Varien.Tabs('.product-tabs');
                 //]]>
                </script>
                <div class="upsellslider">
                 <div class="upsell-title bx-title">
                  <h2 class="title">Upsell Products</h2></div>
                 <div class="bx-wrapper" style="max-width: 860px; margin: 0px auto;">
                  <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 279px;">
                   <ul class="products-grid" style="width: 1015%; position: relative; -webkit-transition-duration: 0s; transition-duration: 0s; -webkit-transform: translate3d(-880.000061988831px, 0px, 0px);">
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html" title="Dummy Product #01" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/_/1.jpg" alt="Dummy Product #01"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html" title="Dummy Product #01">Dummy Product #01</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:75%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/">(2 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-1-upsell">
                         $170.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-1-upsell">
                         $150.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/pleasure-rationally.html" title="Dummy Product #15" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/_/1_1.jpg" alt="Dummy Product #15"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/pleasure-rationally.html" title="Dummy Product #15">Dummy Product #15</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:80%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/15/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/15/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-15-upsell">
                         $333.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-15-upsell">
                         $222.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/nunc-facilisis.html" title="Dummy Product #10" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/0/10_2.jpg" alt="Dummy Product #10"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/nunc-facilisis.html" title="Dummy Product #10">Dummy Product #10</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:90%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/10/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/10/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-10-upsell">
                        <span class="price">$222.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/donec-non-est.html" title="Dummy Product #05" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/5/_/5_4.jpg" alt="Dummy Product #05"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/donec-non-est.html" title="Dummy Product #05">Dummy Product #05</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:70%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/5/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/5/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-5-upsell">
                        <span class="price">$721.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html" title="Dummy Product #03" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/3/_/3_2.jpg" alt="Dummy Product #03"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html" title="Dummy Product #03">Dummy Product #03</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:100%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-3-upsell">
                        <span class="price">$999.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/occaecati-cupiditate.html" title="Dummy Product #13" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/1/11-1_1.jpg" alt="Dummy Product #13"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/occaecati-cupiditate.html" title="Dummy Product #13">Dummy Product #13</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:60%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/13/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/13/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-13-upsell">
                        <span class="price">$345.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/donec-ac-tempus.html" title="Dummy Product #06" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/6/_/6_4.jpg" alt="Dummy Product #06"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/donec-ac-tempus.html" title="Dummy Product #06">Dummy Product #06</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:80%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/6/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/6/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-6-upsell">
                         $222.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-6-upsell">
                         $100.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html" title="Dummy Product #04" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/4/_/4_3.jpg" alt="Dummy Product #04"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html" title="Dummy Product #04">Dummy Product #04</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:90%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/4/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/4/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-4-upsell">
                         $123.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-4-upsell">
                         $110.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html" title="Dummy Product #01" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/_/1.jpg" alt="Dummy Product #01"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/dummy-product-01.html" title="Dummy Product #01">Dummy Product #01</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:75%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/">(2 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/1/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-1-upsell">
                         $170.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-1-upsell">
                         $150.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/pleasure-rationally.html" title="Dummy Product #15" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/_/1_1.jpg" alt="Dummy Product #15"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/pleasure-rationally.html" title="Dummy Product #15">Dummy Product #15</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:80%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/15/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/15/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-15-upsell">
                         $333.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-15-upsell">
                         $222.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/nunc-facilisis.html" title="Dummy Product #10" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/0/10_2.jpg" alt="Dummy Product #10"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/nunc-facilisis.html" title="Dummy Product #10">Dummy Product #10</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:90%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/10/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/10/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-10-upsell">
                        <span class="price">$222.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/donec-non-est.html" title="Dummy Product #05" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/5/_/5_4.jpg" alt="Dummy Product #05"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/donec-non-est.html" title="Dummy Product #05">Dummy Product #05</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:70%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/5/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/5/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-5-upsell">
                        <span class="price">$721.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html" title="Dummy Product #03" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/3/_/3_2.jpg" alt="Dummy Product #03"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/proin-lectus-ipsum.html" title="Dummy Product #03">Dummy Product #03</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:100%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-3-upsell">
                        <span class="price">$999.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/occaecati-cupiditate.html" title="Dummy Product #13" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/1/1/11-1_1.jpg" alt="Dummy Product #13"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/occaecati-cupiditate.html" title="Dummy Product #13">Dummy Product #13</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:60%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/13/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/13/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <span class="regular-price" id="product-price-13-upsell">
                        <span class="price">$345.00</span> </span>
                      </div>
                     </div>
                    </li>
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/donec-ac-tempus.html" title="Dummy Product #06" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/6/_/6_4.jpg" alt="Dummy Product #06"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/donec-ac-tempus.html" title="Dummy Product #06">Dummy Product #06</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:80%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/6/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/6/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-6-upsell">
                         $222.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-6-upsell">
                         $100.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                    <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 200px; margin-right: 20px;">
                     <div class="item-inner">
                      <a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html" title="Dummy Product #04" class="product-image"><img src="http://themevast.com/demo/tv_bigboom/media/catalog/product/cache/1/small_image/300x300/9df78eab33525d08d6e5fb8d27136e95/4/_/4_3.jpg" alt="Dummy Product #04"></a>
                      <h3 class="product-name"><a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html" title="Dummy Product #04">Dummy Product #04</a></h3>
                      <div class="ratings">
                       <div class="rating-box">
                        <div class="rating" style="width:90%"></div>
                       </div>
                       <p class="rating-links">
                        <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/4/">(1 Reviews)</a>
                        <span class="separator">|</span>
                        <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/4/#review-form">Add Your Review</a>
                       </p>
                      </div>
                      <div class="price-box">
                       <p class="old-price">
                        <span class="price-label">Regular Price:</span>
                        <span class="price" id="old-price-4-upsell">
                         $123.00                </span>
                       </p>
                       <p class="special-price">
                        <span class="price-label">Special Price</span>
                        <span class="price" id="product-price-4-upsell">
                         $110.00                </span>
                       </p>
                      </div>
                     </div>
                    </li>
                   </ul>
                  </div>
                  <div class="bx-controls bx-has-controls-direction">
                   <div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div>
                  </div>
                 </div>
                </div>
                <script type="text/javascript">
                 jQuery(document).ready(function ($) {
                  (function (selector) {
                   var $content = $(selector);
                   var $slider = $('.products-grid', $content);
                   var slider = $slider.bxSlider({
                    auto: 0,
                    speed: 600,
                    controls: 1,
                    pager: 0,
                    maxSlides: 4,
                    slideWidth: 200, //infiniteLoop: false,
                    moveSlides: 1,
                    slideMargin: 20,
                    autoHover: true, // stop while hover <=> slider.stopAuto(); + slider.startAuto();
                   })
                  })(".upsellslider");
                 });
                </script>
               </div>
              </div>
              <script type="text/javascript">
               var lifetime = 3600;
               var expireAt = Mage.Cookies.expires;
               if (lifetime > 0) {
                expireAt = new Date();
                expireAt.setTime(expireAt.getTime() + lifetime * 1000);
               }
               Mage.Cookies.set('external_no_cache', 1, expireAt);
              </script>
             </div>
            </div>
           </div>
          </div>
         </div>
        </section>
        <section class="brandlogo-wrapper">
         <div class="brandlogo-contain">
          <div class="bx-title brand-title">
           <h2>Brand &amp; Cliens</h2></div>
          <div class="bx-wrapper" style="max-width: 1171px; margin: 0px auto;">
           <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 117px;">
            <ul class="bxslider" style="width: 915%; position: relative; -webkit-transition-duration: 0s; transition-duration: 0s; -webkit-transform: translate3d(-1175.93750095367px, 0px, 0px);">
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-2.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-3.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-4.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-5.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-6.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-7.png" alt="brand"></a>
             </li>
             <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-1.png" alt="brand"></a>
             </li>
             <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-2.png" alt="brand"></a>
             </li>
             <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-3.png" alt="brand"></a>
             </li>
             <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-4.png" alt="brand"></a>
             </li>
             <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-5.png" alt="brand"></a>
             </li>
             <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-6.png" alt="brand"></a>
             </li>
             <li class="item" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-7.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-1.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-2.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-3.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-4.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-5.png" alt="brand"></a>
             </li>
             <li class="item bx-clone" style="float: left; list-style: none; position: relative; width: 191px; margin-right: 5px;">
              <a href="#" title=""><img src="http://themevast.com/demo/tv_bigboom/media/themevast/brandlogo/logo-6.png" alt="brand"></a>
             </li>
            </ul>
           </div>
           <div class="bx-controls bx-has-controls-direction">
            <div class="bx-controls-direction"><a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a></div>
           </div>
          </div>
          <script type="text/javascript">
           //<![CDATA[
           jQuery(document).ready(function ($) {
            $('.brandlogo-contain .bxslider').bxSlider({
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
            });
           });
           //]]>
          </script>
         </div>
        </section>
       </div>
      </div>
     </main>
     <div class="block-static-information">
      <div class="container">
       <div class="static-info">
        <div class="row">
         <div class="col-md-3 col-sm-6 col-sms-6 col-smb-12">
          <div class="banner-col banner-col1">
           <h3 class="title"><em class="fa fa-truck"></em><span>Free Delivery</span><span class="text">On all order over $99</span></h3>
           <p class="des">Lorem ipsum dolor sit consectetur adipiscing elit, do et eiusmod tempor incididunt ut labore et.</p>
          </div>
         </div>
         <div class="col-md-3 col-sm-6 col-sms-6 col-smb-12">
          <div class="banner-col banner-col2">
           <h3 class="title"><em class="fa fa-recycle"></em><span>GUARANTEE</span><span class="text">30 Days money back !</span></h3>
           <p class="des">Lorem ipsum dolor sit consectetur adipiscing elit, do et eiusmod tempor incididunt ut labore et.</p>
          </div>
         </div>
         <div class="col-md-3 col-sm-6 col-sms-6 col-smb-12">
          <div class="banner-col banner-col3">
           <h3 class="title"><em class="fa fa-life-ring"></em><span>Payment Secured</span><span class="text">All payment be secured</span></h3>
           <p class="des">Lorem ipsum dolor sit consectetur adipiscing elit, do et eiusmod tempor incididunt ut labore et.</p>
          </div>
         </div>
         <div class="col-md-3 col-sm-6 col-sms-6 col-smb-12">
          <div class="banner-col banner-col4">
           <h3 class="title"><em class="fa fa-phone"></em><span>SUPPORT</span><span class="text">On all order over $99</span></h3>
           <p class="des">Lorem ipsum dolor sit consectetur adipiscing elit, do et eiusmod tempor incididunt ut labore et.</p>
          </div>
         </div>
        </div>
       </div>
      </div>
     </div>
     <footer class="footer-wrapper">
      <div class="container">
       <div class="footer-inner">
        <div class="footer-information">
         <div class="row">
          <div class="f-col f-col2 col-sm-6 col-md-3 col-sms-12 col-smb-12">
           <div class="footer-static-content">
            <div class="logo-footer"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/logo.png" alt=""></div>
            <div class="des">Qras at justto varius tempus nibh hen drerito gravida dui. Duis biquet lectus in quamizes accumsan, a suscipit sapien pretium pullami nevelit fringilla id risus vel.</div>
           </div>
          </div>
          <div class="f-col f-col3 col-sm-3 col-md-2 col-sms-6 col-smb-12">
           <div class="footer-static-title">
            <h3>Information</h3>
           </div>
           <div class="footer-static-content">
            <ul>
             <li class="first"><a href="http://themevast.com/demo/tv_bigboom/index.php/customer-service">Custom Service</a></li>
             <li><a href="#">F.A.Q.’s</a></li>
             <li><a href="#">Ordering Tracking</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/contacts">Contacts</a></li>
             <li><a href="#">Events</a></li>
             <li class="last"><a href="http://themevast.com/demo/tv_bigboom/index.php/catalogsearch/term/popular">Popular</a></li>
            </ul>
           </div>
          </div>
          <div class="f-col f-col4 col-sm-3 col-md-2 col-sms-6 col-smb-12">
           <div class="footer-static-title">
            <h3>OUR SERVICES</h3>
           </div>
           <div class="footer-static-content">
            <ul>
             <li class="first"><a href="http://themevast.com/demo/tv_bigboom/index.php/catalog/seo_sitemap/category">Sitemap</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/privacy-policy-cookie-restriction-mode">Privacy Policy</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/customer/account/index">Your Account</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/catalogsearch/advanced">Advanced Search</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/catalogsearch/term/popular">Terms &amp; Condition</a></li>
             <li class="last"><a href="http://themevast.com/demo/tv_bigboom/index.php/contacts">Contact Us</a></li>
            </ul>
           </div>
          </div>
          <div class="f-col f-col5 col-sm-4 col-md-2 col-sms-6 col-smb-12">
           <div class="footer-static-title">
            <h3>My Account</h3>
           </div>
           <div class="footer-static-content">
            <ul>
             <li class="first"><a href="http://themevast.com/demo/tv_bigboom/index.php/about-magento-demo-store">About us</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/contacts">Delivery Information</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/privacy-policy-cookie-restriction-mode">Privacy Policy</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/contacts">Discount</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/customer-service">Custom Service</a></li>
             <li class="last"><a href="http://themevast.com/demo/tv_bigboom/index.php/catalogsearch/term/popular">Terms &amp; Condition</a></li>
            </ul>
           </div>
          </div>
          <div class="f-col f-col1 col-sm-8 col-md-3 col-sms-6 col-smb-12">
           <div class="footer-static-title">
            <h3>Newsletter</h3>
           </div>
           <div class="footer-static-content">
            <div class="block-subscribe">
             <!--<div class="block-title">
<strong><span></span></strong>
</div>-->
             <form action="http://themevast.com/demo/tv_bigboom/index.php/newsletter/subscriber/new/" method="post" id="newsletter-validate-detail">
              <div class="subscribe-content">
               <div class="form-subscribe-header">
                <label for="newsletter">Sign Up for Our Newsletter</label>
               </div>
               <div class="input-box">
                <input type="text" name="email" id="newsletter" title="Sign up for our newsletter" class="input-text required-entry validate-email">
               </div>
               <div class="actions">
                <button type="submit" title="Subscribe" class="button"><span><span>Subscribe</span></span>
                </button>
               </div>
              </div>
             </form>
             <script type="text/javascript">
              //<![CDATA[
              var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
              //]]>
             </script>
            </div>
           </div>
          </div>
         </div>
        </div>
        <div class="footer-container">
         <div class="footer">
          <div class="row">
           <div class="col-xs-12 col-sm-6">
            <ul class="links">
             <li class="first"><a href="http://themevast.com/demo/tv_bigboom/index.php/catalog/seo_sitemap/category/" title="Site Map">Site Map</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/catalogsearch/term/popular/" title="Search Terms">Search Terms</a></li>
             <li><a href="http://themevast.com/demo/tv_bigboom/index.php/catalogsearch/advanced/" title="Advanced Search">Advanced Search</a></li>
             <li class=" last"><a href="http://themevast.com/demo/tv_bigboom/index.php/contacts/" title="Contact Us">Contact Us</a></li>
             <li class="login-register">
              <span>/</span><a href="http://themevast.com/demo/tv_bigboom/index.php/customer/account/create/" title="Customer Register">Register</a>
             </li>
            </ul>
            <address class="copyright">Copyright © 2015 by <a href="http://themevast.com/">Themevast</a>. All Rights Reserved.</address>
           </div>
           <div class="col-xs-12 col-sm-6">
            <ul class="social">
             <li class="first">
              <a class="social1" href="#"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/social1.png" alt=""></a>
             </li>
             <li>
              <a class="social2" href="#"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/social2.png" alt=""></a>
             </li>
             <li>
              <a class="social3" href="#"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/social3.png" alt=""></a>
             </li>
             <li>
              <a class="social4" href="#"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/social4.png" alt=""></a>
             </li>
             <li class="last">
              <a class="social5" href="#"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/social5.png" alt=""></a>
             </li>
            </ul>
           </div>
          </div>
         </div>
        </div>
       </div>
      </div>
      <div id="back-top" class="hidden-xs" style="display: block;"><i class="fa fa-angle-up"></i></div>
     </footer>
     <div class="block-social-right">
      <ul>
       <li>
        <a id="facebook-btn" class="socialitems" href="https://www.facebook.com/themevast" target="_blank"> <span class="social-icon" style="overflow: hidden; width: 43px;"> <span class="social-text">Follow via Facebook</span> </span>
        </a>
       </li>
       <li>
        <a id="twitter-btn" class="socialitems" href="https://twitter.com/themevast/" target="_blank"> <span class="social-icon" style="overflow: hidden; width: 43px;"> <span class="social-text">Follow via Twitter</span> </span>
        </a>
       </li>
       <li>
        <a id="googleplus-btn" class="socialitems" href="https://plus.google.com/118344202233498904921/posts" target="_blank"> <span class="social-icon" style="overflow: hidden; width: 43px;"> <span class="social-text">Follow via Google +</span> </span>
        </a>
       </li>
       <li>
        <a id="youtube-btn" class="socialitems" href="https://www.youtube.com/channel/UCUQOzUZakbmxwP8MvHE_KpQ" target="_blank"> <span class="social-icon" style="overflow: hidden; width: 43px;"> <span class="social-text">Follow via Youtube</span> </span>
        </a>
       </li>
       <li>
        <a id="pinterest-btn" class="socialitems" href="https://www.pinterest.com/" target="_blank"> <span class="social-icon"> <span class="social-text">Follow via Pinterest</span> </span>
        </a>
       </li>
       <li>
        <a id="mail-btn" class="socialitems" href="mailto:themevast@gmail.com" target="_blank"> <span class="social-icon" style="overflow: hidden; width: 43px;"> <span class="social-text">Mail To</span> </span>
        </a>
       </li>
      </ul>
     </div>
    </div>
   </div>
   <div id="_atssh" style="visibility: hidden; height: 1px; width: 1px; position: absolute; top: -9999px; z-index: 100000;">
    <iframe id="_atssh479" title="AddThis utility frame" src="http://s7.addthis.com/static/sh.0c665a7f.html#iit=1432025839505&amp;tmr=load%3D1432025839333%26core%3D1432025839377%26main%3D1432025839499%26ifr%3D1432025839511&amp;cb=0&amp;cdn=0&amp;kw=Magento%2CVarien%2CE-commerce&amp;ab=-&amp;dh=themevast.com&amp;dr=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2F&amp;du=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html&amp;href=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquisque-in-arcu.html&amp;dt=Dummy%20Product%20%2302&amp;dbg=0&amp;cap=tc%3D0%26ab%3D0&amp;inst=1&amp;jsl=3&amp;prod=true&amp;lng=vi&amp;ogt=&amp;pc=men&amp;pub=ra-549fdf445bd3a1b9&amp;ssl=0&amp;sid=555afaefca2400bd&amp;srpl=1&amp;srcs=1&amp;srd=1&amp;srf=0.01&amp;srx=1&amp;ver=300&amp;xck=0&amp;xtr=0&amp;og=&amp;aa=0&amp;csi=undefined&amp;toLoJson=uvs%3D555af6e162392505004%26chr%3DUTF-8%26md%3D0%26vcl%3D1&amp;rev=v1.8.2b-wp&amp;ct=1&amp;xld=1&amp;xd=1" style="height: 1px; width: 1px; position: absolute; top: 0px; z-index: 100000; border: 0px; left: 0px;"></iframe>
   </div>
  </body>
 </c:if>
 <c:if test="${param.mode eq 'quickview' && not empty param.productid}">
  <%@include file="resource.jsp" %>
  <sql:query dataSource="${conn}" var="product" sql="SELECT * FROM wProduct WHERE ProductID = ?">
   <sql:param value="${param.productid}" />
  </sql:query>
  <script src="https://apis.google.com/_/scs/apps-static/_/js/k=oz.gapi.en_GB.iysfLONW-ZI.O/m=auth/exm=plusone/rt=j/sv=1/d=1/ed=1/am=EQ/rs=AGLTcCP1uegVzJJ9U8XSjPr4yWtuFbnHNQ/t=zcms/cb=gapi.loaded_1" async=""></script>
  <script src="https://apis.google.com/_/scs/apps-static/_/js/k=oz.gapi.en_GB.iysfLONW-ZI.O/m=plusone/rt=j/sv=1/d=1/ed=1/am=EQ/rs=AGLTcCP1uegVzJJ9U8XSjPr4yWtuFbnHNQ/t=zcms/cb=gapi.loaded_0" async=""></script>
  <script type="text/javascript" src="//api-public.addthis.com/url/shares.json?url=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquickview%2Findex%2Fajax%2Fproduct_id%2F3%2F&amp;callback=_ate.cbs.sc_httpthemevastcomdemotvbigboomindexphpquickviewindexajaxproductid30"></script>
  <script type="text/javascript" src="//apis.google.com/js/plusone.js" gapi_processed="true"></script>
  <script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
  <script type="text/javascript" src="//s7.addthis.com/static//lang/vi.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Dummy Product #03</title>
  <meta name="description" content=" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id n">
  <meta name="keywords" content="Magento, Varien, E-commerce">
  <meta name="robots" content="INDEX,FOLLOW">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
  <link rel="icon" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/favicon.ico" type="image/x-icon">
  <link rel="shortcut icon" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/favicon.ico" type="image/x-icon">
  <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Raleway:400,700,500,600" rel="stylesheet" type="text/css">
  <!--[if lt IE 7]>
<script type="text/javascript">
//<![CDATA[
var BLANK_URL = 'http://themevast.com/demo/tv_bigboom/js/blank.html';
var BLANK_IMG = 'http://themevast.com/demo/tv_bigboom/js/spacer.gif';
//]]>
</script>
<![endif]-->
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/js/calendar/calendar-win2k-1.css">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/plugin/css/jquery.fancybox.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/plugin/css/jquery.bxslider.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/bootstrap/bootstrap.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/bootstrap/bootstrap-theme.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/css/font-awesome.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/css/animate.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/css/styles.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/base/default/css/widgets.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/ajaxcart/css/ajaxcart.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/blog/css/blog.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/megamenu/css/megamenu.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/megamenu/css/vmegamenu.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/themevast/css/cltool.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/themevast/cloudzoom/css/cloudzoom.css" media="all">
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/css/print.css" media="print">
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/prototype/prototype.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/lib/ccard.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/prototype/validation.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/builder.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/effects.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/dragdrop.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/controls.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/scriptaculous/slider.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/js.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/form.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/menu.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/mage/translate.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/mage/cookies.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/jquery.min.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/noconflict.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/jquery.fancybox.pack.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/bootstrap/bootstrap.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/bootstrap/bootstrap-tooltip.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/themevast.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/ajaxcart.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/jquery.bxslider.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/jquery.ddslick.min.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/megamenu.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/quickview.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/timer.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/product.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/varien/configurable.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/calendar/calendar.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/calendar/calendar-setup.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/cloud-zoom.1.0.3.js"></script>
  <script type="text/javascript" src="http://themevast.com/demo/tv_bigboom/js/themevast/plugin/lightbox.js"></script>
  <link rel="stylesheet" type="text/css" href="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/css/color/home1_red.css" media="all">

  <body class="page-empty  quickview-index-ajax catalog-product-view product-proin-lectus-ipsum" data-twttr-rendered="true" style="overflow-x: hidden;height: 580px">
   <div>
    <div class="themes-demo-wrap">
     <div class="theme-demo-option">
      <h2 class="themes-demo-title">Theme Color</h2>
      <div class="cl-table">
       <div class="title-home title-home1">Layout 1</div>
       <div class="cl-tr">
        <div class="cl-td cl-td-layout1"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=en" title="Red"><span></span>Red</a></div>
        <div class="cl-td cl-td-layout2"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=fr" title="Orange"><span></span>Orange</a></div>
        <div class="cl-td cl-td-layout3"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=ge" title="Green"><span></span>Green</a></div>
       </div>
       <div class="title-home title-home2">Layout 2</div>
       <div class="cl-tr">
        <div class="cl-td cl-td-layout1"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=br" title="Red"><span></span>Red</a></div>
        <div class="cl-td cl-td-layout2"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=it" title="Orange"><span></span>Orange</a></div>
        <div class="cl-td cl-td-layout3"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=rs" title="Green"><span></span>Green</a></div>
       </div>
       <div class="title-home title-home3">Layout 3</div>
       <div class="cl-tr">
        <div class="cl-td cl-td-layout1"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=pt" title="Red"><span></span>Red</a></div>
        <div class="cl-td cl-td-layout2"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=es" title="Orange"><span></span>Orange</a></div>
        <div class="cl-td cl-td-layout3"><a href="http://themevast.com/demo/tv_bigboom/index.php/?___store=sw" title="Green"><span></span>Green</a></div>
       </div>
      </div>
      <div class="control inactive"><a href="javascript:void(0)"><i class="fa fa-cog fa-spin"></i></a></div>
     </div>
    </div>
    <div id="messages_product_view"></div>
    <div class="product-view">
     <div class="product-essential">
      <form action="http://themevast.com/demo/tv_bigboom/index.php/checkout/cart/add/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC9xdWlja3ZpZXcvaW5kZXgvYWpheC9wcm9kdWN0X2lkLzMv/product/3/form_key/Ebl9dwDkzQf9wold/" method="post" id="product_addtocart_form">
       <div class="row">
        <c:set var="imageitem" value="${fn:split(product.rows[0].Image, ',')}" />
        <div style="width:50%" class="product-img-box col-sm-12 col-md-5 col-sms-6 col-smb-12">
         <div id="wrap" style="top:0px;z-index:9;position:relative;">
          <a href="./images/${imageitem[0]}" class="cloud-zoom" style="  margin: 10px 10px 0;border: 1px solid #eee;padding: 5px;" id="cloudzoom" style="position: relative; display: block;" rel="adjustX:10, adjustY:-2, zoomWidth:400, zoomHeight:400">
           <img src="./images/${imageitem[0]}" style="display: block; width: 438;height: 438"> </a>
          <div class="mousetrap" style="width: 491px; height: 491px; top: 0px; left: 0px; position: absolute; z-index: 9999; cursor: move; background-image: url(http://themevast.com/demo/tv_bigboom/js/themevast/plugin/blank.png);"></div>
         </div>
         </p>
         <div class="more-views thumbnail-container horizontal">
          <h2>More Views</h2>
          <ul class="bxslider" style="margin-left: 10px;">
           <c:forEach var="i" begin="0" end="${fn:length(imageitem)-1}">
            <li class="thumbnail-item">
             <a href="./images/${imageitem[i]}" class="cloud-zoom-gallery" title="" name="./images/${imageitem[i]}" rel="useZoom: 'cloudzoom', smallImage: './images/${imageitem[i]}'">
              <img src="./images/${imageitem[i]}" alt="" style="width: 78;height: 78"></a>
            </li>
           </c:forEach>
          </ul>
         </div>
         <script type="text/javascript">
              //<![CDATA[
              jQuery(document).ready(function ($) {
               $('.thumbnail-container .bxslider').bxSlider({
                slideWidth: 78,
                slideMargin: 10,
                mode: 'horizontal',
                minSlides: 1,
                maxSlides: 4,
                pager: false,
                speed: 500,
                pause: 3000,
                moveSlides: 1,
               });
              });
              //]]>
         </script>
        </div>
        <div style="width:50%" class="product-shop col-sm-12 col-md-7 col-sms-6 col-smb-12">
         <div class="product-name">
          <h1>${product.rows[0].ProductName}</h1>
         </div>
         <div class="ratings">
          <div class="rating-box">
           <div class="rating" style="width:100%"></div>
          </div>
          <p class="rating-links">
           <a href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/">(1 Reviews)</a>
           <span class="separator">|</span>
           <a class="add-review" href="http://themevast.com/demo/tv_bigboom/index.php/review/product/list/id/3/#review-form">Add Your Review</a>
          </p>
         </div>
         <p class="availability in-stock">Availability: <span>In stock</span></p>
         <div class="price-box">
          <span class="regular-price" id="product-price-3">
           <span class="price">$999.00</span> </span>
         </div>
         <div class="short-description">
          <!--<h2>Quick Overview</h2>-->
          <div class="std">
           ${product.rows[0].Description}
          </div>
         </div>
         <div class="add-to-box">
          <ul class="add-to-links">
           <li><a href="http://themevast.com/demo/tv_bigboom/index.php/wishlist/index/add/product/3/form_key/Ebl9dwDkzQf9wold/" onclick="productAddToCartForm.submitLight(this, this.href);
             return false;" class="link-wishlist" rel="tooltip" data-original-title=""><i class="fa fa-heart"></i></a></li>
           <li> <a href="http://themevast.com/demo/tv_bigboom/index.php/catalog/product_compare/add/product/3/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC9xdWlja3ZpZXcvaW5kZXgvYWpheC9wcm9kdWN0X2lkLzMv/form_key/Ebl9dwDkzQf9wold/" class="link-compare" rel="tooltip" data-original-title=""><i class="fa fa-exchange"></i></a></li>
          </ul>
          <p class="email-friend"><a class="email-friend-a" href="http://themevast.com/demo/tv_bigboom/index.php/sendfriend/product/send/id/3/" data-original-title="Email to a Friend" rel="tooltip"><i class="fa fa-envelope"></i></a></p>
         </div>
         <div class="addthis_native_toolbox" data-url="http://themevast.com/demo/tv_bigboom/index.php/quickview/index/ajax/product_id/3/" data-title="Dummy Product #03">
          <div id="atstbx" class="at-share-tbx-element addthis_default_style addthis_20x20_style addthis-smartlayers addthis-animated at4-show">
           <a class="addthis_button_facebook_like at300b" fb:like:layout="button_count">
            <div class="fb-like fb_iframe_widget" data-ref=".VVsQtBmRDoE.like" data-layout="button_count" data-show_faces="false" data-share="false" data-action="like" data-width="90" data-font="arial" data-href="http://themevast.com/demo/tv_bigboom/index.php/quickview/index/ajax/product_id/3/" data-send="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=172525162793917&amp;container_width=0&amp;font=arial&amp;href=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquickview%2Findex%2Fajax%2Fproduct_id%2F3%2F&amp;layout=button_count&amp;locale=vi_VN&amp;ref=.VVsQtBmRDoE.like&amp;sdk=joey&amp;send=false&amp;share=false&amp;show_faces=false&amp;width=90"><span style="vertical-align: bottom; width: 86px; height: 20px;"><iframe name="f343212328" width="90px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:like Facebook Social Plugin" src="http://www.facebook.com/v2.0/plugins/like.php?action=like&amp;app_id=172525162793917&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2FNM7BtzAR8RM.js%3Fversion%3D41%23cb%3Df335bc04cc%26domain%3Dthemevast.com%26origin%3Dhttp%253A%252F%252Fthemevast.com%252Ff358c0b8a%26relation%3Dparent.parent&amp;container_width=0&amp;font=arial&amp;href=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquickview%2Findex%2Fajax%2Fproduct_id%2F3%2F&amp;layout=button_count&amp;locale=vi_VN&amp;ref=.VVsQtBmRDoE.like&amp;sdk=joey&amp;send=false&amp;share=false&amp;show_faces=false&amp;width=90" style="border: none; visibility: visible; width: 86px; height: 20px;" class=""></iframe></span></div>
           </a>
           <a class="addthis_button_tweet at300b">
            <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.b169aa788731255dd55f1bb243b660e1.en.html#_=1432031412969&amp;count=horizontal&amp;counturl=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquickview%2Findex%2Fajax%2Fproduct_id%2F3%2F&amp;dnt=false&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquickview%2Findex%2Fajax%2Fproduct_id%2F3%2F&amp;size=m&amp;text=Dummy%20Product%20%2303%3A&amp;url=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquickview%2Findex%2Fajax%2Fproduct_id%2F3%2F%23.VVsQtOMa114.twitter" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="position: static; visibility: visible; width: 79px; height: 20px;"></iframe>
           </a><a class="addthis_button_pinterest_pinit at300b" pi:pinit:layout="horizontal"><span class="at_PinItButton"></span></a>
           <a class="addthis_button_google_plusone at300b" g:plusone:size="medium">
            <div id="___plusone_0" style="text-indent: 0px; margin: 0px; padding: 0px; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 90px; height: 20px; background: transparent;">
             <iframe frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 90px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1432031413005" name="I0_1432031413005" src="https://apis.google.com/u/0/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;hl=en-US&amp;origin=http%3A%2F%2Fthemevast.com&amp;url=http%3A%2F%2Fthemevast.com%2Fdemo%2Ftv_bigboom%2Findex.php%2Fquickview%2Findex%2Fajax%2Fproduct_id%2F3%2F&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en_GB.iysfLONW-ZI.O%2Fm%3D__features__%2Fam%3DEQ%2Frt%3Dj%2Fd%3D1%2Ft%3Dzcms%2Frs%3DAGLTcCP1uegVzJJ9U8XSjPr4yWtuFbnHNQ#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1432031413005&amp;parent=http%3A%2F%2Fthemevast.com&amp;pfname=&amp;rpctoken=35476267" data-gapiattached="true" title="+1"></iframe>
            </div>
           </a><a class="addthis_counter addthis_pill_style addthis_nonzero" href="#" style="display: inline-block;"><a class="atc_s addthis_button_compact"><span></span></a><a class="addthis_button_expanded" target="_blank" title="Thêm..." href="#" tabindex="1000">1</a></a>
           <div class="atclear"></div>
          </div>
         </div>
         <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-549fdf445bd3a1b9" async="async"></script>
         <div class="add-to-box-cart">
          <div class="add-to-cart">
           <div class="input-content">
            <label for="qty">Quantity</label>
            <div class="box-qty">
             <input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qty" class="input-text qty">
             <div class="qty-arrows">
              <input type="button" onclick="var qty_el = document.getElementById('qty');
             var qty = qty_el.value;
             if (!isNaN(qty))
              qty_el.value++;
             return false;" class="qty-increase">
              <input type="button" onclick="var qty_el = document.getElementById('qty');
                var qty = qty_el.value;
                if (!isNaN(qty) && qty > 1)
                 qty_el.value--;
                return false;" class="qty-decrease">
             </div>
            </div>
           </div>
           <button type="button" class="button btn-cart" onclick="productAddToCartForm.submit(this)" data-original-title="Add to Cart" rel="tooltip"><span>Add to Cart</span></button>
          </div>
         </div>
        </div>
       </div>
       <div class="clearer"></div>
       <div class="no-display">
        <input type="hidden" name="product" value="3">
        <input type="hidden" name="related_product" id="related-products-field" value="">
       </div>
      </form>
      <script type="text/javascript">
       //<![CDATA[
       jQuery('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
       var productAddToCartForm = new VarienForm('product_addtocart_form');
       productAddToCartForm.submit = function (button, url) {
        if (this.validator.validate()) {
         var form = this.form;
         var oldUrl = form.action;
         if (url) {
          form.action = url;
         }
         var e = null;
         try {
          this.form.submit();
         } catch (e) {
         }
         this.form.action = oldUrl;
         if (e) {
          throw e;
         }
         if (button && button != 'undefined') {
          button.disabled = true;
         }
        }
       }.bind(productAddToCartForm);
       productAddToCartForm.submitLight = function (button, url) {
        if (this.validator) {
         var nv = Validation.methods;
         delete Validation.methods['required-entry'];
         delete Validation.methods['validate-one-required'];
         delete Validation.methods['validate-one-required-by-name'];
         // Remove custom datetime validators
         for (var methodName in Validation.methods) {
          if (methodName.match(/^validate-datetime-.*/i)) {
           delete Validation.methods[methodName];
          }
         }
         if (this.validator.validate()) {
          if (url) {
           this.form.action = url;
          }
          this.form.submit();
         }
         Object.extend(Validation.methods, nv);
        }
       }.bind(productAddToCartForm);
       //]]>
      </script>
     </div>
    </div>
   </div>

  <body>
  </c:if>

</html>