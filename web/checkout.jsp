<%-- 
    Document   : newjsp
    Created on : May 22, 2015, 10:03:37 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  autoFlush="true" buffer="1094kb"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  <%@include file="header.jsp" %>
 </head>
 <c:choose>
     <c:when test="${empty sessionScope['6c6f67696e75736572']}">
         <c:redirect url="./login.jsp" >
             <c:param name="page" value="${pageContext.request.servletPath}" />
         </c:redirect>
     </c:when>

     <c:otherwise>

         <body>
          <main class="main-wrapper">
           <div class="container">
            <div class="container-inner">
             <c:choose>
             <c:when test="${param.page eq 'success'}">
                 <section class="main-page">
                  <div class="main-container col1-layout">     
                   <div class="main">
                    <div class="col-main">
                     <div class="themes-demo-wrap">
                      <div class="page-title">
                       <h1>Your order has been received.</h1>
                      </div>
                      <h2 class="sub-title">Thank you for your purchase!</h2>
                      <p>Your order # is: <a href="#">${sessionScope.oid}</a>.</p>
                      <p>You will receive an order confirmation email with details of your order and a link to track its progress.</p>
                      <div class="buttons-set">
                       <button type="button" class="button" title="Continue Shopping" onclick="window.location = './productlist.jsp'"><span><span>Continue Shopping</span></span></button>
                      </div>
                     </div>
                    </div>
                   </div>
                 </section>
             </c:when>
             <c:otherwise>
                 <section class="main-page">
                  <div class="main-container col2-right-layout">                     
                   <div class="main">
                    <div class="row">
                     <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                      <div class="col-main">
                       <div class="page-title">
                        <h1>Checkout</h1>
                       </div>
                       <ol class="opc" id="checkoutSteps">
                        <form action="./functions/cart.jsp" method="GET">
                         <input type="hidden" name="action" value="checkout"/>
    <!--                     <input type="hidden" name="account" value="${sessionScope['6c6f67696e75736572']}"/>-->
                         <li id="opc-billing" class="section allow active">
                          <div class="step-title">
                           <span class="number">1</span>
                           <h2>Billing Information</h2>
                           <a href="http://themevast.com/demo/tv_bigboom/index.php/checkout/onepage/#">Edit</a>
                          </div>
                          <div id="checkout-step-billing" class="step a-item">
                           <fieldset>
                            <ul class="form-list">
                             <li id="billing-new-address-form">
                              <fieldset class="">
                               <ul>
                                <li class="fields">
                                 <div class="customer-name">
                                  <div class="field name-firstname">
                                   <label for="billing:firstname" class="required"><em>*</em>Họ tên</label>
                                   <div class="input-box">
                                    <input type="text"  name="ofullname"  title="First Name" maxlength="255" class="input-text required-entry validation-passed" required>
                                   </div>
                                  </div>
                                 </div>
                                </li>
                                <li class="wide">
                                 <label for="billing:street1" class="required"><em>*</em>Địa chỉ (số nhà, đường, tỉnh)</label>
                                 <div class="input-box">
                                  <input type="text" title="Address" name="oaddress"  class="input-text  required-entry validation-passed" required>
                                 </div>
                                </li>
                                <li class="fields">
                                 <div class="field">
                                  <label for="billing:postcode" class="required"><em>*</em>Số điện thoại</label>
                                  <div class="input-box">
                                   <input type="number" name="ophone"  class="input-text validate-zip-international  required-entry validation-passed" required>
                                  </div>
                                 </div>
                                </li>
                               </ul>
                              </fieldset>
                             </li>
                            </ul>
                           </fieldset>
                          </div>
                         </li>
                         <li id="opc-payment" class="section allow">
                          <div class="step-title">
                           <span class="number">2</span>
                           <h2>Payment Information</h2>
                           <a href="#">Edit</a>
                          </div>
                          <div id="checkout-step-payment" class="step a-item" style="display: none;">
                           <fieldset>
                            <dt>
                            <input type="radio" name="payment" value="1"  checked/> <label for="p_method_checkmo">Thanh toán tại nơi giao hàng</label>
                            </dt>
                            <dt>
                            <input type="radio" name="payment" value="2" /> <label for="p_method_checkmo">Thanh toán bằng tài khoản</label>
                            </dt>
                           </fieldset>
                           <div class="buttons-set" id="payment-buttons-container">
                            <p class="required">* Required Fields</p>
                           </div>
                          </div>
                         </li>
                         <li id="opc-review" class="section allow active">
                          <div class="step-title">
                           <span class="number">3</span>
                           <h2>Order Review</h2>
                           <a href="#">Edit</a>
                          </div>
                          <div id="checkout-step-review" class="step a-item" style="display: none;">
                           <div class="order-review" id="checkout-review-load">    
                            <div id="checkout-review-table-wrapper">
                             <table class="data-table" id="checkout-review-table">
                              <colgroup><col>
                               <col width="1">
                               <col width="1">
                               <col width="1">
                              </colgroup>
                              <thead>
                               <tr class="first last">
                                <th rowspan="1">Product Name</th>
                                <th colspan="1" class="a-center">Price</th>
                                <th rowspan="1" class="a-center">Qty</th>
                                <th colspan="1" class="a-center">Subtotal</th>
                               </tr>
                              </thead>

                              <!--                 Cart Item List-->
                              <tbody>
                               <c:forEach var="item" items="${sessionScope.cart}">
                                   <tr class="first last odd">
                                    <td><h3 class="product-name">${item.name}</h3>
                                    </td>
                                    <td class="a-right">
                                     <span class="cart-price">
                                      <span class="price">${item.price}</span>            
                                     </span>
                                    </td>
                                    <td class="a-center">${item.qua}</td>
                                    <!-- sub total starts here -->
                                    <td class="a-right last">
                                     <span class="cart-price">
                                      <span class="price">$${item.qua * item.price}</span>            
                                     </span>
                                    </td>
                                   </tr>
                                   <c:set var="imultiplication" value="${item.qua * item.price}"/>
                                   <c:set var="itotal" value="${itotal + imultiplication}"/>
                               </c:forEach>
                              </tbody>
                              <tfoot>
                               <tr class="last">
                                <td style="" class="a-right" colspan="3">
                                 <strong>Grand Total</strong>
                                </td>
                                <td style="" class="a-right last">
                                 <input type="hidden" name="ototal" value="${itotal}"/>
                                 <strong><span class="price">$${itotal}</span></strong>
                                </td>
                               </tr>
                              </tfoot>
                             </table>
                            </div>

                            <div id="checkout-review-submit">
                             <div class="buttons-set" id="review-buttons-container">
                              <button type="submit" title="Place Order" class="button btn-checkout"><span><span>Submit Order</span></span></button>
                             </div>
                            </div>
                           </div>
                          </div>
                         </li>
                        </form>
                       </ol>

                       <script>
                           jQuery('.step-title').click(function () {
                                var id = jQuery(this).parent().attr('id').replace('opc-', '');
                                var div = '#checkout-step-' + id;
                                if (jQuery(div).is(":hidden"))
                                {
                                     jQuery('.a-item').hide();
                                     jQuery(div).show();
                                }
                                else
                                {
                                     jQuery(div).hide();
                                }
                           });
                       </script>
                      </div>
                     </div>
                     <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                      <div class="col-right sidebar"><div id="checkout-progress-wrapper"><div class="block block-progress opc-block-progress">
                         <div class="block-title">
                          <strong><span>Your Checkout Progress</span></strong>
                         </div>
                         <div class="block-content">
                          <dl>
                           <div id="billing-progress-opcheckout">
                            <dt>
                            Billing Address</dt>
                           </div>

                           <div id="shipping-progress-opcheckout">
                            <dt>
                            Shipping Address</dt>

                           </div>

                           <div id="shipping_method-progress-opcheckout">
                            <dt>
                            Shipping Method</dt>

                           </div>

                           <div id="payment-progress-opcheckout">
                            <dt>
                            Payment Method</dt>

                           </div>
                          </dl>
                         </div>
                        </div></div></div>
                     </div>
                    </div>
                   </div>
                  </div>
                 </section>
             </c:otherwise>
             </c:choose>
            </div>
           </div>
          </main>
         </body>
     </c:otherwise>
 </c:choose>
</html>
