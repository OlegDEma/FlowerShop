<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="js/adminpanel.js"></script>
<script type="text/javascript">
    if(${page} = 'login'){
        $('#main').css('display','none');
    }
    $(document).ready(function () {
        $('#qwe').onclick(function () {
            alert('qwe');
        })


    })

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
                                <li class="cat-item"><a href="#">Phone</a></li>
                                <li class="cat-item"><a href="/sort/Mikrovolnovka">Mikrovolnovka</a></li>
                                <li class="cat-item"><a href="#">Tables and Chair Sets</a></li>
                                <li class="cat-item"><a href="#">Learning Stations</a></li>
                                <li class="cat-item"><a href="#">Reading Corner</a></li>
                                <li class="cat-item"><a href="#">Sofas and Lounges</a></li>
                                <li class="cat-item"><a href="#">Wall Decorations</a></li>
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
                                <li><a href="#">Masterkidz Education</a></li>
                                <li><a href="#">COKO</a></li>
                                <li><a href="#">Colorations</a></li>
                                <li><a href="#">Educational Colours </a></li>
                                <li><a href="#">Edx Education</a></li>
                                <li><a href="#">Freckled Frog</a></li>
                                <li><a href="#">George Luck</a></li>
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
                    <div class="flat-top-bar-shop flat-reset">
                        <div class="flat-left list-or-grid">
                            <a class="grid-view active" href="#" title="Switch to grid view"><i class="fa fa-th-large"></i>Grid</a>
                            <a class="list-view" href="#" title="Switch to list view"><i class="fa fa-align-justify"></i>List</a>
                        </div> <!-- /.list-or-grid -->

                        <div class="flat-right flat-filter">
                            <div class="flat-sortby">
                                Sort By
                                <select style="height: 32px; width: 109px" name="color" id="size" class="form-control">
                                    <option value="">Size</option>
                                    <option onclick="page()" value="6">6</option>
                                    <option onclick="page()" value="12">12</option>
                                    <option onclick="page()" value="15">15</option>
                                </select>
                            </div> <!-- /.flat-sortby -->

                            <div class="flat-showpost">
                                Show
                                <div class="form-group">
                                    <select style="height: 32px; width: 109px" name="color" id="size" class="form-control">
                                        <option value="">Size</option>
                                        <option onclick="page(6)" value="6">6</option>
                                        <option onclick="page(12)" value="12">12</option>
                                        <option onclick="page(15)" value="15">15</option>
                                    </select>
                                </div>
                                <%--<ul class="flat-blog-select">--%>
                                    <%--<li>--%>
                                        <%--<span>12</span>--%>
                                        <%--<ul>--%>
                                            <%--<li>12</li>--%>
                                            <%--<li onclick="lol()">6</li>--%>
                                            <%--<li>20</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul> <!-- /.flat-blog-select-->--%>

                            </div><!-- /.flat-viewing -->
                        </div> <!-- /.flat-filter -->
                    </div> <!-- /.flat-top-bar-shop -->
                        <button onclick="prevPage()">Prev</button>
                        <button onclick="nextPage()">Next</button>
                    <main  id="twelve" class="post-wrap">
                        <ul class="products-grid flat-reset"><%--/////////////////////////////////////////////////////////////////////////--%>
                            <c:forEach var="product" items="${products}" begin="${begin}" end="${end}">

                                <li class="item col-md-4 wide-first">
                                    <div class="item-inner">
                                        <div class="item-img">
                                            <div class="item-img-info">
                                                <div class="pimg">
                                                    <a href="product_detail.html" class="product-image">
                                                        <img style="height: 247px; width: 252px" src="${product.image}" class="attachment-shop_catalog" alt="Images">
                                                    </a>
                                                </div> <!-- /.pimg -->

                                                <div class="box-hover">
                                                    <ul class="add-to-links">
                                                        <li><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>
                                                        <li><a class="add_to_cart_button" href="#" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>
                                                        <li><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>
                                                    </ul>
                                                </div> <!-- /.box-hover -->
                                            </div> <!-- /.item-img-info -->
                                        </div> <!-- /.item-img -->

                                        <div class="item-info">
                                            <div class="info-inner">
                                                <div class="item-title">
                                                    <a href="product_detail.html">${product.name} ${product.model.nameOfModel}</a>
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

                    <main style="display: none" id="six" class="post-wrap">
                        <ul class="products-grid flat-reset"><%--/////////////////////////////////////////////////////////////////////////--%>
                            <c:forEach var="product" items="${products}" begin="1" end="6">

                                <li class="item col-md-4 wide-first">
                                    <div class="item-inner">
                                        <div class="item-img">
                                            <div class="item-img-info">
                                                <div class="pimg">
                                                    <a href="product_detail.html" class="product-image">
                                                        <img style="height: 247px; width: 252px" src="${product.image}" class="attachment-shop_catalog" alt="Images">
                                                    </a>
                                                </div> <!-- /.pimg -->

                                                <div class="box-hover">
                                                    <ul class="add-to-links">
                                                        <li><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>
                                                        <li><a class="add_to_cart_button" href="#" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>
                                                        <li><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>
                                                    </ul>
                                                </div> <!-- /.box-hover -->
                                            </div> <!-- /.item-img-info -->
                                        </div> <!-- /.item-img -->

                                        <div class="item-info">
                                            <div class="info-inner">
                                                <div class="item-title">
                                                    <a href="product_detail.html">${product.name} ${product.model.nameOfModel}</a>
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
                    </main>


                    <div class="flat-top-bar-shop flat-bottom-bar-shop flat-reset">
                        <div class="flat-left list-or-grid">
                            <a class="grid-view active" href="#" title="Switch to grid view"><i class="fa fa-th-large"></i>Grid</a>
                            <a class="list-view" href="#" title="Switch to list view"><i class="fa fa-align-justify"></i>List</a>
                        </div> <!-- /.list-or-grid -->

                        <div class="flat-right flat-filter">
                            <div class="flat-sortby">
                                Sort By
                                <ul id="flat-sortby" class="flat-blog-select">
                                    <li>
                                        <span>Position</span>
                                        <ul>
                                            <li>Position</li>
                                            <li>Sort by popularity</li>
                                            <li>Sort by average rating</li>
                                            <li>Sort by newness</li>
                                            <li>Sort by price: low to high</li>
                                            <li>Sort by price: high to low</li>

                                        </ul>
                                    </li>
                                </ul> <!-- /.flat-blog-select-->
                            </div> <!-- /.flat-sortby -->

                            <div class="flat-showpost">
                                Show
                                <ul class="flat-blog-select">
                                    <li>
                                        <span>12</span>
                                        <ul>
                                            <li>12</li>
                                            <li>6</li>
                                            <li>20</li>
                                        </ul>
                                    </li>
                                </ul> <!-- /.flat-blog-select-->
                                per page
                            </div><!-- /.flat-viewing -->
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