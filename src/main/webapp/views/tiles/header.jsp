<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
           prefix="sec"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="js/adminpanel.js"></script>
<script type="text/javascript">
    function logout() {
        $('#log').click();
    }
    $(document).ready(function () {
        cartInfo();
    })

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
<div id="main">
    <div class="flat-top v1 flat-reset">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="flat-top-left flat-left">
                        Вітаємо на нашому сайті.Вам потрібна допомога? Дзвоніть
                        <span>
                            <i class="fa fa-phone"></i>
                            0123-456-789
                        </span>
                    </div> <!-- /.flat-top-left -->

                    <div class="flat-top-right flat-right">
                        <ul>
                            <%--<li><a href=""><i class="fa fa-user"></i>My Account</a></li>--%>
                            <li><a href=""><i class="fa fa-heart"></i>Мої вподобання</a></li>

                            <sec:authorize access="!isAuthenticated()">
                                <li><a href=""><i class="fa fa-check-square-o"></i>Реєстрація</a></li>
                                <li><a href="/loginpage"><i class="fa fa-sign-in"></i>Вхід</a></li>
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <div style="display:none">
                                    <form:form type="hidden" action="logout" method="post">
                                        <button type="hidden" id="log">Вихід</button>
                                    </form:form>
                                </div>


                                <li><a onclick="logout()"><i class="fa fa-sign-in"></i>Вихід</a></li>
                                <li id="userName"><%--<sec:authentication property="name" />--%><%--Oleg--%></li>
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
                                        <span class="screen-reader-text">Пошук за:</span>
                                        <input type="search" id="search" class="search-field" placeholder="Шукайте за назвою або категорією" value="" name="s" autocomplete="off">
                                        <ul class="search_result"></ul>
                                    </label>
                                    <input type="submit" class="search-submit" value="Пошук">
                                </form>
                            </aside> <!-- /.widget_search -->


                            <aside class="widget widget_shopping">
                                <a href="/cart">
                                    <img src="http://localhost:8080/img/header/shop.png" alt="Delivery">
                                    <span class="title">Корзина</span></br>
                                    <sec:authorize access="isAuthenticated()">
                                        <span id="many"></span><span class="blue" title="prices" id="price"></span>
                                    </sec:authorize>
                                    <sec:authorize access="!isAuthenticated()">
                                    <span>0 товарів</span> - <span class="blue" title="prices">$0.00</span>
                                    </sec:authorize>

                                </a>


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
                                        <li<%-- class="home parent"--%>>
                                            <a href="/">Головна</a>
                                            <%--<ul class="submenu">--%>

                                            <%--</ul><!-- /.submenu -->--%>
                                        </li>
                                        <li><a href="about.html">Про нас</a></li>
                                        <li><a href="services.html">Сервіс</a></li>
                                        <li><a href="/products/">Товари</a>

                                        </li>
                                        <li<%-- class="parent"--%>><a href="portfolio.html">Портфоліо</a>

                                        </li>
                                        <sec:authorize access="!hasRole('ROLE_ADMIN')">
                                        <li><a href="contact.html">Зворотній зв'язок</a></li>
                                    </sec:authorize>
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                            <li><a href="adminpanel">Адмін панель</a></li>
                                        </sec:authorize>
                                        <li <%--class="parent"--%>><a href="blog.html">Відгуки</a>

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
<input type="hidden" name="csrf_name"
       value="${_csrf.parameterName}" />
<input type="hidden" name="csrf_value"
       value="${_csrf.token}" />
