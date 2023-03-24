
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

        <title>Admin Panel</title>

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
                                <a class="nav-link" href="admin.jsp">Home</a>
                            </li>
                            <li class="nav-item @@home__active">
                                <a class="nav-link" href="logout.jsp">Logout</a>
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
    <!-- contacts-5-grid -->
    <div class="w3l-contact-10" id="contact">
        <div class="form-41-mian pt-lg-4 pt-md-3 pb-md-4">
            <div class="container">
                <div class="heading text-center" style="padding-top: 2rem;">
                    <h3 class="category-title mb-3">ADMIN PANEL</h3>               
                </div>
                <div class="heading text-center pt-5">
                    <a href="adddistributor.jsp" class="btn btn-primary">ADD AGENTS</a>              
                </div>
                <div class="pt-4 text-center">
                    <p>
                        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            ADDED AGENTS
                        </a>                               
                    </p>
                    <div class="collapse" id="collapseExample">
                        <div class="card card-body">

                            <table class="table">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">DISTRIBUTOR ID</th>
                                        <th scope="col">NAME</th>
                                        <th scope="col">EMAIL</th>
                                        <th scope="col">DISTRICT</th>
                                        <th scope="col">SHOP NAME</th>                                       
                                        <th scope="col">ADDRESS</th>
                                        <th scope="col">MOB NO</th>
                                        <th scope="col">REMOVE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver");  
                              java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
                              java.sql.Statement stmt=con.createStatement();  
                             String sele="SELECT *FROM distributor ";
                               java.sql.ResultSet rs=stmt.executeQuery(sele);  
                              while(rs.next()) 
                              {
    
                                    %>
                                    <tr>
                                        <th scope="row"><%=rs.getString(1) %></th>
                                        <td><%=rs.getString(2) %></td>
                                        <td><%=rs.getString(3) %></td>
                                        <td><%=rs.getString(5) %></td>
                                        <td><%=rs.getString(6) %></td>                                        
                                        <td><%=rs.getString(8) %></td>   
                                        <td><%=rs.getString(9) %></td>
                                        <td><a href='distributorremove.jsp?id=<%=rs.getString(1) %>' class="btn btn-danger alert-link">Remove</a></td>
                                    </tr> 
                                    <%
                                              }
                                        con.close();  
                                        }catch(Exception ee)
                                        {
                                        out.println("error "+ee);
                                    }                                         
                                                
                                    %>
                                </tbody>
                            </table>                                                                      
                        </div>
                    </div>
                </div>
            </div>
            <!-- //contacts-5-grid -->
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
    
    <script>
            // Select all the a tags with class 'alert-link'
            const links = document.querySelectorAll('.alert-link');

            // Attach an onclick event listener to each a tag
            links.forEach(function (link) {
                link.addEventListener('click', function (event) {
                    // Show confirmation dialog and prevent the default behavior
                    const confirmation = confirm('Are you sure you want to remove agent ?');
                    if (!confirmation) {
                        event.preventDefault();
                        return false;
                    }
                    return true;
                });
            });
        </script>

</body>

</html>