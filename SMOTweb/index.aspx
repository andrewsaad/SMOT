<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SMOTweb.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Google Web Fonts
	================================================== -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,300italic,400,400italic,500,700%7cCourgette%7cRaleway:400,700,500%7cCourgette%7cLato:700' rel='stylesheet' type='text/css'>

    <!-- Basic Page Needs
	================================================== -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>SMOT</title>

    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicons
	================================================== -->
    <link rel="shortcut icon" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

    <!-- Mobile Specific Metas
	================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
	================================================== -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/grid.css" />
    <link rel="stylesheet" href="css/layout.css" />
    <link rel="stylesheet" href="css/fontello.css" />

    <link rel="stylesheet" href="js/sequence/sequencejs-theme.css" />

    <!-- HTML5 Shiv
	================================================== -->
    <script src="js/jquery.modernizr.js"></script>

</head>
<body>
    <div id="wrapper">

        <div id="mobile-menu" class="mobile-menu">

            <a href="#" id="menu-hide"></a>

        </div>
        <!-- - - - - - - - - - - - - Header - - - - - - - - - - - - - - -->
        <header id="header" class="type-fixed">
            <div class="middle-header-line transparent-bg">
                <div class="container">
                    <div class="row">
                        <div class="header-in">
                            <img alt="" src="images/SMOTLOGO/SMOT.png" width="200" height="30" id="logo"></a>
						<a id="responsive-nav-button" class="responsive-nav-button" href="#"></a>
                            <div class="nav-wrapper">
                                <nav id="navigation" class="navigation">
                                    <ul>
                                        <li class="current-menu-item">
                                            <a href="index.aspx">Home</a>
                                        </li>
                                        <li><a href="Events.aspx">Events</a></li>
                                        <li>
                                            <a href="ContactUs.aspx">Contact Us</a>
                                        </li>
                                        <li>
                                            <a href="AboutUs.aspx">About US</a>
                                        </li>
                                        <li>
                                            <a href="Career.aspx">Join Us</a>
                                        </li>
                                        <li>
                                            <a href="../adminLap/Login.aspx">Members Login</a>
                                            <ul>
                                                <li><a href="Members.aspx"></a></li>
                                                <li><a href="Events.aspx"></a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="shortcodes.html">ELEMENTS</a>
                                            <ul>
                                                <li><a href="shortcodes.html">Shortcodes</a></li>
                                                <li><a href="typography.html">Typography</a></li>
                                                <li><a href="font-icons.html">Font Icons</a></li>
                                                <li><a href="column-layout.html">Columns</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                                <!--/ .navigation-->
                            </div>
                            <!--/ .nav-wrapper-->
                        </div>
                        <!--/ .header-in-->
                    </div>
                    <!--/ .row-->
                </div>
                <!--/ .container-->
            </div>
            <!--/ middle-header-line-->
        </header>
        <!--/ #header-->
        <!-- - - - - - - - - - - - end Header - - - - - - - - - - - - - -->
        <!-- - - - - - - - - - - - - Content - - - - - - - - - - - - -  -->
        <div id="content-padding-off">
            <div class="sequence-parallax">
                <div id="sequence">
                    <span class="sequence-prev">Prev</span>
                    <span class="sequence-next">Next</span>
                    <ul class="sequence-canvas">
                        <li class="slide-1 bg-animation">
                            <div class="slide-bg content-animation" style="background-image: url(images/SMOTLOGO/SMOT_Logo.png);"></div>
                            <div class="overlay-paralax content-animation"></div>
                            <div class="sequence-container content-animation">
                                <div class="sequence-entry">
                                    <div class="slide-title">
                                        <p>WE ARE <span>SMOT Team</span></p>
                                    </div>
                                    <div class="slide-text">
                                        <p>Organizing Team</p>
                                    </div>
                                    <div class="slide-button">
                                        <a href="about.html" class="btn-cta">Learn more</a>
                                    </div>
                                </div>
                                <!--/ .sequence-entry-->
                            </div>
                            <!--/ .sequence-container-->
                        </li>
                        <!--/ .slide-1-->
                        <li class="slide-2 bg-animation">
                            <div class="slide-bg content-animation" style="background-image: url(images/SMOTLOGO/10437656_940722235940851_8345780775475319786_n.jpg);"></div>
                            <div class="overlay-paralax content-animation"></div>
                            <div class="sequence-container content-animation">
                                <div class="sequence-entry">
                                    <div class="slide-text">
                                        <p>Organizing Team & Charity</p>
                                    </div>
                                    <div class="slide-title">
                                        <p>WE ALWAYS KEEP UP<span> WITH THE TIMES</span></p>
                                    </div>
                                    <div class="slide-button">
                                        <a href="services.html" class="btn-cta">Learn more</a>
                                    </div>
                                </div>
                                <!--/ .sequence-entry-->
                            </div>
                            <!--/ .sequence-container-->
                        </li>
                        <!--/ .slide-2-->
                        <li class="slide-3 bg-animation">
                            <div class="slide-bg content-animation" style="background-image: url(images/SMOTLOGO/14691_944719902207751_8338260368826452388_n.jpg);"></div>
                            <div class="overlay-paralax content-animation"></div>

                            <div class="sequence-container content-animation">

                                <div class="sequence-entry">
                                    <div class="slide-text">
                                        <p>SMOT</p>
                                    </div>

                                    <div class="slide-title">
                                        <p>WE ARE <span>HERE</span> TO
                                            <br>
                                            HELP YOU</p>
                                    </div>

                                    <div class="slide-button">
                                        <a href="services.html" class="btn-cta">Learn more</a>
                                    </div>
                                </div>
                                <!--/ .sequence-entry-->

                            </div>
                            <!--/ .sequence-container-->

                        </li>
                        <!--/ .slide-3-->

                    </ul>
                    <!--/ .sequence-canvas-->

                </div>
                <!--/ #sequence-->

            </div>
            <!--/ .sequence-parallax-->

        </div>
        <!--/ #content-->


        <!-- - - - - - - - - - - - end Content - - - - - - - - - - - - - -->


        <!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - -->


        <footer id="footer">

            <div class="clients-container">

                <section class="container">

                    <div class="row">

                        <div class="col-xs-12">

                            <ul class="client-items">
                                <li><a href="http://themeforest.net/item/blessing-premium-responsive-wordpress-theme/3582013?WT.ac=portfolio_thumb%7cCourgette%7cWT.seg_1=portfolio_thumb%7cCourgette%7cWT.z_author=ThemeMakers">
                                    <img alt="" src="images/clients/client-1.png"></a></li>
                                <li><a href="http://themeforest.net/user/ThemeMakers">
                                    <img alt="" src="images/clients/client-2.png"></a></li>
                                <li><a href="http://themeforest.net/item/almera-responsive-portfolio-wordpress-theme/5350075?WT.ac=portfolio_thumb%7cCourgette%7cWT.seg_1=portfolio_thumb%7cCourgette%7cWT.z_author=ThemeMakers">
                                    <img alt="" src="images/clients/client-3.png"></a></li>
                                <li><a href="http://themeforest.net/item/goodnex-responsive-html5css3-site-template/5147198?WT.ac=portfolio_thumb%7cCourgette%7cWT.seg_1=portfolio_thumb%7cCourgette%7cWT.z_author=ThemeMakers">
                                    <img alt="" src="images/clients/client-4.png"></a></li>
                                <li><a href="http://themeforest.net/item/smartit-premium-responsive-wordpress-theme/3271328?WT.ac=portfolio_thumb%7cCourgette%7cWT.seg_1=portfolio_thumb%7cCourgette%7cWT.z_author=ThemeMakers">
                                    <img alt="" src="images/clients/client-5.png"></a></li>
                                <li><a href="http://themeforest.net/item/axioma-premium-responsive-wordpress-theme/5698562?WT.ac=portfolio_thumb%7cCourgette%7cWT.seg_1=portfolio_thumb%7cCourgette%7cWT.z_author=ThemeMakers">
                                    <img alt="" src="images/clients/client-6.png"></a></li>
                            </ul>

                        </div>
                    </div>

                </section>
                <!--/ .container-->

            </div>
            <!--/ .clients-container-->

            <div class="widget-area">

                <div class="container">

                    <div class="row">

                        <div class="col-lg-4 col-sm-4">

                            <div class="widget widget_text">

                                <h3 class="widget-title">Get in touch</h3>

                                <div class="textwidget">
                                    <p>
                                        ST.Mary Church Road Toman bay, Zaytoon ,Cairo

www.smotteam.com
                                    </p>
                                    <p>Mobile:	01000000000</p>
                                    <p>E-mail: <a href="mailto:info@smotteam.com">info@smotteam.com</a></p>
                                </div>

                            </div>
                            <!--/ .widget-->

                        </div>

                        <div class="col-lg-4 col-sm-4">

                            <ul class="social-icons circle-icons">
                                <li class="twitter"><a href="#"><i class="icon-twitter"></i>Twitter</a></li>
                                <li class="facebook"><a href="#"><i class="icon-facebook"></i>Facebook</a></li>
                                <li class="linkedin"><a href="#"><i class="icon-linkedin"></i>LinkedIn</a></li>
                                <li class="pinterest"><a href="#"><i class="icon-pinterest"></i>Pinterest</a></li>
                                <li class="rss"><a href="#"><i class="icon-rss"></i>Rss</a></li>
                                <li class="flickr"><a href="#"><i class="icon-flickr-1"></i>Flickr</a></li>
                            </ul>
                            <!--/ .social-icons-->

                        </div>

                        <div class="col-lg-4 col-sm-4">

                            <div class="widget widget_twitter">
                                <h5>@twitter</h5>
                                <div class="tweet"></div>
                            </div>

                        </div>

                    </div>
                    <!--/ .row-->

                </div>
                <!--/ .container-->

            </div>
            <!--/ .widget-area-->

        </footer>
        <!--/ #footer-->


        <!-- - - - - - - - - - - - - end Footer - - - - - - - - - - - - - -->


        <!-- - - - - - - - - - - - Bottom Footer - - - - - - - - - - - - -->


        <div class="bottom-footer">

            <div class="container">

                <div class="row">

                    <div class="col-sm-6">
                        <div class="copyright">
                            Copyright © 2015 SMOT Team . 
						<a href="http://smotteam.com" target="_blank">Developed by DoJanTi</a>
                            . All rights reserved 						
                        </div>
                    </div>


                </div>

            </div>
            <!--/ .row-->

        </div>
        <!--/ .container-->

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
<![endif]-->

    <script src="js/plugins.js"></script>
    <script src="js/sequence/jquery.sequence-min.js"></script>
    <script src="twitter/jquery.tweet.js"></script>
    <script src="js/jquery.smoothscroll.js"></script>
    <script src="js/jquery.resizegrid.js"></script>
    <script src="js/config.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
