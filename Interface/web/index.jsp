
<%-- 
    Document   : index
    Created on : Nov 19, 2019, 9:32:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
       ${newProducts}
        <div id="container">
            <div id="prod_wrapper">
                <!-- Panes -->
                <div id="panes">
                    
                    <c:forEach var="product" items="${newProducts}">
                        <div>
                    
                            <p>${product.getProductID()}</p>
                            <img src="${initParam.imgProductPath}${product.getImage()}" atl="">
                            
                            
                            <p style="text-align: right; margin-right: 16px">
                                <a href="#" class="button">More Info</a>
                                <a href="#" class="button">Buy Now</a>
                            </p>
                        </div>
                    </c:forEach>                    
                </div>
                <!-- End Panel -->
                <br clear="all">
                <!-- navigator-->
                <div id = "prod_nav">
                    <ul>
                        <c:set var="countProduct" scope="request" value="${1}"/>
                        <c:forEach var="product" items="${newProduct}">
                            <li>
                                <a href="#${countProduct}">
                                    <img src="${initParam.imgProductPath}${product.getThumbImage()}" atl="" >
                                    <strong>${product.getName()}</strong>${product.getPrice()}
                                    
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- Close navigator -->
                
            </div>   
            <div style="clear: both"></div>
            <!-- First Column -->
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>Cute Sticker</h2>
                </div>
                <img src="images\csdl\cute sticker\mygirl.png" width="217" alt="">
            </div>
            <!-- Second Column -->
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>Gau bong</h2>
                </div>
                <img src="images\csdl\gau bong\gaubong.jpg" width="217" alt="">
            </div>
            <!-- Third Column -->
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>Moc khoa</h2>
                </div>
                <img src="images\csdl\moc khoa de thuong\1.Moc-khoa-gau-brown-tho-cony-de-thuong-3.jpg" width="217" alt="">
            </div>
            <!-- Fourth Column -->
            <div class="one-fourth">
                <div class="heading_bg">
                    <h2>Balo</h2>
                </div>
                <img src="images\csdl\balo de thuong\3.jpg" width="217" alt="">
                <div style="clear: both; height: 40px"></div>
            </div>
        </div>
    </body>
</html>
