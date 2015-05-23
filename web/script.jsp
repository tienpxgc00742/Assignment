<%-- Document : script Created on : May 22, 2015, 3:34:49 PM Author : Administrator --%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<script type="text/javascript">
   function addCart(id) {
         var href = "./functions/cart.jsp?productid=" + id;
         jQuery.ajax({
              type: "GET",
              url: href,
              beforeSend: function () {
                   var wraperLoading = jQuery('#wraper_ajax');
                   wraperLoading.show();
                   wraperLoading.click(function () {
                        wraperLoading.hide();
                   });
              },
              success: function (data) {
                   var inboxCart = jQuery('.wrapper_inboxCart');
                   var inboxLoading = jQuery('#wraper_ajax');
                   inboxLoading.hide();
                   inboxCart.html("<div class='ajaxcartReponse'><p class='info'>" + data + "</p></div>").show().delay(4000).fadeOut();
                   jQuery("#bcart").load("header.jsp #scart");
              }
         });};
    function removeCart(id) {
         if (confirm("Are you sure to remove cart item id " + id + "?")) {
              jQuery.ajax({
                   type: "GET",
                   url: "./functions/cart.jsp?action=remove&productid=" + id,
                   success: function (data) {
                        var inboxCart = jQuery('.wrapper_inboxCart');
                        var inboxLoading = jQuery('#wraper_ajax');
                        inboxLoading.hide();
                        inboxCart.html("<div class='ajaxcartReponse'><p class='info'>" + data + "</p></div>").show().delay(4000).fadeOut();
                        jQuery("#bcart").load("header.jsp #scart");
                        jQuery("#mycart").load("mycart.jsp #mycart");
                   }
              });
         }
    }
    ;

    function editCard(id, qua) {
         jQuery.ajax({
              type: "GET",
              url: "./functions/cart.jsp?action=edit&productid=" + id + '&qua=' + qua,
              success: function (data) {
                   var inboxCart = jQuery('.wrapper_inboxCart');
                   var inboxLoading = jQuery('#wraper_ajax');
                   inboxLoading.hide();
                   inboxCart.html("<div class='ajaxcartReponse'><p class='info'>" + data + "</p></div>").show().delay(4000).fadeOut();
                   jQuery("#bcart").load("header.jsp #scart");
                   jQuery("#mycart").load("mycart.jsp #mycart");
              }
         });
    }
    ;
    $(document).ready(function () {
         $('.slider1').bxSlider({
              auto: 0,
              speed: 600,
              controls: 1,
              pager: 0,
              maxSlides: 2,
              slideWidth: 220, //infiniteLoop: false,
              moveSlides: 1,
              slideMargin: 20,
              autoHover: true
         });
    });
</script>