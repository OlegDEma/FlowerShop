<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="flat-page-title flat-reset">
    <div class="container">
        <div class="row">
            <div class="col-md-12 title-contain">
                <h2>DETAIL PRODUCT</h2>
                <ul class="breadcrumbs">
                    <li><a class="home" href="#">Home</a></li>
                    <li><a href="#">Living Room</a></li>
                    <li><a href="#">Lorem Ipsum Dolor Sit Amet</a></li>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- /.flat-page-title -->

<div id="content" class="post-wrap sidebar-left flat-reset">
    <div id="primary" class="content-area">
        <div class="product-view">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-essential">
                            <div itemscope="" class="product">
                                <div class="product-img-box col-md-4">
                                    <div class="product-image">
                                        <div class="pimg">
                                            <a href="#" class="product-image">
                                                <img src="img/page/product_detail/1.jpg" class="attachment-shop_catalog" alt="Images">
                                            </a>
                                            <div class="new-top-right">NEW</div>
                                            <div class="sale-top-right">SALE</div>
                                        </div> <!-- /.pimg -->
                                        <div class="more-views">
                                            <div class="slider-items-products">
                                                <div class="more-views-items">
                                                    <a href="#" class="cloud-zoom-gallery first" title="Image">
                                                        <img src="http://localhost:8080/${product.image}" class="attachment-shop_thumbnail size-shop_thumbnail" alt="Images" title="Images"></a>
                                                </div>
                                                <%--<div class="more-views-items">--%>
                                                    <%--<a href="#" class="cloud-zoom-gallery" title="Images">--%>
                                                        <%--<img src="img/page/product_detail/5.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="Images"></a>--%>
                                                <%--</div>--%>
                                                <%--<div class="more-views-items">--%>
                                                    <%--<a href="#" class="cloud-zoom-gallery first" title="Image">--%>
                                                        <%--<img src="img/page/product_detail/4.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="Images" title="Images"></a>--%>
                                                <%--</div>--%>
                                                <%--<div class="more-views-items">--%>
                                                    <%--<a href="#" class="cloud-zoom-gallery" title="Images">--%>
                                                        <%--<img src="img/page/product_detail/3.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="Images"></a>--%>
                                                <%--</div>--%>
                                                <%--<div class="more-views-items">--%>
                                                    <%--<a href="#" class="cloud-zoom-gallery first" title="Image">--%>
                                                        <%--<img src="img/page/product_detail/2.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="Images" title="Images"></a>--%>
                                                <%--</div>--%>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="product-shop col-md-8">
                                    <div class="product-name">
                                        <h1 itemprop="name" class="product_title entry-title">Lorem Ipsum Dolor Sit Amet Consecture</h1>
                                    </div>

                                    <div class="rating">
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <div style="width:60%" class="rating"></div>
                                            </div>
                                        </div> <!-- /.ratings -->

                                        <div class="products-event">
                                            <a href="#" class="woocommerce-review-link">5 Reviews</a>&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<a href="#">Add Your Review</a>
                                        </div>
                                    </div> <!-- /.rating -->

                                    <div itemprop="offers" class="price-block">
                                        <div class="price-box price"><ins><span class="amount">$${product.price}</span></ins><del><span class="amount">${product.price + 100}</span></del> </div>

                                        <p class="availability in-stock pull-right">Availability:<span>Instock</span></p>
                                        <meta itemprop="price" content="9.99">
                                        <meta itemprop="priceCurrency" content="USD">
                                        <link itemprop="availability" href="#">
                                    </div>

                                    <div itemprop="description" class="short-description">
                                        <h2>Quick Overview</h2>
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer interdum sem ac magna. Integer in molestie, neque et porta lobortis, ligula sem auctor mauris, a luctus lacus quam sit amet augue. Aliquam nibh, nonummy sit amet, lobortis quis, imperdiet ornare.</p>

                                        <div class="model"><span>Model #:</span>9250320</div>
                                        <div class="dimensions"><span>Dimensions:</span>45"W x 38"D x 32"H</div>
                                        <div class="weight"><span>Weight:</span>88lbs</div>
                                    </div>

                                    <%--<div class="color">--%>
                                        <%--<a href="#"><img src="img/page/product_detail/7.jpg" alt="image"></a>--%>
                                        <%--<a href="#"><img src="img/page/product_detail/8.jpg" alt="image"></a>--%>
                                        <%--<a href="#"><img src="img/page/product_detail/9.jpg" alt="image"></a>--%>
                                        <%--<a href="#"><img src="img/page/product_detail/12.jpg" alt="image"></a>--%>
                                        <%--<a href="#"><img src="img/page/product_detail/11.jpg" alt="image"></a>--%>
                                        <%--<a href="#"><img src="img/page/product_detail/10.jpg" alt="image"></a>--%>
                                    <%--</div>--%>

                                    <div class="add-to-box">
                                        <div class="add-to-cart">
                                            <form class="cart">
                                                <div class="pull-left">
                                                    <div class="custom pull-left">
                                                        <div class="quantity">
                                                            <div class="pull-left">
                                                                <div class="custom pull-left">
                                                                    <button class="reduced items-count" type="button"><i class="fa fa-minus"></i></button>

                                                                    <button class="increase items-count" type="button"><i class="fa fa-plus"></i></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <input type="hidden" name="add-to-cart" value="87">
                                                    </div>
                                                </div>

                                                <div class="actions">
                                                    <ul class="add-to-links">
                                                        <li><a class="add_to_cart_button" href="#" title="Add card">Add To Cart</a></li>
                                                        <li><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>
                                                        <li><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>
                                                    </ul>
                                                </div>

                                            </form>
                                        </div>
                                    </div>


                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button">
                                            <a href="#" rel="nofollow" class="add_to_wishlist show">Add to Wishlist</a>
                                        </div>

                                        <div class="yith-wcwl-wishlistaddedbrowse hide">
                                            <span class="feedback">Product added!</span>
                                            <a href="#" rel="nofollow" class="seoquake-nofollow">Browse Wishlist</a>
                                        </div>

                                        <div class="yith-wcwl-wishlistexistsbrowse hide">
                                            <span class="feedback">The product is already in the wishlist!</span>
                                            <a href="#" rel="nofollow" class="seoquake-nofollow">Browse Wishlist</a>
                                        </div>

                                        <div style="clear:both"></div>
                                        <div class="yith-wcwl-wishlistaddresponse"></div>
                                    </div> <!-- /.yith-wcwl-add-to-wishlist -->

                                    <a href="#" class="compare button seoquake-nofollow">Compare</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- /.product-view -->


        <div class="product-collateral">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="add_info">
                            <div class="woocommerce-tabs">
                                <div class="tabs">
                                    <ul class="tabs nav nav-tabs product-tabs">
                                        <li class="description_tab"><a href="#tab-description">DESCRIPTION</a> </li>
                                        <li class="reviews_tab"><a href="#tab-infomation">INFORMATION</a> </li>
                                        <li class="reviews  _tab"><a href="#tab-reviews">REVIEWS</a> </li>
                                        <li class="reviews_tab"><a href="#tab-tags">TAGS</a> </li>
                                        <li class="reviews_tab"><a href="#tab-custom">CUSTOM TAB</a> </li>
                                    </ul>
                                </div> <!-- /.tabs -->

                                <div id="productTabContent" class="tab-content">
                                    <div class="panel entry-content" id="tab-description">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer interdum sem ac magna. Integer in lectus sed ligula commodo commodo. In molestie, neque et porta lobortis, ligula sem auctor mauris, a luctus lacus quam sit amet augue. Aliquam eu felis. Nullam vel erat. Phasellus erat nibh, nonummy sit amet, lobortis quis, imperdiet ornare, dolor. Nunc odio. </p>
                                        <ul class="flat-list-check">
                                            <li>Nullam tellus pede, eleifend posuere</li>
                                            <li>Pellentesque vel mauris</li>
                                            <li>Estibulum a risus at orci egestas condimentum</li>
                                            <li>Suspendisse sit amet turpis in mauris</li>
                                        </ul><p>
                                        Nullam tellus pede, eleifend posuere, dignissim id, euismod vitae, tortor. Pellentesque vel mauris. Phasellus dictum rutrum lectus. <br>Vestibulum a risus at orci egestas condimentum. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus, pulvinar at, gravida quis, condimentum et, pede. Suspendisse sit amet turpis in mauris porttitor pulvinar. <br><br>Fusce orci sem, venenatis a, pellentesque sit amet, elementum quis, orci. Ut vulputate dolor id lectus. Curabitur non neque. Quisque libero. Phasellus urna. Sed sit amet nisi tincidunt quam porta placerat. Phasellus sit amet metus et neque tincidunt porta. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus
                                    </p>
                                    </div> <!-- /#tab-description -->

                                    <div class="panel entry-content" id="tab-infomation">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer interdum sem ac magna. Integer in lectus sed ligula commodo commodo. In molestie, neque et porta lobortis, ligula sem auctor mauris, a luctus lacus quam sit amet augue. Aliquam eu felis. Nullam vel erat. Phasellus erat nibh, nonummy sit amet, lobortis quis, imperdiet ornare, dolor. Nunc odio. </p>
                                        <ul class="flat-list-check">
                                            <li>Nullam tellus pede, eleifend posuere</li>
                                            <li>Pellentesque vel mauris</li>
                                            <li>Estibulum a risus at orci egestas condimentum</li>
                                            <li>Suspendisse sit amet turpis in mauris</li>
                                        </ul><p>
                                        Nullam tellus pede, eleifend posuere, dignissim id, euismod vitae, tortor. Pellentesque vel mauris. Phasellus dictum rutrum lectus. <br>Vestibulum a risus at orci egestas condimentum. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus, pulvinar at, gravida quis, condimentum et, pede. Suspendisse sit amet turpis in mauris porttitor pulvinar. <br><br>Fusce orci sem, venenatis a, pellentesque sit amet, elementum quis, orci. Ut vulputate dolor id lectus. Curabitur non neque. Quisque libero. Phasellus urna. Sed sit amet nisi tincidunt quam porta placerat. Phasellus sit amet metus et neque tincidunt porta. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus
                                    </p>
                                    </div> <!-- /#tab-infomation -->

                                    <div class="panel entry-content" id="tab-reviews">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer interdum sem ac magna. Integer in lectus sed ligula commodo commodo. In molestie, neque et porta lobortis, ligula sem auctor mauris, a luctus lacus quam sit amet augue. Aliquam eu felis. Nullam vel erat. Phasellus erat nibh, nonummy sit amet, lobortis quis, imperdiet ornare, dolor. Nunc odio. </p>
                                        <ul class="flat-list-check">
                                            <li>Nullam tellus pede, eleifend posuere</li>
                                            <li>Pellentesque vel mauris</li>
                                            <li>Estibulum a risus at orci egestas condimentum</li>
                                            <li>Suspendisse sit amet turpis in mauris</li>
                                        </ul><p>
                                        Nullam tellus pede, eleifend posuere, dignissim id, euismod vitae, tortor. Pellentesque vel mauris. Phasellus dictum rutrum lectus. <br>Vestibulum a risus at orci egestas condimentum. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus, pulvinar at, gravida quis, condimentum et, pede. Suspendisse sit amet turpis in mauris porttitor pulvinar. <br><br>Fusce orci sem, venenatis a, pellentesque sit amet, elementum quis, orci. Ut vulputate dolor id lectus. Curabitur non neque. Quisque libero. Phasellus urna. Sed sit amet nisi tincidunt quam porta placerat. Phasellus sit amet metus et neque tincidunt porta. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus
                                    </p>
                                    </div> <!-- /#tab-reviews -->

                                    <div class="panel entry-content" id="tab-tags">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer interdum sem ac magna. Integer in lectus sed ligula commodo commodo. In molestie, neque et porta lobortis, ligula sem auctor mauris, a luctus lacus quam sit amet augue. Aliquam eu felis. Nullam vel erat. Phasellus erat nibh, nonummy sit amet, lobortis quis, imperdiet ornare, dolor. Nunc odio. </p>
                                        <ul class="flat-list-check">
                                            <li>Nullam tellus pede, eleifend posuere</li>
                                            <li>Pellentesque vel mauris</li>
                                            <li>Estibulum a risus at orci egestas condimentum</li>
                                            <li>Suspendisse sit amet turpis in mauris</li>
                                        </ul><p>
                                        Nullam tellus pede, eleifend posuere, dignissim id, euismod vitae, tortor. Pellentesque vel mauris. Phasellus dictum rutrum lectus. <br>Vestibulum a risus at orci egestas condimentum. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus, pulvinar at, gravida quis, condimentum et, pede. Suspendisse sit amet turpis in mauris porttitor pulvinar. <br><br>Fusce orci sem, venenatis a, pellentesque sit amet, elementum quis, orci. Ut vulputate dolor id lectus. Curabitur non neque. Quisque libero. Phasellus urna. Sed sit amet nisi tincidunt quam porta placerat. Phasellus sit amet metus et neque tincidunt porta. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus
                                    </p>
                                    </div> <!-- /#tab-tags -->

                                    <div class="panel entry-content" id="tab-custom">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer interdum sem ac magna. Integer in lectus sed ligula commodo commodo. In molestie, neque et porta lobortis, ligula sem auctor mauris, a luctus lacus quam sit amet augue. Aliquam eu felis. Nullam vel erat. Phasellus erat nibh, nonummy sit amet, lobortis quis, imperdiet ornare, dolor. Nunc odio. </p>
                                        <ul class="flat-list-check">
                                            <li>Nullam tellus pede, eleifend posuere</li>
                                            <li>Pellentesque vel mauris</li>
                                            <li>Estibulum a risus at orci egestas condimentum</li>
                                            <li>Suspendisse sit amet turpis in mauris</li>
                                        </ul><p>
                                        Nullam tellus pede, eleifend posuere, dignissim id, euismod vitae, tortor. Pellentesque vel mauris. Phasellus dictum rutrum lectus. <br>Vestibulum a risus at orci egestas condimentum. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus, pulvinar at, gravida quis, condimentum et, pede. Suspendisse sit amet turpis in mauris porttitor pulvinar. <br><br>Fusce orci sem, venenatis a, pellentesque sit amet, elementum quis, orci. Ut vulputate dolor id lectus. Curabitur non neque. Quisque libero. Phasellus urna. Sed sit amet nisi tincidunt quam porta placerat. Phasellus sit amet metus et neque tincidunt porta. Morbi in turpis vel ante feugiat placerat. Vestibulum justo lacus
                                    </p>
                                    </div> <!-- /#tab-custom -->
                                </div> <!-- /.tab-content -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- /.product-collateral -->

        <div class="product-recommend">
            <div class="container">
                <h3>WE RECOMMEND</h3>
                <div class="row">
                    <div class="">
                        <ul class="products-grid flat-reset">
                            <form:forEach items="${products}" var="product" begin="1" end="6">
                            <li class="item wide-first">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info">
                                            <div class="pimg">
                                                <a href="#" class="product-image">
                                                    <img src="http://localhost:8080/${product.image}" class="attachment-shop_catalog" alt="Images">
                                                </a>
                                                <div class="new-top-right">NEW</div>
                                                <div class="sale-top-right">SALE</div>
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
                                                <a href="#">LOREM IPSUM DOLOR SIT AMET</a>
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
                            </form:forEach>

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/6.jpg" class="attachment-shop_catalog" alt="Images">--%>
                                                <%--</a>--%>
                                                <%--<div class="new-top-right">NEW</div>--%>
                                                <%--<div class="sale-top-right">SALE</div>--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins><del><span class="amount">$350.00</span></del>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/7.jpg" class="attachment-shop_catalog" alt="Images">--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/8.jpg" class="attachment-shop_catalog" alt="Images">--%>
                                                <%--</a>--%>
                                                <%--<div class="sale-top-right">SALE</div>--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/9.jpg" class="attachment-shop_catalog" alt="Images">--%>
                                                <%--</a>--%>
                                            <%--</div> <!-- /.pimg -->--%>

                                            <%--<div class="box-hover">--%>
                                                <%--<ul class="add-to-links">--%>
                                                    <%--<li><a href="#" class="link-wishlist" title="WishList">x<i class="fa fa-heart"></i></a></li>--%>
                                                    <%--<li><a class="add_to_cart_button" href="#" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>--%>
                                                    <%--<li><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>--%>
                                                <%--</ul>--%>
                                            <%--</div> <!-- /.box-hover -->--%>
                                        <%--</div> <!-- /.item-img-info -->--%>
                                    <%--</div> <!-- /.item-img -->--%>

                                    <%--<div class="item-info">--%>
                                        <%--<div class="info-inner">--%>
                                            <%--<div class="item-title">--%>
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/10.jpg" class="attachment-shop_catalog" alt="Images">--%>
                                                <%--</a>--%>
                                                <%--<div class="new-top-right">NEW</div>--%>
                                                <%--<div class="sale-top-right">SALE</div>--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins><del><span class="amount">$350.00</span></del>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/11.jpg" class="attachment-shop_catalog" alt="Images">--%>
                                                <%--</a>--%>
                                                <%--<div class="new-top-right">NEW</div>--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/12.jpg" class="attachment-shop_catalog" alt="Images">--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/13.jpg" class="attachment-shop_catalog" alt="Images">--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/14.jpg" class="attachment-shop_catalog" alt="Images">--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins>--%>
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
                            <%--&lt;%&ndash;${product.name}  ${product.price}&ndash;%&gt;--%>
                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/15.jpg" class="attachment-shop_catalog" alt="Images">--%>
                                                <%--</a>--%>
                                                <%--<div class="new-top-right">NEW</div>--%>
                                                <%--<div class="sale-top-right">SALE</div>--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins><del><span class="amount">$350.00</span></del>--%>
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

                            <%--<li class="item wide-next">--%>
                                <%--<div class="item-inner">--%>
                                    <%--<div class="item-img">--%>
                                        <%--<div class="item-img-info">--%>
                                            <%--<div class="pimg">--%>
                                                <%--<a href="#" class="product-image">--%>
                                                    <%--<img src="img/page/products/16.jpg" class="attachment-shop_catalog" alt="Images">--%>
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
                                                <%--<a href="#">LOREM IPSUM DOLOR SIT AMET</a>--%>
                                            <%--</div> <!-- /.item-title -->--%>

                                            <%--<div class="item-content">--%>
                                                <%--<div class="item-price">--%>
                                                    <%--<div class="price-box">--%>
                                                        <%--<ins><span class="amount">$256.00</span></ins><del><span class="amount">$350.00</span></del>--%>
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
                        </ul>
                    </div>
                </div>
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
