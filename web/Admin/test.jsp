<%-- 
    Document   : test
    Created on : May 17, 2015, 1:33:48 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <style type="text/css">
            *
            {
                font-size:12px;
                font-family:verdana;
            }
            .demo-content
            {
                background: none repeat scroll 0 0 #DADADA;
                border: 2px solid #DDDDDD;
                font-size: 12px;
                width: 900px;
                padding:20px;
                margin:0px auto;
            }
            .demo-content h3{
                padding:0px;
                margin:0px 0px 20px;
                font-size:18px;
            }
            .spacer {
                clear: both;
                height: 20px;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <br><br><br>
        <ul class="collapsible popout" data-collapsible="accordion">
            <li>
                <div class="collapsible-header"><i class="mdi-image-filter-drama"></i>First</div>
                <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
            </li>
            <li>
                <div class="collapsible-header"><i class="mdi-maps-place"></i>Second</div>
                <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
            </li>
            <li>
                <div class="collapsible-header"><i class="mdi-social-whatshot"></i>Third</div>
                <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
            </li>
        </ul>
        <select id="htmlselect">
            <option value="0" selected="selected" data-imagesrc="../images/icon/desktop.png" data-description="desktop.png">Facebook</option>
            <option value="1" data-imagesrc="../images/icon/gamepad.png" data-description="gamepad.png">Twitter</option>
            <option value="2" data-imagesrc="../images/icon/gear.png" data-description="gear.png">LinkedIn</option>
            <option value="3" data-imagesrc="../images/icon/laptop.png" data-description="laptop.png">Foursquare</option>
        </select>
        <script type="text/javascript">
            $('#htmlselect').ddslick({
                imagePosition: "left",
                onSelected: function (selectedData) {
                    //callback function: do something with selectedData;

                }
            });
        </script>
    </body>
</html>
