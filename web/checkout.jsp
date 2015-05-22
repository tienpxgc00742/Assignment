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
                    <form action="x.jsp" method="GET">
                     <input type="hidden" name="account" value="${sessionScope['6c6f67696e75736572']}"/>
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
                                <input type="text"  name="ofullname"  title="First Name" maxlength="255" class="input-text required-entry validation-passed">
                               </div>
                              </div>
                             </div>
                            </li>
                            <li class="wide">
                             <label for="billing:street1" class="required"><em>*</em>Địa chỉ (số nhà, đường, tỉnh)</label>
                             <div class="input-box">
                              <input type="text" title="Address" name="oaddress"  class="input-text  required-entry validation-passed">
                             </div>
                            </li>
                            <li class="fields">
                             <div class="field">
                              <label for="billing:postcode" class="required"><em>*</em>Số điện thoại</label>
                              <div class="input-box">
                               <input type="number" name="ophone"  class="input-text validate-zip-international  required-entry validation-passed">
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
                        <input type="radio" name="payment" value="1"  /> <label for="p_method_checkmo">Thanh toán tại nơi giao hàng</label>
                        </dt>
                        <dt>
                        <input type="radio" name="payment" value="2" /> <label for="p_method_checkmo">Thanh toán bằng tài khoản</label>
                        </dt>
                       </fieldset>
                       <div class="tool-tip" id="payment-tool-tip" style="display:none;">
                        <div class="btn-close"><a href="#" id="payment-tool-tip-close" title="Close">Close</a></div>
                        <div class="tool-tip-content"><img src="http://themevast.com/demo/tv_bigboom/skin/frontend/base/default/images/cvv.gif" alt="Card Verification Number Visual Reference" title="Card Verification Number Visual Reference"></div>
                       </div>
                       <div class="buttons-set" id="payment-buttons-container">
                        <p class="required">* Required Fields</p>
                        <p class="back-link"><a href="#" onclick="checkout.back();
                             return false;"><small>« </small>Back</a></p>
                        <button type="button" class="button" onclick="payment.save()"><span><span>Continue</span></span></button>
                        <span class="please-wait" id="payment-please-wait" style="display: none;">
                         <img src="http://themevast.com/demo/tv_bigboom/skin/frontend/tv_bigboom_package/tv_bigboom1/images/opc-ajax-loader.gif" alt="Loading next step..." title="Loading next step..." class="v-middle"> Loading next step...    </span>
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
                          <tfoot>
                           <tr class="first">
                            <td style="" class="a-right" colspan="3">Subtotal</td>
                            <td style="" class="a-right last">
                             <span class="price">$999.00</span></td>
                           </tr>
                           <tr>
                            <td style="" class="a-right" colspan="3">
                             Shipping &amp; Handling (Flat Rate - Fixed)</td>
                            <td style="" class="a-right last">
                             <span class="price">$5.00</span></td>
                           </tr>
                           <tr class="last">
                            <td style="" class="a-right" colspan="3">
                             <strong>Grand Total</strong>
                            </td>
                            <td style="" class="a-right last">
                             <strong><span class="price">$1,004.00</span></strong>
                            </td>
                           </tr>
                          </tfoot>
                          <!--                 Cart Item List-->
                          <tbody>
                           <c:forEach var="item" items="${sessionScope['6c6f67696e75736572']}">
                               <tr class="first last odd">
                                <td><h3 class="product-name">Dummy Product #03</h3>
                                </td>
                                <td class="a-right">
                                 <span class="cart-price">
                                  <span class="price">$999.00</span>            
                                 </span>
                                </td>
                                <td class="a-center">1</td>
                                <!-- sub total starts here -->
                                <td class="a-right last">
                                 <span class="cart-price">
                                  <span class="price">$999.00</span>            
                                 </span>
                                </td>
                               </tr>
                           </c:forEach>
                          </tbody>
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
            </div>
           </div>
          </main>
         </body>
     </c:otherwise>
 </c:choose>
</html>
