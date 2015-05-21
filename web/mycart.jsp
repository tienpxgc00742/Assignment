<%-- 
    Document   : mycart
    Created on : May 21, 2015, 2:21:21 PM
    Author     : MrT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  <%@include file="header.jsp" %>
 </head>
 <body>
  <main class="main-wrapper">
   <div class="container">
    <div class="container-inner">
     <section class="main-page">
      <div class="main-container col1-layout">     
       <div class="main">
        <div class="col-main">
         <div class="cart display-single-price">
          <div class="page-title title-buttons">
           <h1>Shopping Cart</h1>
          </div>
          <form action="http://themevast.com/demo/tv_bigboom/index.php/checkout/cart/updatePost/" method="post">
           <input name="form_key" type="hidden" value="bTr413z9F8ade1Xd">
           <table id="shopping-cart-table" class="cart-table data-table">
            <colgroup><col width="1">
             <col width="1">
             <col width="1">
             <col width="1">
             <col width="1">
             <col width="1">

            </colgroup><thead>
             <tr class="first last">
              <th rowspan="1"><span class="nobr">Images</span></th>

              <th rowspan="1">Product name</th>

              <th class="a-center cart-price-head" colspan="1">
               <!--                            <div class="cart-price-placeholder">-->
               <span class="nobr">Price</span>
               <!--                            </div>-->
              </th>

              <th rowspan="1" class="a-center">
               Qty

              </th>

              <th class="a-center cart-total-head" colspan="1">
               <!--                            <div class="cart-total-placeholder">-->
               Subtotal<!--                            </div>-->
              </th>

              <th class="a-center" rowspan="1">&nbsp;</th>

             </tr>
            </thead>
            <tfoot>
             <tr class="first last">
              <td colspan="50" class="a-right cart-footer-actions last">

               <!-- Make this button the first responder rather than empty cart -->
               <button type="submit" style="visibility:hidden;" name="update_cart_action" value="update_qty" title="Update Shopping Cart" class="button btn-update"><span><span>Update Shopping Cart</span></span></button>

               <button type="submit" name="update_cart_action" value="empty_cart" title="Empty Cart" class="button btn-empty" id="empty_cart_button"><span><span>Empty Cart</span></span></button>

               <button type="submit" name="update_cart_action" value="update_qty" title="Update Shopping Cart" class="button btn-update"><span><span>Update Cart</span></span></button>



               <button type="button" title="Continue Shopping" class="button btn-continue" onclick="setLocation('http://themevast.com/demo/tv_bigboom/index.php/')"><span><span>Continue Shopping</span></span></button>
               <!--[if lt IE 8]>
<input type="hidden" id="update_cart_action_container" />
<script type="text/javascript">
//<![CDATA[
Event.observe(window, 'load', function()
{
// Internet Explorer (lt 8) does not support value attribute in button elements
$emptyCartButton = $('empty_cart_button');
$cartActionContainer = $('update_cart_action_container');
if ($emptyCartButton && $cartActionContainer) {
   Event.observe($emptyCartButton, 'click', function()
   {
       $emptyCartButton.setAttribute('name', 'update_cart_action_temp');
       $cartActionContainer.setAttribute('name', 'update_cart_action');
       $cartActionContainer.setValue('empty_cart');
   });
}

});
//]]>
</script>
<![endif]-->
              </td>
             </tr>
            </tfoot>
            <tbody>
             <c:forEach var="item" items="${sessionScope.cart}">
              <tr class="first last odd">
               <td class="product-cart-image">
                <a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html" title="Dummy Product #04" class="product-image">
                 <img src="./images/${item.image}">
                </a>

                <ul class="cart-links">
                 <li>
                  <a href="http://themevast.com/demo/tv_bigboom/index.php/checkout/cart/configure/id/1370/" title="Edit item parameters">Edit</a>
                 </li>

                </ul>
               </td>

               <td class="product-cart-info">

                <a href="http://themevast.com/demo/tv_bigboom/index.php/checkout/cart/delete/id/1370/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/" title="Remove Item" class="btn-remove btn-remove2">Remove Item</a>

                <h2 class="product-name">
                 <a href="http://themevast.com/demo/tv_bigboom/index.php/aliquam-consequat.html">${item.name}</a>
                </h2>

                <div class="product-cart-sku">
                 <span class="label">ID:</span> ${item.pid}        </div>




               </td>


               <td class="product-cart-price" data-rwd-label="Price" data-rwd-tax-label="Excl. Tax">

                <span class="cart-price">
                 <span class="price">$${item.price}</span>                
                </span>

               </td>
               <!-- inclusive price starts here -->
               <td class="product-cart-actions" data-rwd-label="Qty">
                <input type="text" pattern="\d*" name="cart[1370][qty]" value="1" size="4" title="Qty" class="input-text qty" maxlength="12">

                <button type="submit" name="update_cart_action" value="update_qty" title="Update" class="button btn-update"><span><span>Update</span></span>
                </button>

                <ul class="cart-links">
                 <li>
                  <a href="http://themevast.com/demo/tv_bigboom/index.php/checkout/cart/configure/id/1370/" title="Edit item parameters">Edit</a>
                 </li>

                </ul>

               </td>

               <!--Sub total starts here -->
               <td class="product-cart-total" data-rwd-label="Subtotal">
                <span class="cart-price">

                 <span class="price">$110.00</span>                            
                </span>
               </td>
               <td class="a-center product-cart-remove last">
                <a href="http://themevast.com/demo/tv_bigboom/index.php/checkout/cart/delete/id/1370/uenc/aHR0cDovL3RoZW1ldmFzdC5jb20vZGVtby90dl9iaWdib29tL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/" title="Remove Item" class="btn-remove btn-remove2">Remove Item</a>
               </td>
              </tr>
             </c:forEach>
            </tbody>
           </table>
           <script type="text/javascript">decorateTable('shopping-cart-table')</script>
          </form>

          <div class="row">
           <div class="col-xs-12 col-sm-4">  
           </div>
           <div class="col-xs-12 col-sm-4" style="float: right;">
            <div class="totals">
             <div class="totals-title">Total Cart</div>
             <table id="shopping-cart-totals-table">
              <colgroup><col>
               <col width="1">
              </colgroup><tfoot>
               <tr>
                <td style="" class="a-right" colspan="1">
                 <strong>Grand Total</strong>
                </td>
                <td style="" class="a-right">
                 <strong><span class="price">$110.00</span></strong>
                </td>
               </tr>
              </tfoot>
              <tbody>
               <tr>
                <td style="" class="a-right" colspan="1">
                 Subtotal    </td>
                <td style="" class="a-right">
                 <span class="price">$110.00</span>    </td>
               </tr>
              </tbody>
             </table>
             <ul class="checkout-types bottom">
              <li class="method-checkout-cart-methods-onepage">    <button type="button" title="Proceed to Checkout" class="button btn-proceed-checkout btn-checkout" onclick="window.location = 'http://themevast.com/demo/tv_bigboom/index.php/checkout/onepage/';"><span><span>Proceed to Checkout</span></span></button>
              </li>
              <li class="method-checkout-cart-methods-multishipping"><a href="http://themevast.com/demo/tv_bigboom/index.php/checkout/multishipping/" title="Checkout with Multiple Addresses">Checkout with Multiple Addresses</a>
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
  </main>
 </body>
</html>
