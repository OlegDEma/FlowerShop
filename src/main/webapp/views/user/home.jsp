<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script>
    $('document').ready(function () {

    })
    function loadHomeProduct() {
        $.ajax({
            url: '/loadProduct',
            type: 'GET',
            contentType: 'application/json',
            success: function (types) {
                var all = '';
                for (var i = 3; i < 8; i++) {
                    var index = types[i].id;
                    var name = types[i].name;
                    var nameOfModel = types[i].model;
                    var price = types[i].price;
                    var category = types[i].category;
                    var brand = types[i].brand;
                    all +=  '<tr><td>'+name+'</td><td>'+nameOfModel+'</td><td>'+price+'</td>'+
                        '<td>'+category+'</td><td>'+brand+'                    <a class="btnn" onclick="deleteProduct('+index+')">Видалити продукт</a></td></tr>';
                }
                $('#loadProduct').html(all);
                // alert(types);
            },
            error:function () {
                alert("ERROR");
            }
        })
    }
</script>
<div class="tp-banner-container" id="home">
    <div class="tp-banner" >
        <ul style="padding-left: 0px">
            <li data-transition="random-static" data-slotamount="7" data-masterspeed="1000" data-saveperformance="on">
                <img src="img/roman-kraft-148702.jpg" alt="slider-image" />
                <div class="tp-caption sfl title-slide flat-title-slider center" data-x="center" data-y="174" data-speed="1000" data-start="1000" data-easing="Power3.easeInOut">
                    COLLECTION
                </div>
                <div class="tp-caption sfr desc-slide center flat-desc" data-x="center" data-y="244" data-speed="1000" data-start="1500" data-easing="Power3.easeInOut">
                    DESIGNER FURNITURE
                </div>
                <div class="tp-caption sfl flat-button-slider" data-x="center" data-y="347" data-speed="1000" data-start="2000" data-easing="Power3.easeInOut"><a href="#">shop now</a></div>
            </li>


        </ul>
    </div>
</div>

<div id="content" class="page-wrap sidebar-left flat-reset">
    <div class="flat-new-arrivals flat-bg-eee flat-row">
        <div class="empty-spacer"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="flat-na-wrap">
                        <div style="height: 277px" class="item flat-center-button flat-button-26adc0">
                            <img style="height: 277px" src="img/astriposadkaiuxod_41904573.jpg" alt="Image" title="Image">
                            <a class="button" href="#" title="ASTRA"><span class="bold">ASTRA</span> COLLECTION</a>
                        </div> <!-- /.item -->

                        <div  class="item flat-center-button flat-button-26adc0">
                            <img src="img/violet2.jpg" alt="Image" title="Image">
                            <a href="#" class="button" title="FIALKA"><span class="bold">FIALKA</span> COLLECTION</a>
                        </div> <!-- /.item -->

                        <div class="item flat-center-button flat-button-26adc0">
                            <img src="img/7280-saintpaulia-africka-fialka-1.jpg" alt="Image" title="Image">
                            <a href="#" class="button" title="QUALITY"><span class="bold">QUALITY</span>COLLECTION</a>
                        </div> <!-- /.item -->

                        <div class="item flat-center-button flat-button-26adc0">
                            <img src="img/page/index/2.jpg" alt="Image" title="Image">
                            <a href="#" class="button"   title="Sofa"><span class="bold">SOFA</span> COLLECTION</a>
                        </div> <!-- /.item -->

                        <div class="item flat-center-button flat-button-26adc0">
                            <img src="img/page/index/3.jpg" alt="Image" title="Image">
                            <a href="#" class="button"  title="WILD"><span class="bold">WILD</span> AND FREE</a>
                        </div> <!-- /.item -->

                        <div class="item flat-center-button flat-button-26adc0">
                            <img src="img/page/index/4.jpg" alt="Image" title="Image">
                            <a href="#" class="button"  title="QUALITY"><span class="bold">QUALITY</span> DESIGN</a>
                        </div> <!-- /.item -->

                        <div class="item flat-center-button flat-button-26adc0">
                            <img src="img/page/index/2.jpg" alt="Image" title="Image">
                            <a href="#" class="button"  title="Sofa"><span class="bold">SOFA</span> COLLECTION</a>
                        </div> <!-- /.item -->

                        <div class="item flat-center-button flat-button-26adc0">
                            <img src="img/page/index/3.jpg" alt="Image" title="Image">
                            <a href="#" class="button"  title="WILD"><span class="bold">WILD</span> AND FREE</a>
                        </div> <!-- /.item -->

                        <div class="item flat-center-button flat-button-26adc0">
                            <img src="img/page/index/4.jpg" alt="Image" title="Image">
                            <a href="#"  class="button"  title="QUALITY"><span class="bold">QUALITY</span> DESIGN</a>
                        </div> <!-- /.item -->
                    </div> <!-- /.flat-na-wrap -->
                </div>
            </div>
        </div>
    </div> <!-- /.flat-new-arrivals -->

    <div class="flat-our-products flat-row">
        <div class="flat-top-title flat-bg-eee">
            <h3>NEW ARRIVALS</h3>
        </div> <!-- /.flat-bottom-title -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="products-grid two-row ">
                        <c:forEach items="${products}" var="product" begin="0" end="10">
                            <div class="item">
                                <div class="item-img">
                                    <div class="item-img-info">
                                        <div class="pimg">
                                            <a href="#" class="product-image">
                                                <img src="${product.image}" style="width: 250px; height: 200px;" class="attachment-shop_catalog" alt="Images">
                                            </a>
                                        </div> <!-- /.pimg -->

                                        <div class="box-hover">
                                            <ul class="add-to-links">
                                                <sec:authorize access="hasRole('ROLE_USER')">
                                                <li><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>
                                                <li><a class="add_to_cart_button" onclick="doAjax(${product.id})" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>
                                                </sec:authorize>
                                                <li>< <a href="/productdetails/${product.id}"><i class="fa fa-compress"></i></a></li>
                                            </ul>
                                        </div> <!-- /.box-hover -->
                                    </div> <!-- /.item-img-info -->
                                </div> <!-- /.item-img -->

                                <div class="item-info">
                                    <div class="info-inner">
                                        <div class="item-title">
                                            <a href="/productdetails/${product.id}">${product.name}</a>
                                        </div> <!-- /.item-title -->

                                        <div class="item-content">
                                            <div class="item-price">
                                                <div class="price-box">
                                                    <ins><span class="amount">$${product.price}</span></ins>
                                                </div>
                                            </div> <!-- /.item-price -->
                                        </div> <!-- /.item-content -->
                                    </div> <!-- /.info-inner -->
                                </div> <!-- /.item-info -->
                            </div> <!-- /.item -->


                        </c:forEach>


                </div>
            </div>
        </div>

    </div> <!-- /.flat-our-products -->

    <div class="flat-our-projects flat-bg-eee">
        <div class="flat-top-title flat-bg-fff">
            <h3>OUR PROJECTS</h3>
        </div> <!-- /.flat-bottom-title -->

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="flat-opro-wrap">
                        <li class="item">
                            <img src="img/page/index/букет-43-розы-1420.jpg" alt="Image">

                            <div class="item-info">
                                <h3 class="title">ADAM’ LIVING ROOM</h3>
                                <span class="price">$566.00</span>
                                <span class="short-context">
        								Duis euismod eu nibh at pharetra. Vivamus placerat ac metus et placerat, Nulla molestie massa id est posuere, maximus hendrerit est rhoncus.
        							</span>

                                <%--<a href="#" class="flat-read-more">VIEW PROJECT</a>--%>
                            </div> <!-- /.item-info -->
                        </li> <!-- /.item -->

                        <li class="item">
                            <img src="img/page/index/sayt_img_2604_w389_h396.jpg" alt="Image">

                            <div class="item-info">
                                <h3 class="title">ADAM’ LIVING ROOM</h3>
                                <span class="price">$566.00</span>
                                <span class="short-context">
        								Duis euismod eu nibh at pharetra. Vivamus placerat ac metus et placerat, Nulla molestie massa id est posuere, maximus hendrerit est rhoncus.
        							</span>


                            </div> <!-- /.item-info -->
                        </li> <!-- /.item -->

                        <li class="item">
                            <img src="img/page/index/craciunita-mare-500x500.jpg" alt="Image">

                            <div class="item-info">
                                <h3 class="title">ADAM’ LIVING ROOM</h3>
                                <span class="price">$566.00</span>
                                <span class="short-context">
        								Duis euismod eu nibh at pharetra. Vivamus placerat ac metus et placerat, Nulla molestie massa id est posuere, maximus hendrerit est rhoncus.
        							</span>


                            </div> <!-- /.item-info -->
                        </li> <!-- /.item -->

                        <li class="item">
                            <img src="img/page/index/gerbera_hriz_mix.jpg" alt="Image">

                            <div class="item-info">
                                <h3 class="title">ADAM’ LIVING ROOM</h3>
                                <span class="price">$566.00</span>
                                <span class="short-context">
        								Duis euismod eu nibh at pharetra. Vivamus placerat ac metus et placerat, Nulla molestie massa id est posuere, maximus hendrerit est rhoncus.
        							</span>


                            </div> <!-- /.item-info -->
                        </li> <!-- /.item -->

                        <li class="item">
                            <img src="img/page/index/_________________4e1aba9312ee7.jpg" alt="Image">

                            <div class="item-info">
                                <h3 class="title">ADAM’ LIVING ROOM</h3>
                                <span class="price">$566.00</span>
                                <span class="short-context">
        								Duis euismod eu nibh at pharetra. Vivamus placerat ac metus et placerat, Nulla molestie massa id est posuere, maximus hendrerit est rhoncus.
        							</span>

                               <%-- <a href="#" class="flat-read-more">VIEW PROJECT</a>--%>
                            </div> <!-- /.item-info -->
                        </li> <!-- /.item -->
                    </ul> <!-- /.flat-opro-wrap -->
                </div>
            </div>
        </div>
        <div style="height:37px"></div>
    </div> <!-- /.flat-our-projects -->

    <div class="flat-hot-product">
        <div class="flat-top-title flat-bg-eee">
            <h3>HOT PRODUCTS</h3>
        </div> <!-- /.flat-bottom-title -->
        <div class="container">
            <div class="row">
                <div class="flat-product-banner col-md-8">
                    <img src="${products[12].image
                    }" alt="image">
                    <div class="product-info">
                        <h2>DINING CHAIRS</h2>
                        <h1>COLLECTION 2016</h1>
                        <a href="#" class="flat-read-more">VIEW ALL PRODUCTS</a>
                    </div>

                </div> <!-- /.flat-product-banner -->

                <div class="flat-product-show col-md-4">
                    <ul class="products-list flat-reset btn-bg-26adc0">
                <c:forEach items="${products}" var="product" begin="3" end="6">
                        <li class="item">

                            <div class="pimg">
                                <a href="#" class="product-image">
                                    <img src="${product.image}" style="height: 100px; width: 100px;" class="wp-post-image" alt="Image">
                                </a>
                            </div> <!-- /.pimg -->


                            <div class="product-shop">
                                <h2 class="product-name item-title">
                                    <a href="#" style="color: black">${product.name}</a>
                                </h2> <!-- /.product-name -->

                                <div class="price-box">
                                    <ins><span style="color: black" class="amount">$${product.price}</span></ins><del><span style="color: black" class="amount">$${product.price+10}</span></del>
                                </div> <!-- /.price-box -->

                                <div class="rating clearfix">
                                    <div class="ratings">
                                        <div class="rating-box">
                                            <div style="width:60%" class="rating"></div>
                                        </div>
                                    </div> <!-- /.ratings -->
                                </div> <!-- /.rating -->

                                <div class="actions clearfix">
                                    <ul class="add-to-links">
                                        <sec:authorize access="hasRole('ROLE_USER')">
                                            <li><a href="#" class="link-wishlist" title="WishList"><i class="fa fa-heart"></i></a></li>
                                            <li><a class="add_to_cart_button" onclick="doAjax(${product.id})" title="Add card"><i class="fa fa-shopping-cart"></i></a></li>
                                        </sec:authorize>
                                        <li><a title="Quick View" class="quickview link-quickview"><i class="fa fa-compress"></i></a></li>
                                    </ul> <!-- /.add-to-links -->
                                </div> <!-- /.actions -->
                            </div> <!-- /.product-shop -->
                        </li> <!-- /.item -->
                </c:forEach>
                    </ul>

                </div> <!-- /.flat-product-show -->
            </div>
        </div>
        <div style="height: 31px;"></div>
    </div> <!-- /.flat-hot-product -->

    <div class="flat-testimonial parallax prallax1">
        <div class="flat-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="flat-top-title flat-background-trans">
                        <h3>Відгуки</h3>
                    </div> <!-- /.flat-bottom-title -->

                    <div class="flat-testi-wrap">
                        <div class="item">
                            <img src="${products[3].image}" alt="Image">
                            <p>Чудовий магазин</p>
                        </div> <!-- /.item -->

                        <div class="item">
                            <img src="${products[5].image}" alt="Image">
                            <p>Чудовий магазин</p>
                        </div> <!-- /.item -->

                        <div class="item">
                            <img src="${products[11].image}" alt="Image">
                            <p>Чудовий магазин</p>
                        </div> <!-- /.item -->
                    </div> <!-- /.flat-testi-wrap -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div> <!-- /.flat-testimonial -->

    <div class="flat-lastest-post">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div style="height:40px;"></div>
                    <div class="flat-top-title flat-background-trans v2">
                        <h3><span class="color">LATEST</span> POSTS</h3>
                    </div> <!-- /.flat-bottom-title -->
                    <div class="flat-ltp-wrap">
                        <div class="item flat-reset">
                            <div class="flat-item-img flat-left images-hover">
                                <div class="overlay"></div>
                                <img src="img/page/index/25.jpg" alt="image">
                                <span class="date">03 <span class="month">NOV</span> </span>
                            </div> <!-- /.flat-item-img -->

                            <div class="flat-item-content ">
                                <h3 class="title"><a href="blog_details.html">Curabitur lectus Tincidunt</a></h3>
                                <p>Aenean vel elit lectus pretium efficitur. Praesent sollicitudin odio eget nunc tincidunt, sed faucibus enim tincidunt.</p>
                                <a href="blog_details.html" class="v2">READ MORE <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div> <!-- /.item -->

                        <div class="item flat-reset">
                            <div class="flat-item-img flat-left images-hover">
                                <div class="overlay"></div>
                                <img src="img/page/index/26.jpg" alt="image">
                                <span class="date">03 <span class="month">NOV</span> </span>
                            </div> <!-- /.flat-item-img -->

                            <div class="flat-item-content ">
                                <h3 class="title"><a href="blog_details.html">ullamcorper vitae metus</a></h3>
                                <p>Aenean vel elit lectus pretium efficitur. Praesent sollicitudin odio eget nunc tincidunt, sed faucibus enim tincidunt.</p>
                                <a href="blog_details.html" class=" v2">READ MORE <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div> <!-- /.item -->

                        <div class="item flat-reset">
                            <div class="flat-item-img images-hover">
                                <div class="overlay"></div>
                                <img src="img/page/index/27.jpg" alt="image">
                                <span class="date">03 <span class="month">NOV</span> </span>
                            </div> <!-- /.flat-item-img -->

                            <div class="flat-item-content flat-left">
                                <h3 class="title"><a href="blog_details.html">interdum eni nulla lobortis</a></h3>
                                <p>Aenean vel elit lectus pretium efficitur. Praesent sollicitudin odio eget nunc tincidunt, sed faucibus enim tincidunt.</p>
                                <a href="blog_details.html" class="v2">READ MORE <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div> <!-- /.item -->

                        <div class="item flat-reset">
                            <div class="flat-item-img images-hover">
                                <div class="overlay"></div>
                                <img src="img/page/index/28.jpg" alt="image">
                                <span class="date">03 <span class="month">NOV</span> </span>
                            </div> <!-- /.flat-item-img -->

                            <div class="flat-item-content flat-left">
                                <h3 class="title"><a href="blog_details.html">Vivamus quis ornare nisl</a></h3>
                                <p>Aenean vel elit lectus pretium efficitur. Praesent sollicitudin odio eget nunc tincidunt, sed faucibus enim tincidunt.</p>
                                <a href="blog_details.html" class="v2">READ MORE <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div> <!-- /.item -->
                    </div> <!-- /.flat-ltp-wrap -->
                </div>
            </div>
        </div>
    </div> <!-- /.flat-lastest-post -->
    <div class="empty-spacer"></div>

</div> <!-- /.page-wrap -->

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

</div><!-- /.boxed -->
<input type="hidden" name="csrf_name"
       value="${_csrf.parameterName}" />
<input type="hidden" name="csrf_value"
       value="${_csrf.token}" />