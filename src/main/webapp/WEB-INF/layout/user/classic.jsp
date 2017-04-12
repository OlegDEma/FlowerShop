<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
        <title>WooW | HTML Commerce Template</title>
        <link rel="shortcut icon" href="images/favicon.ico">

        <link rel='stylesheet' href='css/settings.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/bootstrap.min.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/swatches-and-photos.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/prettyPhoto.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/jquery.selectBox.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/font-awesome.min.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Karla:400,400italic,700,700italic%7CCrimson+Text:400,400italic,600,600italic,700,700italic' type='text/css' media='all'/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel='stylesheet' href='css/elegant-icon.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/style.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/commerce.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/custom.css' type='text/css' media='all'/>
        <link rel='stylesheet' href='css/magnific-popup.css' type='text/css' media='all'/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <script type='text/javascript' src='js/jquery.js'></script>
        <script type='text/javascript' src='js/jquery-migrate.min.js'></script>
        <script type='text/javascript' src='js/jquery.themepunch.tools.min.js'></script>
        <script type='text/javascript' src='js/jquery.themepunch.revolution.min.js'></script>
        <script type='text/javascript' src='js/easing.min.js'></script>
        <script type='text/javascript' src='js/imagesloaded.pkgd.min.js'></script>
        <script type='text/javascript' src='js/bootstrap.min.js'></script>
        <script type='text/javascript' src='js/superfish-1.7.4.min.js'></script>
        <script type='text/javascript' src='js/jquery.appear.min.js'></script>
        <script type='text/javascript' src='js/script.js'></script>
        <script type='text/javascript' src='js/swatches-and-photos.js'></script>
        <script type='text/javascript' src='js/jquery.cookie.min.js'></script>
        <script type='text/javascript' src='js/jquery.prettyPhoto.js'></script>
        <script type='text/javascript' src='js/jquery.prettyPhoto.init.min.js'></script>
        <script type='text/javascript' src='js/jquery.selectBox.min.js'></script>
        <script type='text/javascript' src='js/jquery.touchSwipe.min.js'></script>
        <script type='text/javascript' src='js/jquery.transit.min.js'></script>
        <script type='text/javascript' src='js/jquery.carouFredSel.js'></script>
        <script type='text/javascript' src='js/jquery.magnific-popup.js'></script>
        <script type='text/javascript' src='js/isotope.pkgd.min.js'></script>

        <script type='text/javascript' src='js/extensions/revolution.extension.video.min.js'></script>
        <script type='text/javascript' src='js/extensions/revolution.extension.slideanims.min.js'></script>
        <script type='text/javascript' src='js/extensions/revolution.extension.actions.min.js'></script>
        <script type='text/javascript' src='js/extensions/revolution.extension.layeranimation.min.js'></script>
        <script type='text/javascript' src='js/extensions/revolution.extension.kenburn.min.js'></script>
        <script type='text/javascript' src='js/extensions/revolution.extension.navigation.min.js'></script>
        <script type='text/javascript' src='js/extensions/revolution.extension.migration.min.js'></script>
        <script type='text/javascript' src='js/extensions/revolution.extension.parallax.min.js'></script>

            <meta charset="UTF-8">
        <![endif]-->
    </head>
    <script type="text/javascript">

        var tpj=jQuery;

        var revapi7;
        tpj(document).ready(function() {
            if(tpj("#rev_slider").revolution == undefined){
                revslider_showDoubleJqueryError("#rev_slider");
            }else{
                revapi7 = tpj("#rev_slider").show().revolution({
                    sliderType:"standard",
                    sliderLayout:"fullwidth",
                    dottedOverlay:"none",
                    delay:9000,
                    navigation: {
                        keyboardNavigation:"off",
                        keyboard_direction: "horizontal",
                        mouseScrollNavigation:"off",
                        onHoverStop:"on",
                        touch:{
                            touchenabled:"on",
                            swipe_threshold: 75,
                            swipe_min_touches: 50,
                            swipe_direction: "horizontal",
                            drag_block_vertical: false
                        }
                        ,
                        arrows: {
                            style:"gyges",
                            enable:true,
                            hide_onmobile:true,
                            hide_under:600,
                            hide_onleave:true,
                            hide_delay:200,
                            hide_delay_mobile:1200,
                            tmp:'',
                            left: {
                                h_align:"left",
                                v_align:"center",
                                h_offset:30,
                                v_offset:0
                            },
                            right: {
                                h_align:"right",
                                v_align:"center",
                                h_offset:30,
                                v_offset:0
                            }
                        }
                        ,
                        bullets: {
                            enable:true,
                            hide_onmobile:true,
                            hide_under:600,
                            style:"hephaistos",
                            hide_onleave:true,
                            hide_delay:200,
                            hide_delay_mobile:1200,
                            direction:"horizontal",
                            h_align:"center",
                            v_align:"bottom",
                            h_offset:0,
                            v_offset:30,
                            space:5,
                            tmp:''
                        }
                    },
                    gridwidth:1170,
                    gridheight:600,
                    lazyType:"smart",
                    parallax: {
                        type:"mouse",
                        origo:"slidercenter",
                        speed:2000,
                        levels:[2,3,4,5,6,7,12,16,10,50],
                    },
                    shadow:0,
                    spinner:"off",
                    stopLoop:"off",
                    stopAfterLoops:-1,
                    stopAtSlide:-1,
                    shuffle:"off",
                    autoHeight:"off",
                    disableProgressBar:"on",
                    hideThumbsOnMobile:"off",
                    hideSliderAtLimit:0,
                    hideCaptionAtLimit:0,
                    hideAllCaptionAtLilmit:0,
                    startWithSlide:0,
                    debugMode:false,
                    fallbacks: {
                        simplifyAll:"off",
                        nextSlideOnWindowFocus:"off",
                        disableFocusListener:false,
                    }
                });
            }
        });	/*ready*/
    </script>

<body>
<!--  а сюди jsp файл з ім'ям header -->
<tiles:insertAttribute name="header" />
<div class="container-fluid">
    <!--  сюди jsp файл з ім'ям body -->
    <tiles:insertAttribute name="body" />
</div>
<!--  сюди jsp файл з ім'ям footer -->
<tiles:insertAttribute name="footer" />
<!--  зверніть увагу на те що в темплейт файлі (тут) -->
<!--  вже описано основний HTML код, в інших файлах -->
<!--  його писати не потрібно(я про <head><body><html>) -->
<input type="hidden" name="csrf_name"
       value="${_csrf.parameterName}" />
<input type="hidden" name="csrf_value"
       value="${_csrf.token}" />
</body>
</html>