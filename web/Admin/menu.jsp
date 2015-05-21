<%-- 
    Document   : menu
    Created on : May 17, 2015, 1:44:17 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%@include file="../resource.jsp" %>
        <%@include file="header.jsp" %>
        <aside class="yaybar yay-shrink yay-hide-to-small yay-gestures yay-light yay-static">
            <div class="top">
                <div>
                    <!-- Sidebar toggle -->
                    <a href="dashboard.jsp" class="yay-toggle">
                        <div class="burg1"></div>
                        <div class="burg2"></div>
                        <div class="burg3"></div>
                    </a>
                    <!-- Sidebar toggle -->
                    <!-- Logo -->
                    <a href="dashboard.jsp" class="brand-logo">
                        <img src="./Con - Admin Dashboard with Material Design_files/logo-white.png" alt="Con">
                    </a>
                    <!-- /Logo -->
                </div>
            </div>
            <div class="nano has-scrollbar">
                <div class="nano-content" tabindex="0" style="right: -17px;">
                    <ul>
                        <li>
                            <a href="../index.jsp" class="waves-effect waves-blue"><i class="fa fa-undo"></i> Shopping Site <span class="badge new"></span></a>
                        </li>
                        <li class="label">MENU</li>
                        <li>
                            <a class="yay-sub-toggle waves-effect waves-blue" href="asd"><i class="fa fa-envelope"></i> Mailbox<span class="yay-collapse-icon fa fa-caret-right"></span></a>
                        </li>
                        <li class="open">
                            <a class="yay-sub-toggle waves-effect waves-blue"><i class="fa fa-shopping-cart"></i> eCommerce<span class="yay-collapse-icon fa fa-caret-up"></span></a>
                            <ul class="nav navbar-nav">
                                <li class="active"><a class="waves-effect waves-blue" href="dashboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
                                </li>
                                <li><a class="waves-effect waves-blue" href="product.jsp"><i class="fa fa-tags"></i> Products</a>
                                </li>
                                <li><a class="waves-effect waves-blue" href="order.jsp"><i class="fa fa-cart-plus"></i> Orders</a>
                                </li> 
                               <li><a class="waves-effect waves-blue" href="customer.jsp"><i class="fa fa-users"></i> Customers</a>
                                </li>
                                <li><a class="waves-effect waves-blue" href="categories.jsp"><i class="fa fa-building-o"></i> Categories</a>
                                </li>
                            </ul>
                        </li>
                        <script type="text/javascript">
                            var url = window.location;
                            var item = $('.open li a').filter(function () {
                                return this.href == url;
                            });
                            $('.open li').removeClass('active');
                            var $parent = item.parent();
                            if (!$parent.hasClass('active')) {
                                $parent.addClass('active');
                            }
                            e.preventDefault();
                        </script>
                        <li class="label">Stats</li>
                        <li class="content">
                            <span><i class="fa fa-spinner"></i> Server Load</span>
                            <div class="progress small light-green lighten-4">
                                <div class="light-green accent-5" style="width: 37%"></div>
                            </div>
                            <span><i class="fa fa-thumbs-o-up"></i> User Satisfaction</span>
                            <div class="progress small">
                                <div style="width: 91%"></div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="nano-pane"><div class="nano-slider" style="height: 617px; transform: translate(0px, 0px);"></div></div></div>
        </aside>
    </body>
</html>
