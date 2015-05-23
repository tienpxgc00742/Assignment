<%-- Document : index Created on : May 16, 2015, 1:40:21 PM Author : MrT --%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>[Home Page]</title>

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
  <script type="text/javascript" src="./Assets/js/jquery.bxslider.js"></script>
  <link rel="stylesheet" type="text/css" href="./Assets/css/jquery.bxslider.css">
 </head>
 <body>
  <%@include file="header.jsp" %>
  <section class="vmegamenu-banner">
   <sql:query dataSource="${conn}" var="category">
       SELECT * FROM wCategory;
   </sql:query>
   <div class="container">
    <div class="block-position">
     <div class="position position1">
      <div class="nav-vcontainer hidden-xs hidden-sm">
       <div class="nav-inner">
        <div class="vmegamenu-title">
         <h2><i class="fa fa-bars"></i>Categories</h2></div>
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
                         <a class="itemMenuName level2" href="./productlist.jsp?cat=${sc.SubCategoryName}"><span>${sc.SubCategoryName}</span></a>
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
     </div>
     <div class="position position2">
      <figure class="banner-slideshow">
       <div class="flexslider tv-nivoslider image-effect">
        <div class="ajax_loading"><i class="fa fa-spinner fa-spin"></i></div>
        <div id="tv-inivoslider" class="sliders nivoSlider">
         <div class="nivo-item">
         </div>
         <img class="nivo-main-image" src="http://themevast.com/demo/tv_bigboom/media/themevast/imageslider/banner1_1.jpg" style="display: inline; overflow: hidden; height: 335px; width: 632px;">
         <div class="nivo-caption">
          <div class="TopToBottom">
           <div class="title">Creative and Unique</div>
           <div class="description">Design is so simple, that's why it is so complicated.</div>
           <div class="readmore">
            <a href="#" title="Get a look !">Get a look !</a>
           </div>
          </div>
         </div>
         <div class="nivo-directionNav"><a class="nivo-prevNav"><i class="fa fa-angle-left"></i></a><a class="nivo-nextNav"><i class="fa fa-angle-right"></i></a></div>
         <div class="nivo-slice" name="0" style="left: 0px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-0px;"></div>
         <div class="nivo-slice" name="1" style="left: 42px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-42px;"></div>
         <div class="nivo-slice" name="2" style="left: 84px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-84px;"></div>
         <div class="nivo-slice" name="3" style="left: 126px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-126px;"></div>
         <div class="nivo-slice" name="4" style="left: 168px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-168px;"></div>
         <div class="nivo-slice" name="5" style="left: 210px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-210px;"></div>
         <div class="nivo-slice" name="6" style="left: 252px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-252px;"></div>
         <div class="nivo-slice" name="7" style="left: 294px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-294px;"></div>
         <div class="nivo-slice" name="8" style="left: 336px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-336px;"></div>
         <div class="nivo-slice" name="9" style="left: 378px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-378px;"></div>
         <div class="nivo-slice" name="10" style="left: 420px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-420px;"></div>
         <div class="nivo-slice" name="11" style="left: 462px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-462px;"></div>
         <div class="nivo-slice" name="12" style="left: 504px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-504px;"></div>
         <div class="nivo-slice" name="13" style="left: 546px; width: 42px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-546px;"></div>
         <div class="nivo-slice" name="14" style="left: 588px; width: 44px; height: 0px; opacity: 1; overflow: hidden; top: 0px;"><img src="./media/themevast/imageslider/banner2_1.jpg" style="position:absolute; width:632px; height:auto; display:block !important; top:0; left:-588px;"></div>
        </div>
        <div class="nivo-controlNav"><a class="nivo-control" rel="0">1</a><a class="nivo-control active" rel="1">2</a></div>
       </div>
      </figure>
      <script type="text/javascript">
          jQuery(document).ready(function ($) {
               (function (selector) {
                    var $content = $(selector);
                    $content.nivoSlider({
                         slices: 15,
                         boxCols: 8,
                         boxRows: 4,
                         startSlide: 0,
                         controlNavThumbs: false,
                         pauseOnHover: true,
                         manualAdvance: false,
                         prevText: 'Prev',
                         nextText: 'Next',
                         effect: 'random',
                         animSpeed: 600,
                         pauseTime: 5000,
                         controlNav: 1,
                         directionNav: 1,
                    });
               })('#tv-inivoslider');
          });
      </script>
      <script type="text/javascript">
          jQuery(document).ready(function ($) {
               (function (selector) {
                    var $content = $(selector);
                    var $slider = $('.products-grid', $content);
                    var slider = $slider.bxSlider({
                         auto: 0,
                         speed: 300,
                         controls: 1,
                         pager: 0,
                         maxSlides: 3,
                         slideWidth: 280,
                         infiniteLoop: false,
                         moveSlides: 2,
                         slideMargin: 10,
                         autoHover: true,
                    })
               })(".randomslider");
          });
      </script>
     </div>
     <div class="position position3">
      <div class="home3-banner-top">
       <div class="banner-box banner-box1"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/home3_banner_top2.jpg" alt=""><a href="#">Shop Now <em class="fa fa-arrow-circle-right"></em></a></div>
       <div class="banner-box banner-box2"><img src="http://themevast.com/demo/tv_bigboom/media/wysiwyg/home3_banner_top3.jpg" alt=""><a href="#">Shop Now <em class="fa fa-arrow-circle-right"></em></a></div>
      </div>
     </div>
    </div>
   </div>
  </section>

  <main class="main-wrapper">
   <div class="main">
    <div class="container">
     <section>
      <div class="bx-controls bx-has-controls-direction">
       <div id="slider-control" class="bx-controls-direction">
       </div>
      </div>
      <div class="bx-title featured-title">
       <h2>Product</h2></div>
      <div class="slider1">
       <sql:query dataSource="${conn}" var="resultproduct">
           SELECT * FROM wProduct
       </sql:query>
       <c:forEach var="p" items="${resultproduct.rows}">
           <div class="slide">
            <ul class="products-grid" style="float: left; list-style: none; position: relative; width: 210px; margin-right: 30px;">
             <li class="item last item-animate">
              <div class="item-inner">
               <div class="box-images">
                <a href="#" class="product-image">
                 <c:set var="imagetext" value="${p.Image}" />
                 <c:set var="imageitem" value="${fn:split(imagetext, ',')}" />
                 <c:choose>
                     <c:when test="${fn:length(imageitem) gt 1}">
                         <img class="img-face-back" src="./images/${imageitem[1]}" style="background-color: #F6F6F6; width: 194px; height: 146px;">
                         <img class="img-face" src="./images/${imageitem[0]}" style="background-color: #F6F6F6; width: 194px; height: 146px;"></c:when>
                     <c:otherwise><img class="img-face" src="./images/${imageitem[0]}" style="background-color: #F6F6F6;"></c:otherwise>
                 </c:choose>
                </a>
                <a class="view-detail" id="fancybox" href="./productview.jsp?mode=quickview&productid=${p.ProductID}" data-fancybox-type="iframe"><i class="fa fa-search"></i></a>
               </div>
               <div class="product-shop">
                <h2 class="product-name"><a href="#">${p.ProductName}</a></h2>
                <div class="ratings">
                 <div class="rating-box">
                  <div class="rating" style="width:100%"></div>
                 </div>
                 <p class="rating-links">
                  <a href="#">(1 Reviews)</a>
                  <span class="separator">|</span>
                  <a class="add-review" href="#">Add Your Review</a>
                 </p>
                </div>
                <div class="price-box">
                 <span class="regular-price" id="product-price-17">
                  <span class="price">$${p.UnitPrice}</span> </span>

                </div>

                <div class="actions">
                 <button type="button"  class="button btn-cart" onclick="addCart(${p.ProductID})" data-original-title="Add to Cart" rel="tooltip"><span><span><i class="fa fa-shopping-cart"></i>Add to Cart</span></span>
                 </button>


                 <ul class="add-to-links">
                  <li><a href="#" class="link-compare" data-original-title="Add to Compare" rel="tooltip"><i class="fa fa-exchange"></i></a></li>
                  <li><a href="#" class="link-wishlist" data-original-title="Add to Wishlist" rel="tooltip"><i class="fa fa-heart"></i></a></li>
                 </ul>
                </div>
               </div>
               <span class="icon-new">New</span> </div>
             </li>
            </ul>
           </div>
       </c:forEach>
       <script type="text/javascript">
           
       </script>
      </div>
     </section>
    </div>
    <%@include file="script.jsp" %>

   </div>
  </main>
  <%@include file="footer.jsp" %>
 </body>

</html>