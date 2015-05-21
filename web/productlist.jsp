<%-- 
    Document   : newjsp1
    Created on : May 20, 2015, 8:43:09 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


  <%@include file="header.jsp" %>

  <!-- css -->
  <link href="//fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" href="./Assets/custom/styles.min.css?v=8" />
  <link href="/content/img/common/favicon.png" rel="shortcut icon" />


  <link href="./Assets/custom/jplist-demo-pages.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-core.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-filter-toggle-bundle.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-pagination-bundle.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-history-bundle.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-textbox-control.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-jquery-ui-bundle.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-preloader-control.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-start-rating-control.min.css" rel="stylesheet" type="text/css" />
  <link href="./Assets/custom/jplist-views-control.min.css" rel="stylesheet" type="text/css" />


  <!-- js -->		
  <script src="./Assets/custom/jquery-1.10.0.min.js"></script>
  <script src="./Assets/custom/modernizr.min.js"></script>
  <script src="./Assets/custom/jquery.lazyload.min.js"></script>        

  <link rel="stylesheet" href="./Assets/custom/jquery-ui.css" />
  <script src="./Assets/custom/jquery-ui.js"></script>

  <script src="./Assets/custom/jplist-core.min.js"></script>
  <script src="./Assets/custom/jplist.counter-control.min.js"></script>
  <script src="./Assets/custom/jplist.filter-dropdown-bundle.min.js"></script>
  <script src="./Assets/custom/jplist.filter-toggle-bundle.min.js"></script>
  <script src="./Assets/custom/jplist.history-bundle.min.js"></script>
  <script src="./Assets/custom/jplist.jquery-ui-bundle.min.js"></script>
  <script src="./Assets/custom/jplist.pagination-bundle.min.js"></script>
  <script src="./Assets/custom/jplist.sort-bundle.min.js"></script>
  <script src="./Assets/custom/jplist.textbox-control.min.js"></script>
  <script src="./Assets/custom/jplist.views-control.min.js"></script>
  <script src="./Assets/custom/jplist.start-rating-control.min.js"></script>
  <script src="./Assets/custom/jplist.jquery-ui-bundle.min.js"></script>

  <script>
   $('document').ready(function () {

    /**
     * user defined functions
     */
    jQuery.fn.jplist.settings = {
     /**
      * PRICES: jquery ui range slider
      */
     pricesSlider: function ($slider, $prev, $next) {

      $slider.slider({
       min: 0
       , max: 1000
       , range: true
       , values: [0, 1000]
       , slide: function (event, ui) {
        $prev.text('$' + ui.values[0]);
        $next.text('$' + ui.values[1]);
       }
      });
     }

     /**
      * PRICES: jquery ui set values
      */
     , priesValues: function ($slider, $prev, $next) {

      $prev.text('$' + $slider.slider('values', 0));
      $next.text('$' + $slider.slider('values', 1));
     }

     /**
      * VIEWS: jquery ui range slider
      */

    };

    /**
     * jPList
     */
    $('#demo2').jplist({
     itemsBox: '.list'
     , itemPath: '.list-item'
     , panelPath: '.jplist-panel'

     , controlTypes: {
      'range-slider-prices': {
       className: 'RangeSlider'
       , options: {
        //jquery ui range slider
        ui_slider: function ($slider, $prev, $next) {

         $slider.slider({
          min: 0
          , max: 1000
          , range: true
          , values: [0, 1000]
          , slide: function (event, ui) {
           $prev.text('$' + ui.values[0]);
           $next.text('$' + ui.values[1]);
          }
         });
        }

        , set_values: function ($slider, $prev, $next) {

         $prev.text('$' + $slider.slider('values', 0));
         $next.text('$' + $slider.slider('values', 1));
        }
       }
      }
     }
    });
   });
  </script>	


  <!-- google analytics -->
  <script>
   (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function () {
     (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date();
    a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m)
   })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

   ga('create', 'UA-36006444-3', 'jplist.com');
   ga('send', 'pageview');

  </script>

 </head>
 <body>
  <main class="main-wrapper" style="background: #fff;">
   <div class="container" id="demo2">
    <div class="container-inner">
     <section class="main-page">
      <div class="main-container col2-left-layout">
       <div class="main">
        <div class="row">
         <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
          <div class="col-left sidebar" style="padding-right: 2px;"><div class="nav-vcontainer hidden-xs hidden-sm" style="margin-top: -88px;">
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
            <script type="text/javascript">
             //<![CDATA[
             var MEGAMENU_EFFECT = 0;

             //]]>
            </script>

           </div>
           <div class="block block-layered-nav">
            <div class="block-title"> <strong><span>Shop By</span></strong> </div>
            <div class="block-content">
             <p class="block-subtitle">Shopping Options</p>
             <dl id="narrow-by-list"> <dt class="odd"><span>SubCategory</span></dt>
              <dd class="odd">
               <div class="jplist-panel box panel-top">
                <div class="jplist-group" data-control-type="button-filter-group" data-control-action="filter" data-control-name="button-filter-group-1" data-mode="single">
                 <ul>
                  <li> <span data-path=".title" data-button="true" data-selected="true" class="">
                    <i class="fa fa-caret-right"></i>
                    All
                   </span> </li>
                   <c:forEach var="sub" items="${scategory.rows}">
                   <li> <span data-path=".${sub.SubCategoryName}" data-button="true" class="">
                     <i class="fa fa-caret-right"></i>
                     ${sub.SubCategoryName}
                    </span> </li>
                   </c:forEach>
                 </ul>
                </div>
               </div>
              </dd> 
              <dt class="even" style="height: 60px"></dt>
              <dt class="even"><span>Price</span></dt>
              <dd class="even">
               <ol>
                <div class="jplist-panel box panel-top">
                 <div 
                  class="jplist-range-slider"
                  data-control-type="range-slider" 
                  data-control-name="range-slider-prices" 
                  data-control-action="filter"
                  data-path=".price"
                  data-slider-func="pricesSlider" 
                  data-setvalues-func="priesValues">

                  <div class="value" data-type="prev-value"></div>
                  <div class="ui-slider" data-type="ui-slider"></div>
                  <div class="value" data-type="next-value"></div>
                 </div>
                </div>
               </ol>
              </dd> 
             </dl>
            </div>
           </div>
          </div>
         </div>
         <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9" style="margin-top: -32px;">
          <div class="col-main">
           <div class="breadcrumbs">
            <ul>
             <li class="home">
              <a href="index.jsp" title="Go to Home Page">Home</a>
              <span>/ </span>
             </li>
             <li class="category3">
              <a href="#" title="">Fashion</a>
              <span>/ </span>
             </li>
             <li class="category42">
              <a href="#" title="">Material Bag</a>
              <span>/ </span>
             </li>
             <li class="category46">
              <strong>Chocolates</strong>
             </li>
            </ul>
           </div>
           <div class="page-title category-title">
            <h1>Chocolates</h1>
           </div>
           <div class="box">
            <div class="center">
             <div class="box text-shadow">

              <!-- demo -->
              <div id="demo" class="box jplist">

               <!-- ios button: show/hide panel -->
               <div class="jplist-ios-button">
                <i class="fa fa-sort"></i>
                jPList Actions
               </div>

               <!-- panel -->
               <div class="jplist-panel box panel-top toolbar">	
                <div class="sorter">
                 <p class="view-mode">
                  <label>View as:</label> <strong title="Grid" class="grid">Grid</strong>&nbsp; 
                  <a href="#" title="List" class="list2">List</a>&nbsp; 
                 </p>
                 <div class="sort-by hidden-xs hidden-sm">
                  <label>Sort By</label>
                  <div class="jplist-drop-down" style="width: 100px" data-control-type="sort-drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{month}/{day}/{year}">
                   <!--{year}, {month}, {day}, {hour}, {min}, {sec} -->
                   <ul>
                    <li><span data-path="default">Sort by</span></li>
                    <li><span data-path=".title" data-order="asc" data-type="text" data-default="true">Title A-Z</span></li>
                    <li><span data-path=".title" data-order="desc" data-type="text">Title Z-A</span></li>
                    <li><span data-path=".price" data-order="asc" data-type="number">Prices asc</span></li>
                    <li><span data-path=".price" data-order="desc" data-type="number">Prices desc</span></li>

                   </ul>
                  </div>
                 </div>
                 <div class="limiter hidden-xs hidden-sm">
                  <label>Show</label>
                  <div 
                   class="jplist-drop-down" 
                   data-control-type="items-per-page-drop-down" 
                   data-control-name="paging" 
                   data-control-action="paging"
                   data-control-animate-to-top="true">

                   <ul>
                    <li><span data-number="8" data-default="true"> 8 per page </span></li>
                    <li><span data-number="12"> 12 per page </span></li>
                    <li><span data-number="16"> 16 per page </span></li>
                    <li><span data-number="all"> View All </span></li>
                   </ul>
                  </div>
                 </div>
                </div>
                <div class="pager">

                 <div 
                  class="amount"  
                  data-type="Showing {start} to {end} of {all}" 
                  data-control-type="pagination-info" 
                  data-control-name="paging" 
                  data-control-action="paging"></div>
                 <div class="pages">
                  <div 
                   class="jplist-pagination" 
                   data-control-type="pagination" 
                   data-control-name="paging" 
                   data-control-action="paging">
                  </div>
                 </div>
                </div>
               </div>

               <!-- data -->   
               <div class="list box text-shadow row" style="  margin-right: -35px;margin-left: -15px;">
                <!--                Sự kiện search-->
                <c:choose>
                 <c:when test="${not empty param.cat}">
                  <c:choose>
                   <c:when test="${param.cat eq 'All'}">
                    <sql:query dataSource="${conn}" var="resultproduct">
                     SELECT * FROM wProduct WHERE ProductName LIKE ?;
                     <sql:param value="%${param.search}%"/>
                    </sql:query>
                   </c:when>
                   <c:otherwise>
                    <c:if test="${not empty param.search}">
                     <sql:query dataSource="${conn}" var="resultproduct">
                      SELECT * FROM wProduct WHERE SubCategoryName = ? AND ProductName LIKE ?;
                      <sql:param value="${param.cat}"/>
                      <sql:param value="%${param.search}%"/>
                     </sql:query>
                    </c:if>
                    <c:if test="${empty param.search}">
                     <sql:query dataSource="${conn}" var="resultproduct">
                      SELECT * FROM wProduct WHERE SubCategoryName = ?;
                      <sql:param value="${param.cat}"/>
                     </sql:query>
                    </c:if> 
                   </c:otherwise>
                  </c:choose>
                 </c:when>
                 <c:otherwise>
                  <sql:query dataSource="${conn}" var="resultproduct">
                   SELECT * FROM wProduct
                  </sql:query>
                 </c:otherwise>
                </c:choose>
                <c:forEach var="p" items="${resultproduct.rows}">
                 <div class="list-item box">
                  <ul class="products-grid col-md-4" style="float: left; list-style: none; position: relative; width: 210px;margin-right: 20px">
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
                      <h2 class="product-name"><a href="#"><p class="title">${p.ProductName}</p></a></h2>
                      <p class="${p.SubCategoryName}" style="display: none">${p.ProductName}</p>
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
                        <span class="price">$${fn:split(p.UnitPrice, '.')[0]}</span>
                      </div>

                      <div class="actions">
                       <button type="button" class="button btn-cart" value="${p.ProductID}" data-original-title="Add to Cart" rel="tooltip"><span><span><i class="fa fa-shopping-cart"></i>Add to Cart</span></span>
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
               </div>

               <div class="box jplist-no-results text-shadow align-center">
                <p>No results found</p>
               </div>

               <!-- ios button: show/hide panel -->
               <div class="jplist-ios-button">
                <i class="fa fa-sort"></i>
                jPList Actions
               </div>

               <!-- panel -->
               <div class="jplist-panel box panel-bottom">						
                <div class="text-filter-box">

                 <i class="fa fa-search  jplist-icon"></i>

                 <input 
                  id="fuckinga"
                  data-path=".title" 
                  type="text" 
                  value="" 
                  placeholder="Filter by Title" 
                  data-control-type="textbox" 
                  data-control-name="title-filter" 
                  data-control-action="filter"
                  />
                </div>

                <div 
                 class="jplist-drop-down" 
                 data-control-type="sort-drop-down" 
                 data-control-name="sort" 
                 data-control-action="sort"
                 data-control-animate-to-top="true"
                 data-datetime-format="{month}/{day}/{year}"> <!-- {year}, {month}, {day}, {hour}, {min}, {sec} -->

                 <ul>
                  <li><span data-path="default">Sort by</span></li>
                  <li><span data-path=".title" data-order="asc" data-type="text" data-default="true">Title A-Z</span></li>
                  <li><span data-path=".title" data-order="desc" data-type="text">Title Z-A</span></li>
                  <li><span data-path=".price" data-order="asc" data-type="number">Prices asc</span></li>
                  <li><span data-path=".price" data-order="desc" data-type="number">Prices desc</span></li>
                 </ul>
                </div>

                <!-- pagination results -->
                <div 
                 class="jplist-label"  
                 data-type="{start} - {end} of {all}" 
                 data-control-type="pagination-info" 
                 data-control-name="paging" 
                 data-control-action="paging"></div>

                <!-- pagination -->
                <div 
                 class="jplist-pagination" 
                 data-control-type="pagination" 
                 data-control-name="paging" 
                 data-control-action="paging"
                 data-control-animate-to-top="true">
                </div>	

               </div>
              </div>
              <!-- end of demo -->


             </div>
            </div>
           </div>
          </div>
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
