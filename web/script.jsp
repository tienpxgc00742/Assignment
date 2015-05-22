<%-- 
    Document   : script
    Created on : May 22, 2015, 3:34:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
    function removeCart(id) {
     if (confirm("Are you sure to remove cart item id " + id + "?"))
     {
      jQuery.ajax({
       type: "GET",
       url: "cart.jsp?action=remove&productid=" + id,
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
</script>
<script type="text/javascript">
    function editCard(id) {
//     jQuery.ajax({
//      type: "GET",
//      url: "cart.jsp?action=edit&productid=" + id + '&qua=' + jQuery(this).val(),
//      success: function (data) {
//       alert(data)
//       var inboxCart = jQuery('.wrapper_inboxCart');
//       var inboxLoading = jQuery('#wraper_ajax');
//       inboxLoading.hide();
//       inboxCart.html("<div class='ajaxcartReponse'><p class='info'>" + data + "</p></div>").show().delay(4000).fadeOut();
//       jQuery("#mycart").load("mycart.jsp #mycart");
//      }
//     });
alert( jQuery(this).val());
    }
    ;
</script>
