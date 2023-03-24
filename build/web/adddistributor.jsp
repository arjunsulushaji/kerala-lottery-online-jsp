<%
      int i=100;
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/digital_lottery","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String sele="select * from distributor";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    while(rs.next())  
        i++;
    //stmt.executeUpdate(ins);
    //out.println(ins);
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>
<%
    long currentTimeInSeconds = System.currentTimeMillis() / 1000;
%>
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
                <div class="heading text-center">
                    <h3 class="category-title mb-3" style="color: #5a67d8;">Add Agents</h3>               
                </div>
                <div class="row">
                    <div class="col-lg-8 form-inner-cont pt-3" style="margin-left: 1rem;">
                        <form action="adddistributornext.jsp" method="post" class="signin-form" id="signin-form">
                            <div class="form-grids"> 

                                <input type="text" name="distributorid" id="w3lName" value="DID<%=i%><%=currentTimeInSeconds%>"
                                       hidden="" />                                
                                <div class="form-input">
                                    <input type="text" name="distributorname" id="w3lName" placeholder="Enter agent name *"
                                           required="" />
                                </div>
                                <div class="form-input">
                                    <input type="email" name="distributoremail" id="w3lSubject" placeholder="Enter agent email *"
                                           required />
                                </div>
                                <div class="form-input">
                                    <input type="password" name="distributorpass" id="w3lSender" placeholder="Enter agent password *"
                                           required />
                                </div>
                                <div class="form-input">
                                    <input type="text" name="distributordistrict" id="w3lPhone" placeholder="Enter agent district *"
                                           required />
                                </div>
                                <div class="form-input">
                                    <input type="text" name="distributorshopname" id="w3lPhone" placeholder="Enter agent shop name *"
                                           required />
                                </div>
                                <div class="form-input">
                                    <input type="number" name="agentpincode" id="pincode" placeholder="Enter agent pincode *"
                                           required />
                                    <p style="color:red; display: none;" id="error2" class="pt-2 pl-3">* Please enter six digit only !</p>
                                </div>                                                                                            
                            </div>
                            <div class="form-input pt-3">
                                <input type="number" name="agentmobno" id="Phone" placeholder="Enter agent mobile number *"
                                       required />
                                <p style="color:red; display: none;" id="error1" class="pt-2 pl-3">* Please enter ten digit only !</p>
                            </div> 
                            <div class="form-input">
                                <textarea type="text" name="agentaddress" rows="3" id="w3lPhone" placeholder="Enter agent address *"
                                          required /></textarea>
                            </div>
                            <div class="text-right pt-2">
                                <button class="btn btn-style btn-primary">Add Agent</button>
                            </div>
                        </form>
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
        $(document).ready(() => {
            $("#signin-form").submit(function (e) {
                var pincode = $('#pincode').val();
                if (pincode.length != 6) {
                    $("#error2").show();
                    e.preventDefault();
                } else {
                    $("#error2").hide();
                }
            });
        });

        $(document).ready(() => {
            $("#signin-form").submit(function (e) {
                var mobno = $('#Phone').val();
                if (mobno.length != 10) {
                    $("#error1").show();
                    e.preventDefault();
                } else {
                    $("#error1").hide();
                }
            });
        });

        $(document).ready(() => {
            $("#signin-form").submit(function (e) {
                var mobno = $('#Phone').val();
                var pincode = $('#pincode').val();
                if (pincode.length != 6) {
                    e.preventDefault();
                } else {
                    if (mobno.length != 10) {
                        e.preventDefault();
                    } else {
                        e.currentTarget.submit();
                    }
                }
            });
        });
    </script>

</body>

</html>