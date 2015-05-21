<%-- 
    Document   : dashboard
    Created on : May 17, 2015, 1:35:02 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <!-- Main Content -->
        <section class="content-wrap ecommerce-dashboard">


            <!-- Breadcrumb -->
            <div class="ecommerce-title">

                <div class="row">
                    <div class="col s12 m9 l10">
                        <!--h1>@@title</h1-->
                        <nav>
                            <ul class="left">
                                <li class="active"><a href="./Con - Admin Dashboard with Material Design_files/Con - Admin Dashboard with Material Design.html">Dashboard</a>
                                </li>
                                <li><a href="http://html.nkdev.info/_con/ecommerce-products.html">Products</a>
                                </li>
                                <li><a href="http://html.nkdev.info/_con/ecommerce-orders.html">Orders</a>
                                </li>
                                <li><a href="http://html.nkdev.info/_con/ecommerce-customers.html">Customers</a>
                                </li>
                                <li><a href="http://html.nkdev.info/_con/ecommerce-settings.html">Categories</a>
                                </li>
                            </ul>
                        </nav>

                    </div>
                    <div class="col s12 m3 l2 right-align">
                        <a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#!" class="btn grey lighten-3 grey-text z-depth-0 chat-toggle"><i class="fa fa-comments"></i></a>
                    </div>
                </div>

            </div>
            <!-- /Breadcrumb -->


            <!-- Stats Panels -->
            <div class="row sortable">
                <div class="col l3 m6 s12">
                    <div class="card-panel stats-card purple lighten-2 white-text">
                        <i class="fa fa-line-chart"></i>
                        <span class="count">38</span>
                        <div class="name">Sales Today</div>
                    </div>
                </div>
                <div class="col l3 m6 s12">
                    <div class="card-panel stats-card indigo lighten-2 white-text">
                        <i class="fa fa-money"></i>
                        <span class="count">$13,547</span>
                        <div class="name">Earnings Today</div>
                    </div>
                </div>
                <div class="col l3 m6 s12">
                    <div class="card-panel stats-card teal lighten-2 white-text">
                        <i class="fa fa-trophy"></i>
                        <span class="count">25,345</span>
                        <div class="name">Total Sales</div>
                    </div>
                </div>
                <div class="col l3 m6 s12">
                    <div class="card-panel stats-card red lighten-2 white-text">
                        <i class="fa fa-bar-chart"></i>
                        <span class="count">$1,346,342</span>
                        <div class="name">Total Earnings</div>
                    </div>
                </div>
            </div>
            <!-- /Stats Panels -->


            <!-- Revenue -->
            <div class="row">
                <div class="col s12">
                    <div class="card-panel">
                        <div class="col s12 l9">
                            <h5>Year Revenue</h5>
                            <div id="revenueLineChart" style="height: 250px; padding: 0px; position: relative; margin-top: 25px;"><canvas class="flot-base" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1175px; height: 250px;" width="1175" height="250"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 19px; text-align: center;">Jan</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 122px; text-align: center;">Feb</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 225px; text-align: center;">Mar</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 329px; text-align: center;">Apr</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 431px; text-align: center;">May</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 536px; text-align: center;">Jun</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 641px; text-align: center;">Jul</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 742px; text-align: center;">Aug</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 846px; text-align: center;">Sep</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 951px; text-align: center;">Oct</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 1053px; text-align: center;">Nov</div><div style="position: absolute; max-width: 97px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 1157px; text-align: center;">Dec</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div style="position: absolute; top: 227px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">400</div><div style="position: absolute; top: 207px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">500</div><div style="position: absolute; top: 186px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">600</div><div style="position: absolute; top: 166px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">700</div><div style="position: absolute; top: 145px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">800</div><div style="position: absolute; top: 125px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">900</div><div style="position: absolute; top: 104px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1000</div><div style="position: absolute; top: 84px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1100</div><div style="position: absolute; top: 63px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1200</div><div style="position: absolute; top: 43px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1300</div><div style="position: absolute; top: 22px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1400</div><div style="position: absolute; top: 2px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1500</div></div></div><canvas class="flot-overlay" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1175px; height: 250px;" width="1175" height="250"></canvas><div class="legend"><table style="position: absolute; top: 13px; right: 15px; font-size: smaller; color: rgb(84, 84, 84); margin-top: -35px; width: auto;"><tbody><tr style="display: block; float: left;"><td class="legendColorBox" style="padding: 5px;"><div style="border:1px solid #fff;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(171,71,188);overflow:hidden"></div></div></td><td class="legendLabel" style="padding: 5px;"><a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#" onclick="togglePlot(0);
                                    return false;" style="color: inherit">Phones</a></td></tr><tr style="display: block; float: left;"><td class="legendColorBox" style="padding: 5px;"><div style="border:1px solid #fff;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(92,107,192);overflow:hidden"></div></div></td><td class="legendLabel" style="padding: 5px;"><a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#" onclick="togglePlot(1);
                                            return false;" style="color: inherit">Tablets</a></td></tr><tr style="display: block; float: left;"><td class="legendColorBox" style="padding: 5px;"><div style="border:1px solid #fff;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(38,166,154);overflow:hidden"></div></div></td><td class="legendLabel" style="padding: 5px;"><a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#" onclick="togglePlot(2);
                                                    return false;" style="color: inherit">Watches</a></td></tr><tr style="display: block; float: left;"><td class="legendColorBox" style="padding: 5px;"><div style="border:1px solid #fff;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(239,83,80);overflow:hidden"></div></div></td><td class="legendLabel" style="padding: 5px;"><a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#" onclick="togglePlot(3);
                                                            return false;" style="color: inherit">TVs</a></td></tr></tbody></table></div></div>
                        </div>
                        <div class="col s12 l3">
                            <h5>Today Revenue</h5>
                            <div id="revenueBarChart" style="height: 250px; padding: 0px; position: relative; margin-top: 25px;"><canvas class="flot-base" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 380px; height: 250px;" width="380" height="250"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div style="position: absolute; max-width: 95px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 34px; text-align: center;">Phones</div><div style="position: absolute; max-width: 95px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 129px; text-align: center;">Tablets</div><div style="position: absolute; max-width: 95px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 222px; text-align: center;">Watches</div><div style="position: absolute; max-width: 95px; top: 238px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 327px; text-align: center;">TVs</div></div><div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div style="position: absolute; top: 227px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 16px; text-align: right;">0</div><div style="position: absolute; top: 199px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">200</div><div style="position: absolute; top: 171px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">400</div><div style="position: absolute; top: 143px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">600</div><div style="position: absolute; top: 115px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 5px; text-align: right;">800</div><div style="position: absolute; top: 86px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1000</div><div style="position: absolute; top: 58px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1200</div><div style="position: absolute; top: 30px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1400</div><div style="position: absolute; top: 2px; font-style: normal; font-variant: normal; font-weight: 400; font-stretch: normal; font-size: 10px; line-height: 12px; font-family: Roboto, sans-serif; color: rgb(165, 165, 165); left: 0px; text-align: right;">1600</div></div></div><canvas class="flot-overlay" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 380px; height: 250px;" width="380" height="250"></canvas></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Revenue -->


            <div class="row">
                <div class="col s12 l9">
                    <div class="card">

                        <!-- Popular -->
                        <div class="title">
                            <h5>Popular</h5>
                        </div>
                        <div class="content">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Product Title</th>
                                        <th>Stock</th>
                                        <th class="right-align">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>
                                            <img src="./Con - Admin Dashboard with Material Design_files/ecommerce-apple-iphone-30x30.jpg" alt="Apple iPhone 6">
                                        </th>
                                        <td>
                                            <strong>Apple iPhone 6</strong>
                                            <div class="grey-text">2x1400 MHz, 64 Gb, 1024 Mb, 4.7", IPS, 1334x750, Cam 8 MP, 3G, 4G, BT, Wi-Fi, GPS, 1810 mAh</div>
                                        </td>
                                        <td>765</td>
                                        <td class="right-align">$699.00</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <img src="./Con - Admin Dashboard with Material Design_files/ecommerce-apple-macbook-30x30.jpg" alt="Apple Macbook Air Mid 14">
                                        </th>
                                        <td>
                                            <strong>Apple Macbook Air Mid 14</strong>
                                            <div class="grey-text">WXGA+, 1440x900, TN+film, Intel Core i5 4260U, 2x1400 MHz, RAM 4 Gb, SSD 512 Gb, Intel HD 5000, Wi-Fi, BT, Mac OS X</div>
                                        </td>
                                        <td>400</td>
                                        <td class="right-align">$1,299.00</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <img src="./Con - Admin Dashboard with Material Design_files/ecommerce-apple-watch-30x30.jpg" alt="Apple Watch">
                                        </th>
                                        <td>
                                            <strong>Apple Watch</strong>
                                            <div class="grey-text">No Description</div>
                                        </td>
                                        <td>1184</td>
                                        <td class="right-align">$449.00</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <img src="./Con - Admin Dashboard with Material Design_files/ecommerce-apple-imac-30x30.jpg" alt="Apple iMac">
                                        </th>
                                        <td>
                                            <strong>Apple iMac 27"</strong>
                                            <div class="grey-text">Intel Core i5 4670, 4x3400 MHz, IPS/2560х1440, 8 Gb, 1 Tb, NVIDIA GeForce GT 775M, Wi-Fi, Ethernet, Mac OS X</div>
                                        </td>
                                        <td>217</td>
                                        <td class="right-align">$1,799.00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- /Popular -->

                    </div>
                </div>
                <div class="col s12 l3">
                    <div class="card">
                        <!-- Top Geographic -->
                        <div class="title">
                            <h5>Top Geographic</h5>
                        </div>
                        <div class="content">
                            <table class="table table-hover">
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/in.png" alt="India">  India</td>
                                        <td class="right-align">
                                            <strong>1,795</strong>  <small>(11.57%)</small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/us.png" alt="Unated States">  Unated States</td>
                                        <td class="right-align">
                                            <strong>1,773</strong>  <small>(11.43%)</small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/br.png" alt="Brazil">  Brazil</td>
                                        <td class="right-align">
                                            <strong>883</strong>  <small>(5.69%)</small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/tr.png" alt="Turkey">  Turkey</td>
                                        <td class="right-align">
                                            <strong>871</strong>  <small>(5.61%)</small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/ru.png" alt="Russia">  Russia</td>
                                        <td class="right-align">
                                            <strong>829</strong>  <small>(5.34%)</small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/de.png" alt="Germany">  Germany</td>
                                        <td class="right-align">
                                            <strong>485</strong>  <small>(3.13%)</small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/fr.png" alt="France">  France</td>
                                        <td class="right-align">
                                            <strong>473</strong>  <small>(3.05%)</small>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="./Con - Admin Dashboard with Material Design_files/it.png" alt="Italy">  Italy</td>
                                        <td class="right-align">
                                            <strong>356</strong>  <small>(2.29%)</small>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- /Top Geographic -->
                    </div>
                </div>
            </div>

        </section>
        <!-- /Main Content -->

        <!-- Search Bar -->
        <div class="search-bar">
            <div class="layer-overlay" style="position: absolute; width: 100%; height: 100%; z-index: 0; transform: scale(1); background: none;"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"><g><circle cx="0" cy="0" r="0" fill="rgb(255, 255, 255)"></circle></g></svg></div>
            <div class="layer-content" style="z-index: 2; background: none;">
                <form action="http://html.nkdev.info/_con/ecommerce-dashboard.html#!">
                    <!-- Header -->
                    <a class="search-bar-toggle grey-text text-darken-2" href="http://html.nkdev.info/_con/ecommerce-dashboard.html#!"><i class="mdi-navigation-close"></i></a>

                    <!-- Search Input -->
                    <div class="input-field">
                        <i class="mdi-action-search prefix active"></i>
                        <input type="text" name="con-search" placeholder="Search...">
                    </div>

                    <!-- Search Results -->
                    <div class="search-results">

                        <div class="row">
                            <div class="col s12 l4">
                                <h4>Users</h4>

                                <div class="each-result">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user2.jpg" alt="Felecia Castro" class="circle photo">
                                    <div class="title">Felecia Castro</div>
                                    <div class="label">Content Manager</div>
                                </div>

                                <div class="each-result">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user3.jpg" alt="Max Brooks" class="circle photo">
                                    <div class="title">Max Brooks</div>
                                    <div class="label">Programmer</div>
                                </div>

                                <div class="each-result">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user4.jpg" alt="Patsy Griffin" class="circle photo">
                                    <div class="title">Patsy Griffin</div>
                                    <div class="label">Support</div>
                                </div>

                                <div class="each-result">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user6.jpg" alt="Vernon Garrett" class="circle photo">
                                    <div class="title">Vernon Garrett</div>
                                    <div class="label">Photographer</div>
                                </div>
                            </div>
                            <div class="col s12 l4">
                                <h4>Articles</h4>

                                <div class="each-result">
                                    <div class="icon circle blue white-text">MD</div>
                                    <div class="title">Material Design</div>
                                    <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi consequatur debitis veritatis dolorum, enim libero!</div>
                                </div>

                                <div class="each-result">
                                    <div class="icon circle teal white-text">
                                        <i class="fa fa-dashboard"></i>
                                    </div>
                                    <div class="title">Admin Dashboard</div>
                                    <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi consequatur debitis veritatis dolorum, enim libero!</div>
                                </div>

                                <div class="each-result">
                                    <div class="icon circle orange white-text">RD</div>
                                    <div class="title">Responsive Design</div>
                                    <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi consequatur debitis veritatis dolorum, enim libero!</div>
                                </div>

                                <div class="each-result">
                                    <div class="icon circle red white-text">
                                        <i class="fa fa-tablet"></i>
                                    </div>
                                    <div class="title">Mobile First</div>
                                    <div class="label nowrap">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi consequatur debitis veritatis dolorum, enim libero!</div>
                                </div>
                            </div>
                            <div class="col s12 l4">
                                <h4>Posts</h4>

                                <div class="no-result">No results were found ;(</div>
                            </div>
                        </div>

                    </div>

                </form>
            </div>
        </div>
        <!-- /Search Bar -->



        <!--
        Chat
          .chat-light - light color scheme
        -->
        <div class="chat">
            <div class="layer-overlay" style="position: absolute; width: 100%; height: 100%; z-index: 0; transform: scale(1); background: none;"><svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"><g><circle cx="0" cy="0" r="0" fill="rgb(53, 56, 76)"></circle></g></svg></div>

            <div class="layer-content" style="z-index: 2; background: none;">

                <!-- Contacts -->
                <div class="contacts">
                    <!-- Top Bar -->
                    <div class="topbar">
                        <a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#!" class="text">Chat</a>
                        <a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
                    </div>
                    <!-- /Top Bar -->

                    <div class="nano has-scrollbar">
                        <div class="nano-content" tabindex="0" style="right: -17px;">

                            <span class="label">Online</span>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user2.jpg" alt="Felecia Castro" class="circle photo">

                                <div class="name">Felecia Castro</div>
                                <div class="status">Lorem status</div>

                                <div class="online"><i class="green-text fa fa-circle"></i>
                                </div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user3.jpg" alt="Max Brooks" class="circle photo">

                                <div class="name">Max Brooks</div>
                                <div class="status">Lorem status</div>

                                <div class="online"><i class="green-text fa fa-circle"></i>
                                </div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user4.jpg" alt="Patsy Griffin" class="circle photo">

                                <div class="name">Patsy Griffin</div>
                                <div class="status">Lorem status</div>

                                <div class="online"><i class="green-text fa fa-circle"></i>
                                </div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user5.jpg" alt="Chloe Morgan" class="circle photo">

                                <div class="name">Chloe Morgan</div>
                                <div class="status">Lorem status</div>

                                <div class="online"><i class="green-text fa fa-circle"></i>
                                </div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user6.jpg" alt="Vernon Garrett" class="circle photo">

                                <div class="name">Vernon Garrett</div>
                                <div class="status">Lorem status</div>

                                <div class="online"><i class="yellow-text fa fa-circle"></i>
                                </div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user7.jpg" alt="Greg Mcdonalid" class="circle photo">

                                <div class="name">Greg Mcdonalid</div>
                                <div class="status">Lorem status</div>

                                <div class="online"><i class="yellow-text fa fa-circle"></i>
                                </div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user8.jpg" alt="Christian Jackson" class="circle photo">

                                <div class="name">Christian Jackson</div>
                                <div class="status">Lorem status</div>

                                <div class="online"><i class="yellow-text fa fa-circle"></i>
                                </div>
                            </div>


                            <span class="label">Offline</span>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user9.jpg" alt="Willie Kelly" class="circle photo">

                                <div class="name">Willie Kelly</div>
                                <div class="status">Lorem status</div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user10.jpg" alt="Jenny Phillips" class="circle photo">

                                <div class="name">Jenny Phillips</div>
                                <div class="status">Lorem status</div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user11.jpg" alt="Darren Cunningham" class="circle photo">

                                <div class="name">Darren Cunningham</div>
                                <div class="status">Lorem status</div>
                            </div>

                            <div class="user">
                                <img src="./Con - Admin Dashboard with Material Design_files/user12.jpg" alt="Sandra Cole" class="circle photo">

                                <div class="name">Sandra Cole</div>
                                <div class="status">Lorem status</div>
                            </div>

                        </div>
                        <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div>
                </div>
                <!-- /Contacts -->

                <!-- Messages -->
                <div class="messages">

                    <!-- Top Bar with back link -->
                    <div class="topbar">
                        <a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#!" class="chat-toggle"><i class="mdi-navigation-close"></i></a>
                        <a href="http://html.nkdev.info/_con/ecommerce-dashboard.html#!" class="chat-back"><i class="mdi-hardware-keyboard-arrow-left"></i> Back</a>
                    </div>
                    <!-- /Top Bar with back link -->

                    <!-- All messages list -->
                    <div class="list">
                        <div class="nano scroll-bottom has-scrollbar">
                            <div class="nano-content" tabindex="0" style="right: -17px;">

                                <div class="date">Monday, Feb 23, 8:23 pm</div>

                                <div class="from-me">
                                    Hi, Felicia.
                                    <br>How are you?
                                </div>

                                <div class="clear"></div>

                                <div class="from-them">
                                    <img src="../images/image-1.png" class="circle photo">Hi! I am good!
                                </div>

                                <div class="clear"></div>

                                <div class="from-me">
                                    Glad to see you :)
                                    <br>This long text is intended to show how the chat will display it.
                                </div>

                                <div class="clear"></div>

                                <div class="from-them">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user2.jpg" alt="John Doe" class="circle photo">Also, we will send the longest word to show how it will fit in the chat window: <strong>Pneumonoultramicroscopicsilicovolcanoconiosis</strong>
                                </div>

                                <div class="date">Friday, Mar 10, 5:07 pm</div>

                                <div class="from-me">
                                    Hi again!
                                </div>

                                <div class="clear"></div>

                                <div class="from-them">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user2.jpg" alt="John Doe" class="circle photo">Hi! Glad to see you.
                                </div>

                                <div class="clear"></div>

                                <div class="from-me">
                                    I want to add you in my Facebook.
                                </div>

                                <div class="clear"></div>

                                <div class="from-me">
                                    Can you give me your page?
                                </div>

                                <div class="clear"></div>

                                <div class="from-them">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user2.jpg" alt="John Doe" class="circle photo">I do not use Facebook. But you can follow me in Twitter.
                                </div>

                                <div class="clear"></div>

                                <div class="from-me">
                                    It's good idea!
                                </div>

                                <div class="clear"></div>

                                <div class="from-them">
                                    <img src="./Con - Admin Dashboard with Material Design_files/user2.jpg" alt="John Doe" class="circle photo">You can find me here - <a href="https://twitter.com/nkdevv">https://twitter.com/nkdevv</a>
                                </div>

                            </div>
                            <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div>
                    </div>
                    <!-- /All messages list -->

                    <!-- Send message -->
                    <div class="send">
                        <form action="http://html.nkdev.info/_con/ecommerce-dashboard.html#!">
                            <div class="input-field">
                                <input id="chat-message" type="text" name="chat-message">
                            </div>

                            <button class="btn waves-effect z-depth-0"><i class="mdi-content-send"></i>
                            </button>
                        </form>
                    </div>
                    <!-- /Send message -->

                </div>
                <!-- /Messages -->
            </div>

        </div>
        <!-- /Chat -->



        <footer>© 2015 <strong>nK</strong>. All rights reserved. <a href="http://themeforest.net/item/con-material-admin-dashboard-template/10621512?ref=nKdev">Purchase</a>
        </footer>
    </body>
</html>
