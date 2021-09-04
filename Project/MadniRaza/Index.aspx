<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>Madni Raza</title>
    <meta name="description" content="Picard Html vCard">
    <meta name="keywords" content="business, personal, portfolio">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <!-- bootstrap grid -->
    <link rel="stylesheet" href="css/style.css" />
    <!-- template css -->
    <link rel="stylesheet" href="css/reset.css" />
    <!-- reset css -->
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <!-- magnific popup css -->


    <!-- Color Css Just change css name of number 1 to 8 (Example: color-2.css) -->
    <link href="css/colors/color-1.css" rel="stylesheet" type="text/css">

    <!-- Google Web fonts -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900' rel='stylesheet' type='text/css'>

    <!-- Font icons -->
    <link rel="stylesheet" href="icon-fonts/font-awesome-4.4.0/css/font-awesome.min.css" />
    <!-- Fontawesome icons css -->

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <!-- Preloading -->
    <div id="preloader">
        <div class="spinner">
            <div class="rect1"></div>
            <div class="rect2"></div>
            <div class="rect3"></div>
            <div class="rect4"></div>
            <div class="rect5"></div>
        </div>
    </div>

    <div id="wrapper">
        <div class="container">
            <div class="row">

                <!-- Profile Informations-->
                <div class="profile col-md-3 wow fadeInDown">
                    <div class="profile-image">
                        <img src="images/ProfilePic.JPG">
                    </div>
                    <div class="profile-info">
                        <div class="name-job">
                            <h1>Madni Raza</h1>
                            <span class="job">Software Engineer</span>
                        </div>
                        <!-- .name-job -->
                        <div class="social-icons">
                            <a href="https://www.facebook.com/IamMadniRaza"><i class="fa fa-facebook"></i></a>
                            <a href="https://twitter.com/IamMadniRaza"><i class="fa fa-twitter"></i></a>
                            <a href="https://www.linkedin.com/in/madniraza"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-asterisk"></i></a>
                        </div>
                    </div>
                </div>
                <!--.profile .col-md-3-->

                <!--Right Section-->
                <div id="tab-container" class="col-md-9">
                    <!--Top Menu -->
                    <ul class="top-menu wow fadeInRight">
                        <li><a class="selected" href="#about"><i class="fa fa-user"></i>
                            <br />
                            <span class="hidden-xs">About Me </span></a></li>
                        <li><a href="#resume"><i class="fa fa-file-text-o"></i>
                            <br />
                            <span class="hidden-xs">My Resume </span></a></li>
                        <li><a href="#portfolio"><i class="fa fa-picture-o"></i>
                            <br />
                            <span class="hidden-xs">Portfolio</span></a></li>
                        <li><a href="#blog"><i class="fa fa-comments"></i>
                            <br />
                            <span class="hidden-xs">Blog</span></a></li>
                        <li><a href="#contact"><i class="fa fa-map-marker"></i>
                            <br />
                            <span class="hidden-xs">Contact Me </span></a></li>
                    </ul>
                    <!--Right Content -->
                    <!--About Section-->
                    <div id="about" class="content col-md-12 fadeInUp">
                        <div class="row">
                            <div class="page-title">
                                <h2>About Me </h2>
                            </div>
                            <div class="col-md-12 page">
                                <!-- Info -->
                                <div class="col-md-4 about-info">
                                    <h2 class="section-title">About Info</h2>
                                    <ul class="info-list">
                                        <li>Full Name : <span>Muhammad Madni Raza</span> </li>
                                        <li>Birthday: <span>10th November 1993</span> </li>
                                        <li>Nationality : <span>Pakistani</span> </li>
                                        <li>Religion : <span>ISLAM</span> </li>
                                        <li>Email : <span>contact@madniraza.com</span> </li>
                                        <li>Skype : <span>MadniRazaMMR</span> </li>
                                    </ul>
                                </div>
                                <!-- .col-md-4 .about-info -->
                                <!-- Skills -->
                                <div class="col-md-8 my-skills">
                                    <h2 class="section-title">My Skills</h2>
                                    <ul class="skill-list">
                                        <li>
                                            <h3>Software Development</h3>
                                            <div class="progress">
                                                <div class="percentage" style="width: 80%;"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <h3>Website Development</h3>
                                            <div class="progress">
                                                <div class="percentage" style="width: 80%;"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <h3>eCommerce Applications Development</h3>
                                            <div class="progress">
                                                <div class="percentage" style="width: 80%;"></div>
                                            </div>
                                        </li>
                                        <li>
                                            <h3>Management & Communication</h3>
                                            <div class="progress">
                                                <div class="percentage" style="width: 80%;"></div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!--.col-md-8 .my-skills end-->
                                <div class="col-md-12 about-text">
                                    <h2 class="section-title">Intro</h2>
                                    <p>I am a Software Developer. My work experience in firms of repute further enhanced and augmented my career in IT field. I want to learn the maximum. I have an ability to lead people and enjoy challenges and targets. Creativity, hardworking, punctuality, full of ideas & enthusiasm, SELF MOTIVATED, stress less in peak work time are my scenarios of Skills.</p>
                                </div>
                                <!--.col-md-12 .about-text end-->
                                <!-- Services -->
                                <div class="col-md-12 col-sm-12 col-xs-12 services">
                                    <h2 class="section-title">Services</h2>
                                    <div class="service col-md-4 col-sm-6">
                                        <i class="fa fa-apple"></i>
                                        <span>
                                            <b>Website Development</b>
                                            <p>Website Development</p>
                                        </span>
                                    </div>
                                    <!-- .service .col-md-4 .col-sm-6 end -->
                                    <div class="service col-md-4 col-sm-6">
                                        <i class="fa fa-desktop"></i>
                                        <span>
                                            <b>Software Development</b>
                                            <p>Software Development</p>
                                        </span>
                                    </div>
                                    <!-- .service .col-md-4 .col-sm-6 end -->
                                    <div class="service col-md-4 col-sm-6">
                                        <i class="fa fa-picture-o"></i>
                                        <span>
                                            <b>Databases</b>
                                            <p>Databases</p>
                                        </span>
                                    </div>
                                    <!-- .service .col-md-4 .col-sm-6 end -->
                                    <div class="service col-md-4 col-sm-6">
                                        <i class="fa fa-code"></i>
                                        <span>
                                            <b>Accounts</b>
                                            <p>Accounts</p>
                                        </span>
                                    </div>
                                    <!-- .service .col-md-4 .col-sm-6 end -->
                                    <div class="service col-md-4 col-sm-6">
                                        <i class="fa fa-search"></i>
                                        <span>
                                            <b style="height: 10px;">R&Ds</b>
                                            <p>R&Ds</p>
                                        </span>
                                    </div>
                                    <!-- .service .col-md-4 .col-sm-6 end -->
                                    <div class="service col-md-4 col-sm-6">
                                        <i class="fa fa-support"></i>
                                        <span>
                                            <b>Content Writing</b>
                                            <p>Documents, R&Ds...</p>
                                        </span>
                                    </div>
                                    <!-- .service .col-md-4 .col-sm-6 end -->
                                </div>
                                <!-- .col-md-12 .services -->
                                <!--footer-->
                                <footer class="footer">
                                    <p>Copyright © 2016 All right reserved </p>
                                </footer>

                            </div>
                            <!-- .col-md-12 .page -->
                        </div>
                        <!--.row end-->
                    </div>
                    <!-- #about .content .col-md-12 end -->

                    <!--Resume Section -->
                    <div id="resume" class="content col-md-12">
                        <div class="row">
                            <div class="page-title">
                                <h2>My Resume </h2>
                            </div>
                            <div class="col-md-12 page">
                                <!--Resume Education Timeline-->
                                <!--Resume Education Timeline-->
                                <div class="resume-education col-md-12">
                                    <div class="rounded-icon">
                                        <i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="resume-out">
                                        <div class="resume-info">
                                            <h2 class="info-title">Aptech Computer Education</h2>
                                            <span class="info-date">2012 - 2015 </span>
                                            <p>Software Engineering</p>
                                        </div>
                                        <!-- .resume-info -->
                                        <div class="resume-info">
                                            <h2 class="info-title">Karachi University</h2>
                                            <span class="info-date">2015 - Present </span>
                                            <p>
                                                <est class="">B.COM.</est>
                                            </p>
                                        </div>
                                        <!-- .resume-info -->
                                        <div class="resume-info">
                                            <h2 class="info-title">Government College of Commerce & Economics.</h2>
                                            <span class="info-date">2011-2012 </span>
                                            <p>Intermediate</p>
                                        </div>
                                        <!-- .resume-info -->
                                        <div class="resume-info">
                                            <h2 class="info-title">Berlitz Language Center</h2>
                                            <span class="info-date">2011-2014 </span>
                                            <p>Certification in English Language</p>
                                        </div>
                                        <!-- .resume-info -->
                                    </div>
                                    <!-- .resume-out end -->
                                </div>
                                <!-- .resume-education .col-md-12 end -->

                                <!--Resume Work Timeline-->
                                <div class="resume-education col-md-12">
                                    <div class="rounded-icon">
                                        <i class="fa fa-suitcase"></i>
                                    </div>
                                    <div class="resume-out">
                                        <div class="resume-info">
                                            <h2 class="info-title">Web Innovation</h2>
                                            <span class="info-date">2015 - Present </span>
                                            <p>DOTNET Developer</p>
                                        </div>
                                        <!-- .resume-info -->

                                    </div>
                                    <!-- .resume-out end -->
                                </div>
                                <!-- .resume-education .col-md-12 end -->

                                <!--footer-->
                                <footer class="footer">
                                    <p>Copyright © 2016 All right reserved </p>
                                </footer>

                            </div>
                            <!-- .col-md-12 .page -->
                        </div>
                        <!--.row end-->
                    </div>
                    <!-- #resume .content .col-md-12 end -->

                    <!--Portfolio Section -->
                    <div id="portfolio" class="content col-md-12">
                        Will be updated soon.
                            <%--<div class="row">
                                <div class="page-title">
                                    <h2>My Portfolio </h2>
                                    <!-- Portfolio Filter -->
                                    <div class="portfolio_filter pull-right">
                                        <ul>
                                            <li class="select-cat" data-filter="*">All</li>
                                            <li data-filter=".web-design">Web Design</li>
                                            <li data-filter=".aplication">Applications</li>
                                            <li data-filter=".development">Development</li>
                                        </ul>
                                    </div>
                                    <!-- .portfolio-filter .pull-right end -->
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12 page">
                                    <!-- Portfolio Items -->
                                    <div class="portfolio_items">

                                        <div class="single_item web-design col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="single_item web-design col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="single_item aplication col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="single_item web-design col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="single_item aplication col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="single_item web-design col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="single_item development col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                        <div class="single_item development col-md-6 col-sm-12 col-xs-12">
                                            <div class="work-inner">
                                                <div class="work-overlay">
                                                    <h3>Picard Resume Template </h3>
                                                    <p>Donec pulvinar feugiat dui vel egestas. Nulla sit amet risus risus. Nulla libero vitae... </p>
                                                    <a href="work-single.html" class="link"><i class="fa fa-link"></i></a>
                                                    <a href="http://www.placehold.it/500x500.jpg" class="image-link lightbox"><i class="fa fa-search"></i></a>
                                                </div>
                                                <img src="http://www.placehold.it/500x500.jpg" alt="" />
                                            </div>
                                        </div>

                                    </div>
                                    <!-- .portfolio_items end -->



                                    <!--footer-->
                                    <footer class="footer">
                                        <p>Copyright © 2016 All right reserved </p>
                                    </footer>

                                </div>
                                <!-- .col-md-12 .page -->
                            </div>--%>
                        <!--.row end-->
                    </div>
                    <!-- #portfolio .content .col-md-12 end -->

                    <!--Blog Content-->
                    <div id="blog" class="content col-md-12">
                        will be updated soon.
                   
                            <%--	<div class="row">
                    		<div class="page-title">
                           		<h2>Blog Posts </h2>
                            </div>
                            <div class="col-md-12 page">
                            	<!--Blog Post -->
                                <div class="col-md-12 blog-post">
                                	<div class="post-image">
                                    	<img src="http://www.placehold.it/787x317.jpg" alt="">                                       
                                    </div> 
                                    <div class="post-title">
                                    	<h1>Working principle, how do we work?</h1> 
                                    </div>  
                                    <div class="post-info">
                                    	<span>December 06, 2016 / Business, Company / 2 Comments</span>
                                    </div>  
                                    <p>Blanditiis dapibus, aliquet ullam in ut, conubia turpis dolore vivamus ligula deserunt, vehicula praesent iure? Magni? Porta minus pariatur ante dolore, veniam cubilia urna? Eligendi commodo fugiat voluptate, rerum orci neque voluptatem cum repellendus exercitation pellentesque.</p>
                                    <a href="single-blog.html" class="but-big">LOAD MORE</a>
                                </div>
                                <!--Blog Post -->
                                <div class="col-md-12 blog-post">
                                	<div class="post-image">
                                    	<img src="http://www.placehold.it/787x317.jpg" alt="">                                       
                                    </div> 
                                    <div class="post-title">
                                    	<h1>Working principle, how do we work?</h1> 
                                    </div>  
                                    <div class="post-info">
                                    	<span>December 06, 2016 / Business, Company / 2 Comments</span>
                                    </div>  
                                    <p>Blanditiis dapibus, aliquet ullam in ut, conubia turpis dolore vivamus ligula deserunt, vehicula praesent iure? Magni? Porta minus pariatur ante dolore, veniam cubilia urna? Eligendi commodo fugiat voluptate, rerum orci neque voluptatem cum repellendus exercitation pellentesque.</p>                          			
                                    <a href="single-blog.html" class="but-big">LOAD MORE</a>
                                </div>
                                <!--Blog Post -->
                                <div class="col-md-12 blog-post">
                                	<div class="post-image">
                                    	<img src="http://www.placehold.it/787x317.jpg" alt="">                                       
                                    </div> 
                                    <div class="post-title">
                                    	<h1>Working principle, how do we work?</h1> 
                                    </div>  
                                    <div class="post-info">
                                    	<span>December 06, 2016 / Business, Company / 2 Comments</span>
                                    </div>  
                                    <p>Blanditiis dapibus, aliquet ullam in ut, conubia turpis dolore vivamus ligula deserunt, vehicula praesent iure? Magni? Porta minus pariatur ante dolore, veniam cubilia urna? Eligendi commodo fugiat voluptate, rerum orci neque voluptatem cum repellendus exercitation pellentesque.</p>                          			
                                    <a href="single-blog.html" class="but-big">LOAD MORE</a>
                                </div>
                                
                                
                                <!--footer-->
                                <footer class="footer"> <p>  Copyright © 2016 All right reserved </p></footer>
                                                                                              
                            </div><!-- .col-md-12 .page -->
                        </div><!--.row end-->--%>
                    </div>
                    <!-- #blog .content .col-md-12 end -->

                    <!--Contact Content-->
                    <div id="contact" class="content col-md-12">
                        <div class="row">
                            <div class="page-title">
                                <h2>Contact </h2>
                            </div>
                            <div class="col-md-12 page">
                                <!-- Contact Form -->
                                <form runat="server" class="col-md-6 contact-form">
                                    <h2 class="section-title">Contact Me</h2>
                                    <!--Name-->
                                    <asp:TextBox ID="txt_UserName" runat="server" class="form-inp requie" placeholder="Name"></asp:TextBox>
                                    <!--Email-->
                                    <asp:TextBox ID="txt_UserEmail" runat="server" class="form-inp requie" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <!--Message-->
                                    <asp:TextBox ID="txt_UserMessage" runat="server" class="requie" placeholder="Message"  Rows="8" TextMode="MultiLine"></asp:TextBox>
                                    <asp:Button ID="btn_Send" CssClass="but-big" runat="server" Text="SEND A MESSAGE" OnClick="btn_Send_Click" />
                                </form>
                                <!-- Contact Information -->
                                <div class="col-md-6 contact-info">
                                    <h2 class="section-title">Contact Info</h2>
                                    <ul class="info-list">
                                        <li>Address : <span>Karachi Pakistan</span> </li>
                                        <li>Phone : <span>+0092-300-9254033</span> </li>
                                        <li>Website : <span>www.madniraza.com</span> </li>
                                        <li>Email : <span>contact@madniraza.com</span> </li>
                                        <li>Skype : <span>MadniRazaMMR</span> </li>
                                    </ul>
                                    <div class="social-icons">
                                        <a href="https://www.facebook.com/IamMadniRaza"><i class="fa fa-facebook"></i></a>
                                        <a href="https://twitter.com/IamMadniRaza"><i class="fa fa-twitter"></i></a>
                                        <a href="https://www.linkedin.com/in/madniraza"><i class="fa fa-linkedin"></i></a>
                                        <a href="#"><i class="fa fa-asterisk"></i></a>
                                    </div>
                                </div>
                                <!--map-->
                                <div id="map"></div>

                                <!--footer-->
                                <footer class="footer">
                                    <p>Copyright © 2016 All right reserved </p>
                                </footer>

                            </div>
                            <!-- .col-md-12 .page -->
                        </div>
                        <!--.row end-->
                    </div>
                    <!-- #contact .content .col-md-12 end -->

                </div>
                <!-- #tab-container .col-md-9 end -->
            </div>
            <!-- .row end-->
        </div>
        <!-- .container end -->
    </div>
    <!-- #wrapper end-->

    <!-- Javascripts -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- jQuery library -->
    <script src="js/jquery.easytabs.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <!-- Isotope js -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <!-- Magnific Popup js -->
    <script src="js/main.js"></script>
    <!-- Main js -->

    <script type="text/javascript">
        $(document).ready(function () {

            // PAGE TABS	
            $('#tab-container').easytabs({
                updateHash: false,
                animate: true,
                transitionIn: 'fadeIn',
                transitionOut: 'fadeOut',
                animationSpeed: 250,
                tabActiveClass: 'active',
                transitionInEasing: 'linear',
                transitionOutEasing: 'linear'
            });


            0
            // GOOGLE MAP	
            $('#wrapper').bind('easytabs:after', function () {

                var myOptions = {
                    zoom: 14,
                    center: new google.maps.LatLng(40.801485408197856, -73.96745953467104), //change the coordinates
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    scrollwheel: false,
                    mapTypeControl: false
                };

                var map = new google.maps.Map(document.getElementById("map"), myOptions);
                var marker = new google.maps.Marker({
                    map: map,
                    position: new google.maps.LatLng(40.801485408197856, -73.96745953467104) //change the coordinates
                });
                var infowindow = new google.maps.InfoWindow({
                    content: "<bMadni Raza</b><br/>74400 Karachi<br/> Pakistan"  //add your address
                });
                google.maps.event.addListener(marker, "click", function () {
                    infowindow.open(map, marker);
                });
                infowindow.open(map, marker);

            });


            // TOP MENU ACTIVE
            $('ul.top-menu li a').click(function () {
                $('ul.top-menu li a').removeClass("selected");
                $(this).addClass("selected");
            });

        });


    </script>
</body>
</html>
