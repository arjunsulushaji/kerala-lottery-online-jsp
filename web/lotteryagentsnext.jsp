
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Kerala lottery online</title>

        <link href="//fonts.googleapis.com/css2?family=Hind:wght@300;400;500;600&display=swap" rel="stylesheet">
        <link href="//fonts.googleapis.com/css2?family=Libre+Baskerville:wght@400;700&display=swap" rel="stylesheet">

        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/style-starter.css">
    </head>
    <body>
        <!-- header -->
        <header class="w3l-header">
            <div class="container">
                <!--/nav-->
                <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-sm-3 px-0">
                    <a class="navbar-brand" href="">
                        <span class="fa fa-newspaper-o"></span>Bhagya Keralam</a>
                    <!-- if logo is image enable this   
                                            <a class="navbar-brand" href="#index.html">
                                                    <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                            </a> -->


                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <!-- <span class="navbar-toggler-icon"></span> -->
                        <span class="fa icon-expand fa-bars"></span>
                        <span class="fa icon-close fa-times"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <nav class="mx-auto">
                            <div class="search-bar">
                                <form class="search">
                                    <input type="search" class="search__input" name="search" placeholder="Discover news, articles and more"
                                           onload="equalWidth()" hidden="">
                                    <span class="fa fa-search search__icon" hidden=""></span>
                                </form>
                            </div>
                        </nav>
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="index1.jsp">Home</a>
                            </li>
                            <li class="nav-item dropdown @@pages__active">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    District <span class="fa fa-angle-down"></span>
                                </a>                                
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item @@b__active" href="lotteryagents.jsp?d=Thiruvanandhapuram">Thiruvanandhapuram</a>
                                    <a class="dropdown-item @@fa__active" href="lotteryagents.jsp?d=Kollam">Kollam</a>
                                    <a class="dropdown-item @@b__active" href="lotteryagents.jsp?d=Pathanamthitta">Pathanamthitta</a>                                    
                                    <a class="dropdown-item @@fa__active" href="lotteryagents.jsp?d=Alappuzha">Alappuzha</a>
                                    <a class="dropdown-item @@b__active" href="lotteryagents.jsp?d=Kottayam">Kottayam</a>
                                    <a class="dropdown-item @@fa__active" href="lotteryagents.jsp?d=Idukki">Idukki</a>
                                    <a class="dropdown-item @@b__active" href="lotteryagents.jsp?d=Ernakulam">Ernakulam</a>
                                    <a class="dropdown-item @@fa__active" href="lotteryagents.jsp?d=Thrissur">Thrissur</a>
                                    <a class="dropdown-item @@b__active" href="lotteryagents.jsp?d=Palakkad">Palakkad</a>
                                    <a class="dropdown-item @@fa__active" href="lotteryagents.jsp?d=Malappuram">Malappuram</a>
                                    <a class="dropdown-item @@b__active" href="lotteryagents.jsp?d=Kozhikode">Kozhikode</a>
                                    <a class="dropdown-item @@fa__active" href="lotteryagents.jsp?d=Wayanad">Wayanad</a>
                                    <a class="dropdown-item @@b__active" href="lotteryagents.jsp?d=Kannur">Kannur</a>
                                    <a class="dropdown-item @@fa__active" href="lotteryagents.jsp?d=Kasaragode">Kasaragode</a>
                                </div>                                
                            </li>
                            <li class="nav-item dropdown @@pages__active">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Account <span class="fa fa-angle-down"></span>
                                </a>                                
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item @@b__active" href="logout.jsp">Logout</a>                                    
                                </div>                                
                            </li>     
                            <li class="nav-item active">
                                <a class="nav-link" href="ticket.jsp">Tickets</a>
                            </li>
<!--                            <li class="nav-item @@contact__active">
                                <a class="nav-link" href=""></a>
                            </li>-->
                        </ul>
                    </div>
                    <!-- toggle switch for light and dark theme -->
                    <div class="mobile-position">
                        <nav class="navigation">
                            <div class="theme-switch-wrapper">
                                <label class="theme-switch" for="checkbox">
                                    <input type="checkbox" id="checkbox">
                                    <div class="mode-container">
                                        <i class="gg-sun"></i>
                                        <i class="gg-moon"></i>
                                    </div>
                                </label>
                            </div>
                        </nav>
                    </div>
                    <!-- //toggle switch for light and dark theme -->
            </div>
        </nav>
        <!--//nav-->
    </header>    
    <div class="w3l-homeblock2">
        <div class="container py-lg-5 py-md-4">
            <!-- block -->
            <div class="left-right" style="text-align: center; letter-spacing: 1rem;">
                <h3 class="section-title-left">LOTTERY AGENTS</h3>
                <!--                <a href="fashiom.html" class="more btn btn-small mb-sm-0 mb-4">View more</a>-->
            </div>
            <div class="row">
                <% 
                    String district=(String)session.getAttribute("district");
                    try
                    {
                    Class.forName("com.mysql.jdbc.Driver");  
                    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
                    java.sql.Statement stmt=con.createStatement();  
                    String sele="SELECT *FROM distributor where DDISTRICT='"+district+"' ";
                    java.sql.ResultSet rs=stmt.executeQuery(sele);  
                    while(rs.next()) 
                    {
    
                %>
                <div class="col-lg-4 col-md-6 item">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/shop_icon.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc" style="color: royalblue;"><%=rs.getString(6)%>
                            </a>                                                        
                            <div class="text-center pt-2">
                                <a href="viewdetails.jsp?id=<%=rs.getString(1)%>" class="btn btn-primary mr-2">View Details</a>
                                <a href="viewtickets.jsp?id=<%=rs.getString(1)%>" class="btn btn-primary">View Tickets</a>                                 
                            </div>
                        </div>                        
                    </div>
                </div>
                <%
                    }
                    con.close();  
                    }catch(Exception ee)
                    {
                    out.println("error "+ee);
                    }                                                                                        
                %>                             
            </div>
        </div>
    </div>

    <!-- footer-28 block -->
    <section class="app-footer">


        <!-- move top -->
        <button onclick="topFunction()" id="movetop" title="Go to top">
            <span class="fa fa-angle-up"></span>
        </button>
        <script>
            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function () {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("movetop").style.display = "block";
                } else {
                    document.getElementById("movetop").style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
        <!-- /move top -->
    </section>
    <!-- //footer-28 block -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- disable body scroll which navbar is in active -->

    <!-- Template JavaScript -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>

    <!-- theme changer js -->
    <script src="assets/js/theme-change.js"></script>
    <!-- //theme changer js -->

    <!-- courses owlcarousel -->
    <script src="assets/js/owl.carousel.js"></script>

    <!-- script for testimonials -->
    <script>
        $(document).ready(function () {
            $('.owl-testimonial').owlCarousel({
                loop: true,
                margin: 0,
                nav: true,
                responsiveClass: true,
                autoplay: false,
                autoplayTimeout: 5000,
                autoplaySpeed: 1000,
                autoplayHoverPause: false,
                responsive: {
                    0: {
                        items: 1,
                        nav: false
                    },
                    480: {
                        items: 1,
                        nav: false
                    },
                    667: {
                        items: 1,
                        nav: true
                    },
                    1000: {
                        items: 1,
                        nav: true
                    }
                }
            })
        })
    </script>
    <!-- //script for testimonials -->

    <!-- bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>

</body>

</html>