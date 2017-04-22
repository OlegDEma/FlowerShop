<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
           prefix="sec"%>

<%--
  Created by IntelliJ IDEA.
  User: Dema
  Date: 01.04.2017
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">
    function logout() {
        $('#log').click();
//        alert("qwe");
    }

</script>
<div id="main">
    <div class="flat-top v1 flat-reset">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="flat-top-left flat-left">
                        Welcome to our store. You need help? Please call free
                        <span>
                            <i class="fa fa-phone"></i>
                            0123-456-789
                        </span>
                    </div> <!-- /.flat-top-left -->

                    <div class="flat-top-right flat-right">
                        <ul>
                            <li><a href=""><i class="fa fa-user"></i>My Account</a></li>
                            <li><a href=""><i class="fa fa-heart"></i>My Wishlist</a></li>
                            <li><a href=""><i class="fa fa-check-square-o"></i>Checkout</a></li>
                            <sec:authorize access="!isAuthenticated()">

                                <li><a href="/loginpage"><i class="fa fa-sign-in"></i>Sign In</a></li>
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <div style="display:none">
                                    <form:form type="hidden" action="logout" method="post">
                                        <button type="hidden" id="log">logout</button>
                                    </form:form>
                                </div>


                                <li><a onclick="logout()"><i class="fa fa-sign-in"></i>Logout</a></li>
                                <li><sec:authentication property="name" /></li>
                            </sec:authorize>
                        </ul>
                    </div> <!-- /.flat-top-right -->
                </div>
            </div>
        </div>

        <div class="flat-multilanguage">
            <aside id="icl_lang_sel_widget-1" class="widget widget_icl_lang_sel_widget">
                <div id="lang_sel">
                    <ul>
                        <li>
                            <a href="#" class="lang_sel_sel icl-en">
                                <span class="icl_lang_sel_current icl_lang_sel_native">English</span>
                            </a>

                            <ul>
                                <li class="icl-en">
                                    <a href="#">
                                        <img class="iclflag" src="img/header/en.png" alt="de" title="German">
                                        <span class="icl_lang_sel_native">English</span>
                                        <span class="icl_lang_sel_translated">
                                            <span class="icl_lang_sel_bracket">(</span>
                                            English<span class="icl_lang_sel_bracket">)</span>
                                        </span>
                                    </a>
                                </li>

                                <li class="icl-fr">
                                    <a href="#">
                                        <img class="iclflag" src="img/header/fe.png" alt="fr" title="French">
                                        <span class="icl_lang_sel_native">Français</span>
                                        <span class="icl_lang_sel_translated">
                                            <span class="icl_lang_sel_bracket">(</span>
                                            French<span class="icl_lang_sel_bracket">)</span>
                                        </span>
                                    </a>
                                </li>

                                <li class="icl-de">
                                    <a href="#">
                                        <img class="iclflag" src="img/header/ge.png" alt="de" title="German">
                                        <span class="icl_lang_sel_native">Deutsch</span>
                                        <span class="icl_lang_sel_translated">
                                            <span class="icl_lang_sel_bracket">(</span>
                                            German<span class="icl_lang_sel_bracket">)</span>
                                        </span>
                                    </a>
                                </li>

                                <li class="flat-currency">
                                    <a href="#" class="flat-dollar">USD</a>
                                    <a href="#" class="flat-euro">EURO</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div> <!-- #lang_sel -->
            </aside> <!-- /.widget_icl_lang_sel_widget -->
        </div> <!-- /.flat-multilanguage -->
    </div> <!-- /.flat-top -->

    <header class="flat-header flat-reset">
        <div class="flat-header-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 padding-right-0">
                        <div class="flat-logo">
                            <a href="/home" title="Logo" >
                                <img src="http://localhost:8080/img/logo.png" alt="Logo">
                            </a>
                        </div> <!-- /.flat-logo -->

                        <div class="flat-widgets">
                            <aside class="widget widget_search">
                                <form role="search" method="get" class="search-form" action="#">
                                    <label>
                                        <span class="screen-reader-text">Search for:</span>
                                        <input type="search" class="search-field" placeholder="Search for product, category or brand..." value="" name="s">
                                    </label>
                                    <input type="submit" class="search-submit" value="SEARCH">
                                </form>
                            </aside> <!-- /.widget_search -->

                            <aside class="widget widget_shipping">
                                <a href="#">
                                    <img src="http://localhost:8080/img/header/delivery.png" alt="Delivery">
                                    <span class="title">EVERY DAY FREE SHIPPING</span>
                                    <span>on onders over $560.00</span>
                                </a>
                            </aside> <!-- /.widget_shipping -->

                            <aside class="widget widget_shopping">
                                <a href="#">
                                    <img src="http://localhost:8080/img/header/shop.png" alt="Delivery">
                                    <span class="title">SHOPPING CART</span>
                                    <span>3 items</span> - <span class="blue" title="prices">$566.00</span>
                                </a>

                                <div class="flat-ordered">
                                    <ul>
                                        <li>
                                            <img src="img/page/order/1.jpg" alt="image">
                                            <h3>LOREM IPSUM DOLOR SIT AMET</h3>
                                            <span>$256.00 <span class="edit"></span><span class="delete"></span></span>
                                            <div class="quality">
                                                Qty:
                                                <input type="text" value="01">
                                                <button>Update</button>
                                            </div>
                                        </li>
                                        <li>
                                            <img src="img/page/order/2.jpg" alt="image">
                                            <h3>LOREM IPSUM DOLOR SIT AMET</h3>
                                            <span>$256.00 <span class="edit"></span><span class="delete"></span></span>
                                            <div class="quality">
                                                Qty:
                                                <input type="text" value="01">
                                            </div>
                                        </li>
                                        <li>
                                            <img src="img/page/order/3.jpg" alt="image">
                                            <h3>LOREM IPSUM DOLOR SIT AMET</h3>
                                            <span>$256.00 <span class="edit"></span><span class="delete"></span></span>
                                            <div class="quality">
                                                Qty:
                                                <input type="text" value="01">
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="total flat-reset">
                                        <span class="flat-left"></span>
                                        <span class="flat-right"></span>
                                    </div>
                                    <div class="event flat-reset">
                                        <a href="#" class="flat-left">VIEW CART</a>
                                        <a href="#" class="flat-right">CHECKOUT</a>
                                    </div>
                                </div>
                            </aside> <!-- /.widget_shopping -->
                        </div> <!-- /.flat-widgets -->
                    </div>
                </div>
            </div>
        </div> <!-- /.flat-header-top -->

        <div class="flat-header-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="flat-menu flat-left">
                            <div class="btn-menu">
                                <span></span>
                            </div><!-- //mobile menu button -->
                            <div class="nav-wrap">
                                <nav id="mainnav" class="mainnav">
                                    <ul class="menu">
                                        <li class="home parent">
                                            <a href="/">Home</a>
                                            <ul class="submenu">
                                                <li><a href="index.html">Home 01 </a></li>
                                                <li><a href="index-3.html">Home Corporate</a></li>
                                            </ul><!-- /.submenu -->
                                        </li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="services.html">Services</a></li>
                                        <li class="parent"><a href="/products/">Product</a>
                                            <ul class="submenu">
                                                <li><a href="/products/">Product Grid </a>
                                                </li>
                                                <li><a href="product_list.html">Product List</a>
                                                </li>
                                                <li><a href="product_detail.html">Product Detail</a>
                                                </li>
                                            </ul><!-- /.submenu -->
                                        </li>
                                        <li class="parent"><a href="portfolio.html">Portfolio</a>
                                            <ul class="submenu">
                                                <li><a href="portfolio_detail.html">Portfolio Single</a>
                                                </li>
                                            </ul><!-- /.submenu -->
                                        </li>
                                        <sec:authorize access="!hasRole('ROLE_ADMIN')">
                                        <li><a href="contact.html">Contact Us</a></li>
                                    </sec:authorize>
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                            <li><a href="adminpanel">Admin panel</a></li>
                                        </sec:authorize>
                                        <li class="parent"><a href="blog.html">Blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">Sidebar Left </a></li>
                                                <li><a href="blog-sidebar-right.html">Sidebar Right</a></li>
                                                <li><a href="blog_details.html">Single Sidebar Left</a></li>
                                                <li><a href="blog-single-sidebar-right.html">Single Sidebar Right</a></li>
                                            </ul><!-- /.submenu -->
                                        </li>
                                    </ul><!-- /.menu -->
                                </nav><!-- /.mainnav -->
                            </div><!-- /.nav-wrap -->
                        </div> <!-- /.flat-menu -->

                        <div class="flat-header-socials flat-right">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div> <!-- /.flat-header-socials -->
                    </div>
                </div>
            </div>
        </div> <!-- /.flat-header-bottom -->
    </header>
</div>
