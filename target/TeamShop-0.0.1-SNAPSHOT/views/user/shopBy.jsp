<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/adminpanel.js"></script>
<script type="text/javascript">


</script>
<div class="flat-page-title flat-reset">
    <div class="container">
        <div class="row">
            <div class="col-md-12 title-contain">
                <h2>LIVING ROOM</h2>
                <ul class="breadcrumbs">
                    <li><a class="home" href="#">Home</a></li>
                    <li><a href="#">Living Room</a></li>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- /.flat-page-title -->

<div id="content" class="post-wrap product-page  sidebar-left flat-reset">
    <div class="container content-wrapper">
        <div class="row">
            <div class="col-md-12">
                <div id="secondary" class="widget-area">
                    <div class="sidebar_shop_sidebar">
                        <h2 class="widget-title woocommerce-title">SHOP BY</h2>

                        <aside class="widget woocommerce widget_product_categories">
                            <h3 class="widget-title">BY CATEGORIES</h3>
                             <ul class="product-categories">
                            <li class="cat-item"><a href="/products/Невеликі квіти">Невеликі квіти</a></li>
                            <li class="cat-item"><a href="/products/Великі квіти">Великі квіти</a></li>
                            <li class="cat-item"><a href="/products/Невеликі квіти">Рози</a></li>
                            <li class="cat-item"><a href="/products/Невеликі квіти">Фіалки</a></li>
                            <li class="cat-item"><a href="/products/Невеликі квіти">Екзотика</a></li>
                            <li class="cat-item"><a href="/products/Невеликі квіти">Альстромерії</a></li>
                            <li class="cat-item"><a href="/products/Невеликі квіти">Гербери</a></li>
                        </ul>
                        </aside> <!-- /.widget_product_categories -->

                        <aside class="widget woocommerce widget_price_filter">
                            <h3 class="widget-title">BY PRICE</h3>

                            <div id="slider-range">
                                <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all flat-value-left">
                                            <span>$125.00</span>
                                        </span>
                                <span tabindex="0" class="ui-slider-handle ui-state-default ui-corner-all flat-value-right">
                                            <span>$525.00</span>
                                        </span>
                            </div>
                        </aside> <!-- /.widget_price_filter -->

                        <aside class="widget woocommerce widget_manufaturer">
                            <h3 class="widget-title">BY MANUFACTURER</h3>
                            <ul class="product-manufaturer">
                                <li class="cat-item"><a href="/products/Mikrovolnovka">Сезонні квіти</a></li>
                                <li class="cat-item"><a href="/products/Невеликі квіти">Букети квітів</a></li>
                                <li class="cat-item"><a href="/products/Невеликі квіти">Квіти в коробці</a></li>
                                <li><a href="/products/Невеликі квіти">Подарунки</a></li>
                                <li><a href="/products/Невеликі квіти">Квіткові кошики</a></li>
                                <li><a href="/products/Невеликі квіти">Квіткові композиції</a></li>
                                <li><a hhref="/products/Невеликі квіти">Кімнатні рослини</a></li>
                            </ul>
                        </aside> <!-- /.widget_manufaturer -->

                        <aside class="widget woocommerce widget_layered_nav">
                            <h3 class="widget-title">BY COLOR</h3>
                            <ul class="yith-wcan-color yith-wcan yith-wcan-group ">
                                <li><a style="background-color:#ff6138;" href="#"></a></li>
                                <li><a style="background-color:#ffff9d;" href="#"></a></li>
                                <li><a style="background-color:#beeb9f;" href="#"></a></li>
                                <li><a style="background-color:#79bd8f;" href="#"></a></li>
                                <li><a style="background-color:#00a388;" href="#"></a></li>
                                <li><a style="background-color:#676666;" href="#"></a></li>
                                <li><a style="background-color:#333745;" href="#"></a></li>
                                <li><a style="background-color:#77c4d3;" href="#"></a></li>
                                <li><a style="background-color:#daede2;" href="#"></a></li>
                                <li><a style="background-color:#f6f792;" href="#"></a></li>
                            </ul>
                        </aside> <!-- /.widget_layered_nav -->
                    </div> <!-- /.sidebar_shop_sidebar -->

                    <div class="sidebar_shop_sidebar my-compare">
                        <h2 class="widget-title woocommerce-title">MY COMPARE</h2>

                        <aside class="widget woocommerce widget_compare">
                            <span>You have no item to compare</span>
                        </aside>
                    </div> <!-- /.sidebar_shop_sidebar -->

                    <div class="sidebar_shop_sidebar">
                        <h2 class="widget-title woocommerce-title">BEST SELLER</h2>

                        <aside class="widget woocommerce widget_top_rated_products">
                            <ul class="product_list_widget">
                                <li>
                                    <a href="#" title="LOREM IPSUM DOLOR SIT AMET">
                                        <img width="100" height="100" src="img/page/products/1.jpg" class="attachment-shop_thumbnail" alt="LOREM IPSUM DOLOR SIT AMET"><div class="product-info"> <span class="product-title">LOREM IPSUM DOLOR SIT AMET</span>
                                        <ins><span class="amount">$256.00</span></ins>
                                        <div class="star-rating" title="Rated 5 out of 5">
                                                <span style="width:60%">
                                                    <strong class="rating">5</strong> out of 5
                                                </span>
                                        </div></div></a>
                                </li>

                                <li>
                                    <a href="#" title="LOREM IPSUM DOLOR SIT AMET">
                                        <img width="100" height="100" src="img/page/products/2.jpg" class="attachment-shop_thumbnail" alt="LOREM IPSUM DOLOR SIT AMET"> <div class="product-info"> <span class="product-title">LOREM IPSUM DOLOR SIT AMET</span>

                                        <ins><span class="amount">$256.00</span></ins>
                                        <div class="star-rating" title="Rated 5 out of 5">
                                                <span style="width:60%">
                                                    <strong class="rating">5</strong> out of 5
                                                </span>
                                        </div></div></a>
                                </li>

                                <li>
                                    <a href="#" title="LOREM IPSUM DOLOR SIT AMET">
                                        <img width="100" height="100" src="img/page/products/3.jpg" class="attachment-shop_thumbnail" alt="LOREM IPSUM DOLOR SIT AMET"><div class="product-info">  <span class="product-title">LOREM IPSUM DOLOR SIT AMET</span>

                                        <ins><span class="amount">$256.00</span></ins>
                                        <div class="star-rating" title="Rated 5 out of 5">
                                                <span style="width:60%">
                                                    <strong class="rating">5</strong> out of 5
                                                </span>
                                        </div></div></a>
                                </li>
                            </ul> <!-- /.product_list_widget -->
                        </aside> <!-- /.widget_top_rated_products -->
                    </div> <!-- /.sidebar_shop_sidebar -->

                    <div class="sidebar_shop_sidebar">
                        <aside class="widget widget_image">
                            <a href="#">
                                <img src="img/page/products/4.jpg" alt="images" title="images">
                            </a>
                        </aside> <!-- /.widget_top_rated_products -->
                    </div> <!-- /.sidebar_shop_sidebar -->
                </div> <!-- /#secondary -->

                    <div id="primary" class="content-area ">
                    <main  id="twelve" class="post-wrap">
                        <ul class="products-grid flat-reset"><%--/////////////////////////////////////////////////////////////////////////--%>
                            <c:forEach var="product" items="${products.content}">

                                <li class="item col-md-4 wide-first">
                                    <div class="item-inner">
                                        <div class="item-img">
                                            <div class="item-img-info">
                                                <div class="pimg">
                                                    <a href="product_detail.html" class="product-image">
                                                        <img style="height: 247px; width: 252px" src="http://localhost:8080/${product.image}" class="attachment-shop_catalog" alt="Images">
                                                    </a>
                                                </div> <!-- /.pimg -->

                                                <div class="box-hover">
                                                    <ul class="add-to-links">
                                                        <sec:authorize access="hasRole('ROLE_USER')">
                                                            <li class="toggle1"><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>
                                                            <li class="toggle1"><a class="add_to_cart_button" <%--href="/addInCart/${product.id}"--%> onclick="doAjax(${product.id})" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>
                                                        </sec:authorize>
                                                        <li><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>
                                                    </ul>
                                                </div> <!-- /.box-hover -->
                                            </div> <!-- /.item-img-info -->
                                        </div> <!-- /.item-img -->

                                        <div class="item-info">
                                            <div class="info-inner">
                                                <div class="item-title">
                                                    <a href="/productdetails/${product.id}">${product.name} ${product.model.nameOfModel}</a>
                                                </div> <!-- /.item-title -->

                                                <div class="item-content">
                                                    <div class="item-price">
                                                        <div class="price-box">
                                                            <ins><span class="amount">$${product.price}</span></ins>
                                                        </div>
                                                    </div> <!-- /.item-price -->

                                                    <div class="rating">
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <div style="width:60%" class="rating"></div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- /.rating -->
                                                </div> <!-- /.item-content -->
                                            </div> <!-- /.info-inner -->
                                        </div> <!-- /.item-info -->
                                    </div> <!-- /.item-inner -->
                                </li>

                            </c:forEach>

                        </ul>
                    </main> <!-- /.post-wrap -->

                    <%--<main style="display: none" id="six" class="post-wrap">--%>
                        <%--<ul class="products-grid flat-reset">&lt;%&ndash;/////////////////////////////////////////////////////////////////////////&ndash;%&gt;--%>
                            <%--<c:forEach var="product" items="${products}">--%>

                                <%--<li class="item col-md-4 wide-first">--%>
                                    <%--<div class="item-inner">--%>
                                        <%--<div class="item-img">--%>
                                            <%--<div class="item-img-info">--%>
                                                <%--<div class="pimg">--%>
                                                    <%--<a href="product_detail.html" class="product-image">--%>
                                                        <%--<img style="height: 247px; width: 252px" src="${product.image}" class="attachment-shop_catalog" alt="Images">--%>
                                                    <%--</a>--%>
                                                <%--</div> <!-- /.pimg -->--%>

                                                <%--<div class="box-hover">--%>
                                                    <%--<ul class="add-to-links">--%>
                                                        <%--<li><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>--%>
                                                        <%--<li><a class="add_to_cart_button" href="#" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>--%>
                                                        <%--<li><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>--%>
                                                    <%--</ul>--%>
                                                <%--</div> <!-- /.box-hover -->--%>
                                            <%--</div> <!-- /.item-img-info -->--%>
                                        <%--</div> <!-- /.item-img -->--%>

                                        <%--<div class="item-info">--%>
                                            <%--<div class="info-inner">--%>
                                                <%--<div class="item-title">--%>
                                                    <%--<a href="/productdetails/${product.id}">${product.name} ${product.model.nameOfModel}</a>--%>
                                                <%--</div> <!-- /.item-title -->--%>

                                                <%--<div class="item-content">--%>
                                                    <%--<div class="item-price">--%>
                                                        <%--<div class="price-box">--%>
                                                            <%--<ins><span class="amount">$${product.price}</span></ins>--%>
                                                        <%--</div>--%>
                                                    <%--</div> <!-- /.item-price -->--%>

                                                    <%--<div class="rating">--%>
                                                        <%--<div class="ratings">--%>
                                                            <%--<div class="rating-box">--%>
                                                                <%--<div style="width:60%" class="rating"></div>--%>
                                                            <%--</div>--%>
                                                        <%--</div>--%>
                                                    <%--</div> <!-- /.rating -->--%>
                                                <%--</div> <!-- /.item-content -->--%>
                                            <%--</div> <!-- /.info-inner -->--%>
                                        <%--</div> <!-- /.item-info -->--%>
                                    <%--</div> <!-- /.item-inner -->--%>
                                <%--</li>--%>

                            <%--</c:forEach>--%>

                        <%--</ul>--%>
                    <%--</main>--%>
                        <div style="margin-left: 380px">
                    <c:set var="currentPage" value="${products.number}"/>
                    <c:set var="totalPages" value="${totalPages-1}"/>


                    <c:if test="${currentPage != 0}">
                        <a href="/products/typepageable/${products.number-1}/6/${sort}/${type}">previous</a>
                    </c:if>


                    <c:forTokens var="page" items="${pages}" delims="-"><%--0-1-2-3-4-5-6--%>

                        <a href="/products/typepageable/${page}/6/${sort}/${type}">${page}</a>

                    </c:forTokens>


                    <c:if test="${currentPage < totalPages}">
                        <a href="/products/typepageable/${products.number+1}/6/${sort}/${type}">next</a>
                    </c:if>
                        </div>


                    <div class="flat-top-bar-shop flat-bottom-bar-shop flat-reset">

                        <div class="flat-right flat-filter">
                            <div class="flat-sortby">
                                Sort By
                                <ul id="flat-sortby" class="flat-blog-select">
                                    <li>
                                        <span>Position</span>
                                        <ul>
                                            <li><a href="/products/typepageable/0/6/price/${type}">Ціна ↑</a></li>
                                            <li><a href="/products/typepageable/0/6/name/${type}">Ім'я</a></li>
                                            <li><a href="/products/typepageable/0/6/id/${type}">Стандарт</a></li>
                                            <li><a href="/products/typepageable/0/6/sortDesc/${type}">Ціна ↓</a></li>

                                        </ul>
                                    </li>
                                </ul> <!-- /.flat-blog-select-->
                            </div> <!-- /.flat-sortby -->


                        </div> <!-- /.flat-filter -->
                    </div> <!-- /.flat-bottom-bar-shop -->
                </div> <!-- /#primary -->
            </div>
        </div>
    </div>
</div>

<footer class="flat-footer flat-reset">
    <div class="flat-footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="widget widget_about_us">
                        <h2>CONTACT US</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing <br>elit. Integer interdum sem ac magna. </p>
                        <ul class="flat-infomation">
                            <li class="address">2885 Sanford SW Grandville</li>
                            <li class="email"> Support@yourstore.com</li>
                            <li class="phone">(+1) 123 456 789  -  (+1) 123 456 987</li>
                        </ul>
                        <a href="#" class="flat-button">CONTACT US</a>
                    </div> <!-- /.widget_about_us -->
                </div>

                <div class="col-md-2">
                    <div class="widget widget_services flat-underline">
                        <h2>OUR SERVICES</h2>
                        <ul>
                            <li><a href="#">Free Shipping</a></li>
                            <li><a href="#">Delivery Infomation</a></li>
                            <li><a href="#">Order Tracking</a></li>
                            <li><a href="#">Gift Cart</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div> <!-- /.widget_services -->
                </div>

                <div class="col-md-3">
                    <div class="widget widget_my_account flat-underline">
                        <h2>MY ACCOUNT</h2>
                        <ul>
                            <li><a href="#">Login or Register</a></li>
                            <li><a href="#">Account Information</a></li>
                            <li><a href="#">Forgot Password</a></li>
                            <li><a href="#">Order Listing</a></li>
                            <li><a href="#">Delete Your Account</a></li>
                        </ul>
                    </div> <!-- /.widget_my_account -->
                </div>

                <div class="col-md-3">
                    <div class="widget widget_instagram">
                        <h2>INSTAGRAM</h2>
                        <ul>
                            <li class="images-hover">
                                <div class="overlay"></div>
                                <a href="#"><img src="img/footer/1.jpg" alt="images"></a>
                            </li>
                            <li class="images-hover">
                                <div class="overlay"></div>
                                <a href="#"><img src="img/footer/2.jpg" alt="images"></a>
                            </li>
                            <li class="images-hover">
                                <div class="overlay"></div>
                                <a href="#"><img src="img/footer/3.jpg" alt="images"></a>
                            </li>
                            <li class="images-hover">
                                <div class="overlay"></div>
                                <a href="#"><img src="img/footer/4.jpg" alt="images"></a>
                            </li>
                            <li class="images-hover">
                                <div class="overlay"></div>
                                <a href="#"><img src="img/footer/5.jpg" alt="images"></a>
                            </li>
                            <li class="images-hover">
                                <div class="overlay"></div>
                                <a href="#"><img src="img/footer/6.jpg" alt="images"></a>
                            </li>
                        </ul>
                    </div> <!-- /.widget_my_instgram-->
                </div>
            </div>
        </div>
    </div> <!-- /.flat-footer-top -->
</footer> <!-- /.flat-footer -->

<div class="flat-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="flat-copyright flat-left">© Copyright <a href="#">Themesflat</a> 2016. All Rights Reserved.</div> <!-- /.flat-copyright -->
            </div>

            <div class="col-md-6">
                <div class="flat-cash flat-right">
                    <a href="#"><img src="img/footer/1.png" alt="Images"></a>
                    <a href="#"><img src="img/footer/2.png" alt="Images"></a>
                    <a href="#"><img src="img/footer/3.png" alt="Images"></a>
                    <a href="#"><img src="img/footer/4.png" alt="Images"></a>
                </div> <!-- /.flat-cash -->
            </div>
        </div>
    </div>
</div> <!-- /.flat-bottom -->

<!-- Go Top -->
<a class="go-top">
    <i class="fa fa-chevron-up"></i>
</a>
</div>
<input type="hidden" id="begin" value="${begin}">
<input type="hidden" id="end" value="${end}">
<input type="hidden" name="type" id="type" value="${type}">