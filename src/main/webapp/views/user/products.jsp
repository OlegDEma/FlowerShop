<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/adminpanel.js"></script>
<script type="text/javascript">

    function cartInfo() {
        $.ajax({
            url: '/cartInfo',
            type: 'GET',
            contentType: 'application/json',
            success: function (types) {
                var many = types[0] + " товарів -";
                var price ="$" + types[1];
                var name = types[2];
                $('#many').html(many);
                $('#price').html(price);
                $('#userName').html(name);
            },
            error:function () {
                alert("ERROR");
            }
        })
    }


</script>
<%--<div>--%>
    <%--<svg class="progress-icon" width="250" height="250" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">--%>
    <%--<defs>--%>
        <%--<path id="tick-outline-path" d="M14 28c7.732 0 14-6.268 14-14S21.732 0 14 0 0 6.268 0 14s6.268 14 14 14z" opacity="0" />--%>
        <%--<path id="tick-path" d="M6.173 16.252l5.722 4.228 9.22-12.69" opacity="0"/>--%>
    <%--</defs>--%>
    <%--<g class="tick-icon" stroke-width="2" stroke="rgba(0,0,0,.2)" fill="none" transform="translate(1, 1)">--%>
        <%--<use class="tick-outline" xlink:href="#tick-outline-path" />--%>
        <%--<use class="tick" xlink:href="#tick-path" />--%>
    <%--</g>--%>
    <%--<g class="tick-icon" stroke-width="2" stroke="#fff" fill="none" transform="translate(1, 1.2)">--%>
        <%--<use class="tick-outline" xlink:href="#tick-outline-path" />--%>
        <%--<use class="tick" xlink:href="#tick-path" />--%>
    <%--</g>--%>
<%--</svg>--%>
<%--</div>--%>

<div class="flat-page-title flat-reset">
    <div class="container">
        <div class="row">
            <div class="col-md-12 title-contain">
                <h2>Flower</h2>
                <ul class="breadcrumbs">
                    <li><a class="home" href="/home">Home</a></li>
                    <li><a href="#">Fialka</a></li>
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
                        <h2 class="widget-title woocommerce-title">Вибрати за:</h2>

                        <aside class="widget woocommerce widget_product_categories">
                            <h3 class="widget-title">Категорії</h3>
                            <ul class="product-categories">
                                <li class="cat-item"><a href="/products/Невеликі квіти">Невеликі квіти</a></li>
                                <li class="cat-item"><a href="/products/Mikrovolnovka">Великі квіти</a></li>
                                <li class="cat-item"><a href="#">Рози</a></li>
                                <li class="cat-item"><a href="#">Фіалки</a></li>
                                <li class="cat-item"><a href="#">Екзотика</a></li>
                                <li class="cat-item"><a href="#">Альстромерії</a></li>
                                <li class="cat-item"><a href="#">Гербери</a></li>
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
                            <h3 class="widget-title">Інше:</h3>
                            <ul class="product-manufaturer">
                                <li class="cat-item"><a href="/products/Mikrovolnovka">Сезонні квіти</a></li>
                                <li class="cat-item"><a href="#">Букети квітів</a></li>
                                <li class="cat-item"><a href="#">Квіти в коробці</a></li>
                                <li><a href="#">Подарунки</a></li>
                                <li><a href="#">Квіткові кошики</a></li>
                                <li><a href="#">Квіткові композиції</a></li>
                                <li><a href="#">Кімнатні рослини</a></li>
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
                                <c:forEach items="${products.content}" var="product" begin="1" end="3" >
                                    <li>
                                        <a href="#" title="${product.name}">
                                            <img style="height: 80px; width: 100px" src="http://localhost:8080/${product.image}" class="attachment-shop_thumbnail" alt="${product.name}"><div class="product-info"> <span class="product-title">${product.name} ${product.model.nameOfModel}</span>
                                            <ins><span class="amount">${product.price}</span></ins>
                                            <div class="star-rating" title="Rated 5 out of 5">
                                                <span style="width:60%">
                                                    <strong class="rating">5</strong> out of 5
                                                </span>
                                            </div></div></a>
                                    </li>
                                </c:forEach>

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
                        <%--<div class="flat-left list-or-grid">--%>
                            <%--<a class="grid-view active" href="#" title="Switch to grid view"><i class="fa fa-th-large"></i>Grid</a>--%>
                            <%--<a class="list-view" href="#" title="Switch to list view"><i class="fa fa-align-justify"></i>List</a>--%>
                        <%--</div> <!-- /.list-or-grid -->--%>

                        <div class="flat-right flat-filter">

                            <div class="flat-showpost">
                                <%--Sort--%>
                                <%--<div class="form-group">--%>
                                    <%--&lt;%&ndash;<select style="height: 32px; width: 109px" name="color" id="size" class="form-control">&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<option value=""> </option>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<option &lt;%&ndash;onclick="typeOfSortt('desc')"&ndash;%&gt; name="typeOfSort" value="desc"><a href="/products/${page}">priceqDow</a></option>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<option onclick="typeOfSortt('esc')" value="priceUp">priceUp</option>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<option onclick="typeOfSortt('name')" value="Name">Name</option>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
                                        <%--<a href="">desc</a>--%>
                                        <%--<a href="">esc</a>--%>
                                        <%--<a href="">name</a>--%>
                                <%--</div>--%>
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
                                                    <li class="toggle1"><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>
                                                    <li class="toggle1"><a class="add_to_cart_button" <%--href="/addInCart/${product.id}"--%> onclick="doAjax(${product.id})" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>
                                                    <li style="display: none" id="toggle2"><img src="http://www.freeiconspng.com/uploads/accept-tick-icon-12.png"></li>
                                                    <li class="toggle1"><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>
                                                </ul>
                                            </div> <!-- /.box-hover -->

                                                <div class="box-hover2">
                                                    <a href="#" class="check">
                                                        <span class="tick"></span>
                                                    </a>
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

                    <div style="margin-left: 380px">
                    <c:set var="currentPage" value="${products.number}"/>
                    <c:set var="totalPages" value="${totalPages-1}"/>


                    <c:if test="${currentPage != 0}">
                        <a href="/products/pageable/${products.number-1}/6/${sort}">previous</a>
                    </c:if>


                    <c:forTokens var="page" items="${pages}" delims="-"><%--0-1-2-3-4-5-6--%>

                        <a href="/products/pageable/${page}/6/${sort}">${page}</a>

                    </c:forTokens>


                    <c:if test="${currentPage < totalPages}">
                        <a href="/products/pageable/${products.number+1}/6/${sort}">next</a>
                    </c:if>
                    </div>



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
                                            <li><a href="/products/pageable/0/6/price">Ціна ></a></li>
                                            <li><a href="/products/pageable/0/6/name">Ім'я</a></li>
                                            <li><a href="/products/pageable/0/6/id">Стандарт</a></li>
                                            <li><a href="/products/pageable/0/6/sortDesc">Ціна <</a></li>

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
<a href="#" class="check">
    <span class="tick"></span>
    <span class="cross"></span>
</a>
<input type="hidden" id="begin" value="${begin}">
<input type="hidden" id="end" value="${end}">
<input type="hidden" id="page" value="${page}">