<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  <%@include file="header.jsp" %>
 </head>
 <body>
  <c:if test="${param.action eq 'removecart'}">
     <c:remove var="cart" scope="session"/>
 </c:if>
  <main class="main-wrapper">
   <div class="container">
    <div class="container-inner">
     <section class="main-page">
      <div class="main-container col1-layout">
       <div class="main">
        <div class="col-main">
         <div class="cart display-single-price" id="mycart">
          <div class="page-title title-buttons">
           <h1>Shopping Cart</h1> </div>
          <form>
           <input name="form_key" type="hidden" value="bTr413z9F8ade1Xd">
           <table id="shopping-cart-table" class="cart-table data-table">
            <colgroup>
             <col width="1">
             <col width="1">
             <col width="1">
             <col width="1">
             <col width="1">
             <col width="1">
            </colgroup>
            <thead>
             <tr class="first last">
              <th rowspan="1"><span class="nobr">Images</span></th>
              <th rowspan="1">Product name</th>
              <th class="a-center cart-price-head" colspan="1">
               <!--                            <div class="cart-price-placeholder">--><span class="nobr">Price</span>
               <!--                            </div>-->
              </th>
              <th rowspan="1" class="a-center"> Qty </th>
              <th class="a-center cart-total-head" colspan="1">
               <!--                            <div class="cart-total-placeholder">-->Subtotal
               <!--                            </div>-->
              </th>
              <th class="a-center" rowspan="1">&nbsp;</th>
             </tr>
            </thead>
            <tfoot>
             <tr class="first last">
              <td colspan="50" class="a-right cart-footer-actions last">
               <button type="button" onclick="window.location = './mycart.jsp?action=removecart'"  class="button btn-empty"  id="empty_cart_button"><span><span>Empty Cart</span></span>
               </button>
               <button type="button" title="Continue Shopping" class="button btn-continue" onclick="setLocation('')"><span><span>Continue Shopping</span></span>
               </button>
              </td>
             </tr>
            </tfoot>
            <tbody>
             <c:forEach var="item" items="${sessionScope.cart}">
                 <tr class="first last odd">
                  <td class="product-cart-image">
                   <a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html" title="Dummy Product #04" class="product-image"> <img src="./images/${item.image}" width="91" height="90"> </a>
                  </td>
                  <td class="product-cart-info"> 
                   <h2 class="product-name">
                    <a href="#">${item.name}</a>
                   </h2>
                   <div class="product-cart-sku"> ID: ${item.pid} </div>
                  </td>
                  <td class="product-cart-price" data-rwd-label="Price" data-rwd-tax-label="Excl. Tax"> <span class="cart-price">
                    <span class="price">$${item.price}</span> </span>
                  </td>
                  <!-- inclusive price starts here -->
                  <td class="product-cart-actions" data-rwd-label="Qty">
                   <input type="number" value="${item.qua}" min="1" max="10" />
                   <button type="submit" name="update_cart_action" value="update_qty" title="Update" class="button btn-update"><span><span>Update</span></span>
                   </button>
                   <ul class="cart-links"  style="margin-top: 10px">
                    <a onclick="editCard(${item.pid},jQuery(this).parent().parent('td').find('input').val())">Edit</a>
                   </ul>
                  </td>
                  <!--Sub total starts here -->
                  <td class="product-cart-total" data-rwd-label="Subtotal"> <span class="cart-price">

                    <span class="price">$${item.price * item.qua}</span> </span>
                  </td>
                  <td class="a-center product-cart-remove last"> <a onclick="removeCart(${item.pid})" title="Remove Item" class="btn-remove btn-remove2">Remove Item</a> </td>
                 </tr>
             </c:forEach>
            </tbody>
           </table>
          </form>
          <div class="row">
           <div class="col-xs-12 col-sm-4"> </div>
           <div class="col-xs-12 col-sm-4" style="float: right;">
            <div class="totals">
             <div class="totals-title">Total Cart</div>
             <table id="shopping-cart-totals-table">
              <colgroup>
               <col>
               <col width="1">
              </colgroup>
              <tfoot>
               <tr>
                <td style="" class="a-right" colspan="1"> <strong>Grand Total</strong> </td>
                <td style="" class="a-right"> <strong><span class="price">$110.00</span></strong> </td>
               </tr>
              </tfoot>
              <tbody>
               <tr>
                <td style="" class="a-right" colspan="1"> Subtotal </td>
                <td style="" class="a-right"> <span class="price">$110.00</span> </td>
               </tr>
              </tbody>
             </table>
             <ul class="checkout-types bottom">
              <li class="method-checkout-cart-methods-onepage">
               <button type="button" title="Proceed to Checkout" class="button btn-proceed-checkout btn-checkout" onclick="window.location = './checkout.jsp';"><span><span>Proceed to Checkout</span></span>
               </button>
              </li>
             </ul>
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
 </body>

</html>