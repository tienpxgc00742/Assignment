<%-- 
    Document   : categories
    Created on : May 17, 2015, 5:06:21 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 </head>
 <body>
  <%@include file="menu.jsp" %>
  <sql:query dataSource="${conn}" var="resultcategory">
   SELECT * FROM wCategory 
  </sql:query>
  <section class="content-wrap">
   <div class="card-panel">
    <h4>Popout</h4>
    <div class="row" style="font-size: 18px;">
     <div class="col l5 s12">
      <ul class="collapsible popout" data-collapsible="accordion">
       <% int num = 1;%>
       <c:forEach var="c" items="${resultcategory.rows}">
        <sql:query dataSource="${conn}" var="result" sql="SELECT * FROM wSubCategory WHERE CategoryName=?">
         <sql:param value="${c.CategoryName}"/>
        </sql:query>
        <li style="margin: 0 0 3px 0;">
         <div class="collapsible-header"><img src="../images/icon/laptop.png" style="margin-top: 10px;  padding-right: 20px;"><span style=" display: block; margin-top: -44px; margin-left: 40px;">${c.CategoryName}</span></div>
         <div class="collapsible-body" style="display: none;margin-left: 12px;">
          <div class="input-field">
           <i class="mdi-communication-chat prefix"></i>
           <textarea id="textarea_icon" class="materialize-textarea" style="font-size: 18px;">${c.CategoryName}</textarea>
           <label for="textarea_icon">Category Name</label>
          </div>
          <!-- DROPDOWN ICON-->
          <span class="green-text text-darken-2">Chọn icon thư mục</span>
          <select id="htmlselect">
           <option value="0" selected="selected" data-imagesrc="../images/icon/desktop.png"> desktop</option>
           <option value="1" data-imagesrc="../images/icon/gamepad.png"> gamepad</option>
           <option value="2" data-imagesrc="../images/icon/gear.png"> gear</option>
           <option value="3" data-imagesrc="../images/icon/laptop.png"> laptop</option>
          </select><br/>
          <% num++;%>
          <!-- DROPDOWN ICON-->
          <span class="red-text text-darken-2">Thư mục con </span><a href="#" class="btn btn-small red lighten-1 z-depth-0" style="margin-bottom: 6px;margin-left: 5px "><i class="mdi mdi-editor-mode-edit"></i></a>
          <div class="divider"></div>
          <c:forEach var="sc" items="${result.rows}">
           <div class="section">
            <h5>${sc.SubCategoryName}</h5>
           </div>
          </c:forEach>   
          <button class="btn" type="submit" name="action" style="margin-left: 480px;margin-bottom: 10px;">
           Submit <i class="mdi-content-send right"></i>
          </button>
         </div>
        </li>
       </c:forEach>
       <script>
        jQuery(document).ready(function ($) {
//                                    $('.collapsible-body a').on("click", function () {
//                                        var text = jQuery('.section h5').html();
//                                        jQuery('.section h5').html("<input id='input_text' type='text' value='" + text + "'>");
//                                        if (jQuery(this).html().indexOf("<div class='input-field'>") != -1)
//                                        {
//                                            
//                                            jQuery('.section h5').html("")
//                                        }
//                                        else
//                                        {
//                                        }
        });
        });</script>
      </ul>
     </div>
     <div class="col l7 s12">
      <!--RIGHT PANEL-->
     </div>
    </div>
   </div>
  </section>
  <script type="text/javascript">
           $('#htmlselect').ddslick({
    imagePosition: "left",
    width: 100,
    showSelectedHTML: true,
    onSelected: function (selectedData) {
     //callback function: do something with selectedData;

    }
   });
  </script>
 </body>
</html>
