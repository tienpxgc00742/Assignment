<%-- 
    Document   : product
    Created on : May 18, 2015, 1:04:10 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Quản lý sản phẩm</title>
  <link rel="stylesheet" type="text/css" href="./css/dropzone.min.css"/>
  <script type="text/javascript" src="./js/dropzone.min.js"></script>
  <style>
   .content input{
    zoom: 150%;
   }
   .content label{
    zoom: 150%;
   }
   #tooltip1 { }
   #tooltip1 a span { display: none; color: #FFFFFF; }
   #tooltip1 a:hover span { display: block; position: absolute; height: 50px; left: 600px; top: 20px; padding: 0 5px; }
  </style>
 </head> 
 <body>
  <%@include file="menu.jsp"%>
  <section class="content-wrap ecommerce-products">
   <!-- Breadcrumb -->
   <div class="ecommerce-title">
    <div class="row">
     <div class="col s12 m9 l10">
      <!--h1>@@title</h1-->
      <nav>
       <ul class="left">
        <li><a href="dashboard.jsp">Dashboard</a>
        </li>
        <li class="active"><a href="product.jsp">Products</a>
        </li>
        <li><a href="order.jsp">Orders</a>
        </li>
        <li><a href="customer.jsp">Customers</a>
        </li>
        <li><a href="categories.jsp">Settings</a>
        </li>
       </ul>
      </nav>

     </div>
     <div class="col s12 m3 l2 right-align">
      <a href="#!" class="btn grey lighten-3 grey-text z-depth-0 chat-toggle"><i class="fa fa-comments"></i></a>
     </div>
    </div>

   </div>
   <c:choose>
    <c:when test="${param.action eq 'add'}">
     <form action="../functions/db.jsp" method="post">
      <p class="right-align">
       <button class="btn" type="submit">Lưu</button>
       <a class="btn" href="product.jsp">Hủy</a>
      </p>
      <!-- General -->
      <div class="card">
       <div class="title">
        <h5>Thêm mới sản phẩm</h5>
        <a class="minimize" href="#">
         <i class="mdi-navigation-expand-less"></i>
        </a>
       </div>
       <div class="content">
        <!-- Product Name -->
        <div class="row no-margin-top">
         <div class="col s12 l3">
          <label for="ecommerce-product-name" class="setting-title">
           Tên sản phẩm
          </label>
         </div>
         <div class="col s12 l9">
          <div class="input-field no-margin-top">
           <i class="mdi-editor-insert-comment prefix"></i>
           <input id="ecommerce-product-name" type="text" placeholder="Tên sản phẩm" name="pname">
          </div>
         </div>
        </div>
        <!-- /Product Name -->

        <!-- Product SKU, Price, Stock -->
        <div class="row no-margin-top">
         <div class="col s12 l3">
         </div>
         <div class="col s12 l3">
          <div class="input-field">
           <i class="mdi-notification-event-note prefix"></i>
           <input id="ecommerce-product-sku" type="text" name="pid" value="Auto" readonly>
           <label for="ecommerce-product-sku" class="active">Mã số sản phẩm</label>
          </div>
         </div>
         <div class="col s12 l3">
          <div class="input-field">
           <i class="mdi-editor-attach-money prefix"></i>
           <input id="ecommerce-product-price" type="text" name="pprice">
           <label for="ecommerce-product-price" class="active">Giá</label>
          </div>
         </div>
         <div class="col s12 l3">
          <div class="input-field">
           <i class="mdi-editor-format-list-numbered prefix"></i>
           <input id="ecommerce-product-stock" type="text" name="pstock">
           <label for="ecommerce-product-stock" class="active">Số lượng</label>
          </div>
         </div>
        </div>
        <div class="row no-margin-top">
         <div class="col s12 l3">
          <label for="ecommerce-product-name" class="setting-title">
           Tên sản phẩm
          </label>
         </div>
         <div class="col s12 l3">
          <sql:query dataSource="${conn}" var="resultsubcategory">
           SELECT * FROM wSubCategory 
          </sql:query>
          <select name="pcat">
           <c:forEach var="s" items="${resultsubcategory.rows}">
            <option>${s.SubCategoryName}</option>
           </c:forEach>
          </select>
         </div>
        </div>
        <!-- /Product SKU, Price, Stock -->
        <div class="row product-photos">
         <div class="col s12 l3">
          <label for="ecommerce-product-photos" class="setting-title">
           Mã ảnh được tải lên
          </label>
         </div>
         <div class="col s12 l9">
          <div class="file-field input-field">
           <input id="image-list" class="file-path" type="text" name="pimage" readonly> 
           <div class="btn red">
            <span>Tên ảnh</span>
           </div>
          </div>
         </div>
        </div>
        <!-- Product Description -->
        <div class="row no-margin-top">
         <div class="col s12 l3">
          <label class="setting-title">
           Ghi chú sản phẩm
          </label>
         </div>
         <div class="col s12 l9">

          <textarea id="ckeditor1" name="pdes" style="visibility: hidden; display: none;"></textarea>

         </div>
        </div>
        <!-- /Product Description -->
       </div>
      </div>
      <!-- /General -->
     </form>
     <!-- Meta -->
     <div class="card" style="margin-top: 20px;">
      <div class="title">
       <h5>Quản lý hình ảnh</h5>
       <a class="minimize" href="#">
        <i class="mdi-navigation-expand-less"></i>
       </a>
      </div>
      <div class="content">

       <!-- Keywords -->
       <div class="row no-margin-top">
        <div class="col s12 l3">
         <label for="ecommerce-product-keywords" class="setting-title">
          Tải ảnh lên
         </label>
        </div>
        <div class="col s12 l9">
         <form action="../upload" method="POST"
               class="dropzone"
               id="my-dropzone" name="dropzonefile"></form><br/>
         <button id="submit-all" class="btn">Tiến hành tải lên</button>
         <script>
          // myDropzone is the configuration for the element that has an id attribute
          // with the value my-dropzone (or myDropzone)
          Dropzone.options.myDropzone = {
           maxFiles: 3,
           maxFilesize: 2, // MB
           autoProcessQueue: false,
           init: function () {
            var submitButton = document.querySelector("#submit-all")
            myDropzone = this; // closure

            submitButton.addEventListener("click", function () {
             myDropzone.processQueue(); // Tell Dropzone to process all queued files.
            });
            this.on("success", function (file, responseText) {
             if ($('#image-list').val().length <= 0)
             {
              $('#image-list').val(responseText + ".png");
             }
             else
             {
              $('#image-list').val($('#image-list').val() + "," + responseText + ".png");
             }

            });
            this.on("maxfilesexceeded", function (file) {
             alert("Tối đa upload 3 ảnh thôi nhé!");
            });
            this.on("addedfile", function (file) {

             // Create the remove button
             var removeButton = Dropzone.createElement("<a class='waves-effect waves-light btn red btn-small'>Remove</a>");


             // Capture the Dropzone instance as closure.
             var _this = this;

             // Listen to the click event
             removeButton.addEventListener("click", function (e) {
              // Make sure the button click doesn't submit the form:
              e.preventDefault();
              e.stopPropagation();

              // Remove the file preview.
              _this.removeFile(file);
              // If you want to the delete the file on the server as well,
              // you can do the AJAX request here.
             });

             // Add the button to the file preview element.
             file.previewElement.appendChild(removeButton);
            });
           }
          };
         </script>
        </div>                                
       </div>
       <!-- /Keywords -->
      </div>
     </div>
     <!-- /Meta -->

    </c:when>
    <c:when test="${param.action eq 'edit' && not empty param.pid}">
     <sql:query dataSource="${conn}" var="results">
      SELECT *  FROM wProduct WHERE ProductID = ?;
      <sql:param value="${param.pid}"/>
     </sql:query>
     <form action="../functions/db.jsp" method="post">
      <c:forEach var="result" items="${results.rows}">
       <input type="hidden" name="action" value="edit"/>
       <p class="right-align">
        <button class="btn" type="submit">Lưu</button>
        <a class="btn" href="product.jsp">Hủy</a>
       </p>
       <!-- General -->
       <div class="card">
        <div class="title">
         <h5>Thêm mới sản phẩm</h5>
         <a class="minimize" href="#">
          <i class="mdi-navigation-expand-less"></i>
         </a>
        </div>
        <div class="content">
         <!-- Product Name -->
         <div class="row no-margin-top">
          <div class="col s12 l3">
           <label for="ecommerce-product-name" class="setting-title">
            Tên sản phẩm
           </label>
          </div>
          <div class="col s12 l9">
           <div class="input-field no-margin-top">
            <i class="mdi-editor-insert-comment prefix"></i>
            <input id="ecommerce-product-name" type="text" placeholder="Tên sản phẩm" name="pname" value="${result.ProductName}">
           </div>
          </div>
         </div>
         <!-- /Product Name -->

         <!-- Product SKU, Price, Stock -->
         <div class="row no-margin-top">
          <div class="col s12 l3">
          </div>
          <div class="col s12 l3">
           <div class="input-field">
            <i class="mdi-notification-event-note prefix"></i>
            <input id="ecommerce-product-sku" type="text" name="pid" value="${result.ProductID}">
            <label for="ecommerce-product-sku" class="active">Mã số sản phẩm</label>
           </div>
          </div>
          <div class="col s12 l3">
           <div class="input-field">
            <i class="mdi-editor-attach-money prefix"></i>
            <input id="ecommerce-product-price" type="text" name="pprice" value="${result.UnitPrice}">
            <label for="ecommerce-product-price" class="active">Giá</label>
           </div>
          </div>
          <div class="col s12 l3">
           <div class="input-field">
            <i class="mdi-editor-format-list-numbered prefix"></i>
            <input id="ecommerce-product-stock" type="text" name="pstock"  value="${result.Stock}">
            <label for="ecommerce-product-stock" class="active">Số lượng</label>
           </div>
          </div>
         </div>
         <div class="row no-margin-top">
          <div class="col s12 l3">
           <label for="ecommerce-product-name" class="setting-title">
            Tên sản phẩm
           </label>
          </div>
          <div class="col s12 l3">
           <sql:query dataSource="${conn}" var="resultsubcategory">
            SELECT * FROM wSubCategory 
           </sql:query>
           <select name="pcat">
            <c:forEach var="s" items="${resultsubcategory.rows}">
             <option ${s.SubCategoryName == result.SubCategoryName ? 'selected' :''}>${s.SubCategoryName}</option>
            </c:forEach>
           </select>
          </div>
         </div>
         <!-- /Product SKU, Price, Stock -->
         <div class="row product-photos">
          <div class="col s12 l3">
           <label for="ecommerce-product-photos" class="setting-title">
            Mã ảnh được tải lên
           </label>
          </div>
          <!--          1995-->
          <div class="col s12 l9">
           <div class="file-field input-field">
            <input id="image-list" class="file-path" type="text" name="pimage" value="${result.Image}" readonly> 
            <div class="btn red">
             <span>Tên ảnh</span>
            </div>
           </div>
          </div>
         </div>
         <div class="row product-photos">
          <div class="col s12 l3">
           <label for="ecommerce-product-photos" class="setting-title">

           </label>
          </div>
          <!--          1995-->
          <div class="col s12 l9">
           <div class="file-field input-field">
            <c:set var="imagetext" value="${result.Image}" />
            <c:set var="imageitem" value="${fn:split(imagetext, ',')}" />
            <c:forEach var="i" begin="0" end="${fn:length(imageitem)-1}">
             <div id="${imageitem[i]}">
              <c:set var="itemname" value="${imageitem[i]}"/>
              <input type="checkbox" name="groupitem" value="${imageitem[i]}" id="checkbox-a${i}" checked/>
              <label for="checkbox-a${i}" id='labelc' onclick="myxXx()">${imageitem[i]}</label>
              <p id="tooltip1"><a href="#" style="margin-left: 10px;">View
                <span><img src="../images/${imageitem[i]}" width="200" height="200"/>"</span>
               </a>
              </p>
             </div>
            </c:forEach>
           </div>
          </div>
         </div>


         <!-- Product Description -->
         <div class="row no-margin-top">
          <div class="col s12 l3">
           <label class="setting-title">
            Ghi chú sản phẩm
           </label>
          </div>
          <div class="col s12 l9">

           <textarea id="ckeditor1" name="pdes" style="visibility: hidden; display: none;">${result.Description}</textarea>

          </div>
         </div>
         <!-- /Product Description -->
        </div>
       </div>
      </c:forEach>
       <script type="text/javascript">
       function myxXx()
       {
        alert(jQuery(this).parent().attr('id'));
       }
      </script>
      <!-- /General -->
     </form>
     <!-- Meta -->
     <div class="card" style="margin-top: 20px;">
      <div class="title">
       <h5>Quản lý hình ảnh</h5>
       <a class="minimize" href="#">
        <i class="mdi-navigation-expand-less"></i>
       </a>
      </div>
      <div class="content">

       <!-- Keywords -->
       <div class="row no-margin-top">
        <div class="col s12 l3">
         <label for="ecommerce-product-keywords" class="setting-title">
          Tải ảnh lên
         </label>
        </div>
        <div class="col s12 l9">
         <form action="../upload" method="POST"
               class="dropzone"
               id="my-dropzone" name="dropzonefile"></form><br/>
         <button id="submit-all" class="btn">Tiến hành tải lên</button>
         <script>
          // myDropzone is the configuration for the element that has an id attribute
          // with the value my-dropzone (or myDropzone)
          Dropzone.options.myDropzone = {
           maxFiles: 3,
           maxFilesize: 2, // MB
           autoProcessQueue: false,
           init: function () {
            var submitButton = document.querySelector("#submit-all")
            myDropzone = this; // closure

            submitButton.addEventListener("click", function () {
             myDropzone.processQueue(); // Tell Dropzone to process all queued files.
            });
            this.on("success", function (file, responseText) {
             if ($('#image-list').val().length <= 0)
             {
              $('#image-list').val(responseText + ".png");
             }
             else
             {
              $('#image-list').val($('#image-list').val() + "," + responseText + ".png");
             }

            });
            this.on("maxfilesexceeded", function (file) {
             alert("Tối đa upload 3 ảnh thôi nhé!");
            });
            this.on("addedfile", function (file) {

             // Create the remove button
             var removeButton = Dropzone.createElement("<a class='waves-effect waves-light btn red btn-small'>Remove</a>");


             // Capture the Dropzone instance as closure.
             var _this = this;

             // Listen to the click event
             removeButton.addEventListener("click", function (e) {
              // Make sure the button click doesn't submit the form:
              e.preventDefault();
              e.stopPropagation();

              // Remove the file preview.
              _this.removeFile(file);
              // If you want to the delete the file on the server as well,
              // you can do the AJAX request here.
             });

             // Add the button to the file preview element.
             file.previewElement.appendChild(removeButton);
            });
           }
          };
         </script>
        </div>                                
       </div>
       <!-- /Keywords -->
      </div>
     </div>
     <!-- /Meta -->
    </c:when>

    <c:otherwise>
     <sql:query dataSource="${conn}" var="resultproduct">
      SELECT ProductID,ProductName,[Image],SubCategoryName,dbo.usp_ClearHTMLTags([Description]) AS [Description],Stock,UnitPrice  FROM wProduct;
     </sql:query>
     <script>
      <c:if test="${not empty param.responsetext}">
      window.onload = function () {
       Materialize.toast('${param.responsetext}', 4000)
      }
      </c:if>
     </script>
     <form id="myform" action="../functions/db.jsp?action=remove" method="POST">
      <!-- Products -->
      <div class="card">
       <div class="title">
        <h5>Products</h5>
        <div class="btn-group right">
         <a href="?action=add" class="btn btn-small z-depth-0" style="margin-right: 5px;"><i class="mdi mdi-content-add"></i></a>                                
         <a class="btn btn-small red lighten-1 z-depth-0" onclick="document.getElementById('myform').submit()"><i class="mdi mdi-action-delete"></i></a>
        </div>
       </div>
       <div style="padding: 20px;box-shadow: 0 -1px 0 0 rgba(0,0,0,.1);">
        <table class="table table-hover">
         <thead>
          <tr>
           <th>Select</th>
           <th>SKU</th>
           <th>Image</th>
           <th>Product Title</th>
           <th>Stock</th>
           <th>Price</th>
           <th>Status</th>
           <th>Action</th>
          </tr>
         </thead>
         <tbody>
          <c:forEach var="p" items="${resultproduct.rows}">
           <tr>
            <th>
             <input name="selectcheckbox" type="checkbox" id="checkbox-${p.ProductID}" value="${p.ProductID}">
             <label for="checkbox-${p.ProductID}"></label>
            </th>
            <th>#${p.ProductID}</th>
            <td>
             <c:set var="imagetext" value="${p.Image}"/>
             <c:set var="imageitem" value="${fn:split(imagetext, ',')}" />
             <img src="../images/${imageitem[0]}" style="width: 30px;height: 30px;">
            </td>
            <td>
             <strong class="grey-text text-darken-2">${p.ProductName}</strong>
             <br>
             <span class="grey-text"><a href="#"><c:out value="${fn:substring(p.Description, 0, 50)}"/></a></span>
            </td>
            <td>1</td>
            <td>${p.UnitPrice}</td>
            <td class="green-text">
             <c:if test="${p.Stock == 0}">
              Hết hàng 
             </c:if>
             <c:if test="${p.Stock >= 1}">
              Còn hàng
             </c:if>
            </td>
            <td><a href="./product.jsp?action=edit&pid=${p.ProductID}" class="btn btn-small z-depth-0"><i class="mdi mdi-editor-mode-edit"></i></a>
            </td>
           </tr>
          </c:forEach>
         </tbody>
        </table>
       </div>
      </div>
      <!-- /Products -->
     </form>
    </c:otherwise>
   </c:choose>
  </section>
  <script>
   CKEDITOR.replace('ckeditor1');
  </script>
  <%@include file="../script.jsp" %>
 </body>
</html>
