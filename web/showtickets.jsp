<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
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
                        <span class="fa fa-newspaper-o"></span> Bhagya Keralam</a>
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
                            <li class="nav-item @@home__active">
                                <a class="nav-link" href="index1.jsp">Home</a>
                            </li>                           
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
    <!-- //header -->
    <div class="w3l-homeblock2 py-5">
        <div class="container">
            <!-- block -->
            <h3 class="category-title mb-3">Available Tickets</h3>
            <!--                    <h5 class="mb-sm-5 mb-4 max-width">Today's Nirmal</h5>-->
            <div class="row">

                <%
                    String agentid=(String)session.getAttribute("agentid");
                    try
                    {
                    Class.forName("com.mysql.jdbc.Driver");  
                    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
                    java.sql.Statement stmt=con.createStatement();  
                    String sele="SELECT *FROM tickets where AGENTID='"+agentid+"' and STATUS='pending' ";
                    java.sql.ResultSet rs=stmt.executeQuery(sele);  
                    while(rs.next()) 
                    {
    
                %>
                
                <%
                    String category1=rs.getString(6);
                    if(category1.equals("FIFTYFIFTY"))
                    {
                %>
                <div class="col-lg-4 col-md-6 item p-3">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/5050_sunday.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc"><%=rs.getString(9)%>
                            </a>                        
                            <div class="align-items-center">
                                <a href='buyticket.jsp?id=<%=rs.getString(1)%>' class="btn btn-primary">Buy Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                
                <%
                    String category2=rs.getString(6);
                    if(category2.equals("WINWIN"))
                    {
                %>
                <div class="col-lg-4 col-md-6 item p-3">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/ww_monday.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc"><%=rs.getString(9)%>
                            </a>                        
                            <div class="align-items-center">
                                <a href='buyticket.jsp?id=<%=rs.getString(1)%>' class="btn btn-primary">Buy Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                
                <%
                    String category3=rs.getString(6);
                    if(category3.equals("SREESAKTHI"))
                    {
                %>
                <div class="col-lg-4 col-md-6 item p-3">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/ss_tuesday.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc"><%=rs.getString(9)%>
                            </a>                        
                            <div class="align-items-center">
                                <a href='buyticket.jsp?id=<%=rs.getString(1)%>' class="btn btn-primary">Buy Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                
                <%
                    String category4=rs.getString(6);
                    if(category4.equals("AKSHAYA"))
                    {
                %>
                <div class="col-lg-4 col-md-6 item p-3">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/akshaya_wednesday.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc"><%=rs.getString(9)%>
                            </a>                        
                            <div class="align-items-center">
                                <a href='buyticket.jsp?id=<%=rs.getString(1)%>' class="btn btn-primary">Buy Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                
                <%
                    String category5=rs.getString(6);
                    if(category5.equals("KARUNYAPLUS"))
                    {
                %>
                <div class="col-lg-4 col-md-6 item p-3">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/kp_monday.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc"><%=rs.getString(9)%>
                            </a>                        
                            <div class="align-items-center">
                                <a href='buyticket.jsp?id=<%=rs.getString(1)%>' class="btn btn-primary">Buy Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                
                <%
                    String category6=rs.getString(6);
                    if(category6.equals("NIRMAL"))
                    {
                %>
                <div class="col-lg-4 col-md-6 item p-3">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/nirmal_friday.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc"><%=rs.getString(9)%>
                            </a>                        
                            <div class="align-items-center">
                                <a href='buyticket.jsp?id=<%=rs.getString(1)%>' class="btn btn-primary">Buy Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
                
                <%
                    String category7=rs.getString(6);
                    if(category7.equals("KARUNYA"))
                    {
                %>
                <div class="col-lg-4 col-md-6 item p-3">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#blog-single.html">
                                <img class="card-img-bottom d-block radius-image-full" src="assets/images/karunya_saturday.jpg"
                                     alt="Card image cap">
                            </a>
                        </div>
                        <div class="card-body text-center">
                            <a href="#blog-single.html" class="blog-desc"><%=rs.getString(9)%>
                            </a>                        
                            <div class="align-items-center">
                                <a href='buyticket.jsp?id=<%=rs.getString(1)%>' class="btn btn-primary">Buy Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>

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