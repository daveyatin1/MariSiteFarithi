<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MariSite.User.Home" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home Page</title>

    <!-- Bootstrap Core CSS -->

    <link href="../Themes/patros-web/web/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../Themes/patros-web/web/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="../Themes/patros-web/web/css/patros.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->

</head>

<body data-spy="scroll">
    <form id="form1" runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img src="../Themes/patros-web/web/images/logo.png" alt="company logo" /></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li>
                            <asp:LinkButton ID="lbLogOut" runat="server" OnClick="lbLogOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Content -->
        <section class="container blog">
            <div class="row">
                <!-- Blog Column -->
                <div class="col-md-8">
                    <div class="blog-sidebar">
                        <!-- /input-group -->
                    </div>
                    <h1 class="page-header sidebar-title">Posts
                    </h1>

                    <asp:DataList ID="DataList1" runat="server" DataKeyField="P_Id" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <div class="row blogu">
                                <div class="col-sm-4 col-md-4 ">
                                    <div class="blog-thumb">
                                        <%--<img class="img-responsive" src="../Themes/patros-web/web/images/blog-photo1.jpg" alt="photo">--%>
                                        <asp:Image Height="150px" Width="200px" ID="Image1" CssClass="img-responsive" runat="server" ImageUrl='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("P_Image")) %>' />
                                    </div>
                                </div>
                                <div class="col-sm-8 col-md-8">
                                    <h2 class="blog-title">
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("P_Id") %>'> <%# Eval("P_Title") %> </asp:LinkButton>
                                    </h2>
                                    <p>
                                        <i class="fa fa-calendar-o"></i>
                                        <asp:Label ID="Label3" runat="server" Text="<%# Bind('P_Date') %>"></asp:Label>
                                        <span class="comments-padding"></span>
                                        <i class="fa fa-comment"></i>
                                        <asp:Label ID="Label4" runat="server" Text="<%# Bind('P_Comments') %>"></asp:Label>
                                        comments
                                    </p>
                                    <p>
                                        <asp:Label ID="Label2" runat="server" Text="<%# Bind('P_Data') %>"></asp:Label></p>
                                </div>
                            </div>
                            <hr>
                        </ItemTemplate>
                    </asp:DataList>
                    <!-- First Blog Post -->

                    <div class="text-center">
                        <ul class="pagination">
                            <li class="active"><a href="#">1</a> </li>
                            <li><a href="#">2</a> </li>
                            <li><a href="#">3</a> </li>
                            <li><a href="#">4</a> </li>
                            <li><a href="#">5</a> </li>
                            <li><a href="#">Next</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Page Content -->
        <%--<section class="container blog">
        <div class="row">
            <!-- Blog Column -->
            <div class="col-md-8">
                <div class="blog-sidebar">
                    <!-- /input-group -->
                </div>
                <h1 class="page-header sidebar-title">Posts
                </h1>

                <!-- First Blog Post -->
                <div class="row blogu">
                    <div class="col-sm-4 col-md-4 ">
                        <div class="blog-thumb">
                            <a href="single-post.html">
                                <img class="img-responsive" src="../Themes/patros-web/web/images/blog-photo1.jpg" alt="photo">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-8">
                        <h2 class="blog-title">
                            <a href="single-post.html">Post title 1</a>
                        </h2>
                        <p>
                            <i class="fa fa-calendar-o"></i>August 28, 2013 
		                        <span class="comments-padding"></span>
                            <i class="fa fa-comment"></i>0 comments
                        </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
                    </div>
                </div>
                <hr>
                <!-- Second Blog Post -->
                <div class="row">
                    <div class="col-sm-4 col-md-4">
                        <div class="blog-thumb">
                            <a href="single-post.html">
                                <img class="img-responsive" src="../Themes/patros-web/web/images/blog-photo2.jpg" alt="photo">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-8">
                        <h2 class="blog-title">
                            <a href="single-post.html">Post title 2</a>
                        </h2>
                        <p>
                            <i class="fa fa-calendar-o"></i>August 28, 2013 
		                       <span class="comments-padding"></span>
                            <i class="fa fa-comment"></i>3 comments
                        </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
                    </div>
                </div>
                <hr>
                <!-- Third Blog Post -->
                <div class="row">
                    <div class="col-sm-4 col-md-4">
                        <div class="blog-thumb">
                            <a href="single-post.html">
                                <img class="img-responsive" src="../Themes/patros-web/web/images/blog-photo3.jpg" alt="photo">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-8">
                        <h2 class="blog-title">
                            <a href="single-post.html">Post title 3</a>
                        </h2>
                        <p>
                            <i class="fa fa-calendar-o"></i>August 28, 2013 
		                        <span class="comments-padding"></span>
                            <i class="fa fa-comment"></i>1 comment
                        </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
                    </div>
                </div>
                <hr>
                <!-- Fourth Blog Post -->
                <div class="row">
                    <div class="col-sm-4 col-md-4">
                        <div class="blog-thumb">
                            <a href="single-post.html">
                                <img class="img-responsive" src="../Themes/patros-web/web/images/blog-photo1.jpg" alt="photo">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-8">
                        <h2 class="blog-title">
                            <a href="single-post.html">Post title 4</a>
                        </h2>
                        <p>
                            <i class="fa fa-calendar-o"></i>August 28, 2013 
		                       <span class="comments-padding"></span>
                            <i class="fa fa-comment"></i>3 comments
                        </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
                    </div>
                </div>
                <hr>
                <!-- Fifth Blog Post -->
                <div class="row">
                    <div class="col-sm-4 col-md-4">
                        <div class="blog-thumb">
                            <a href="single-post.html">
                                <img class="img-responsive" src="../Themes/patros-web/web/images/blog-photo2.jpg" alt="photo">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-8">
                        <h2 class="blog-title">
                            <a href="single-post.html">Post title 5</a>
                        </h2>
                        <p>
                            <i class="fa fa-calendar-o"></i>August 28, 2013 
		                       <span class="comments-padding"></span>
                            <i class="fa fa-comment"></i>3 comments
                        </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
                    </div>
                </div>
                <hr>
                <!-- Six Blog Post -->
                <div class="row">
                    <div class="col-sm-4 col-md-4">
                        <div class="blog-thumb">
                            <a href="single-post.html">
                                <img class="img-responsive" src="../Themes/patros-web/web/images/blog-photo3.jpg" alt="photo">
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-8">
                        <h2 class="blog-title">
                            <a href="single-post.html">Post title 6</a>
                        </h2>
                        <p>
                            <i class="fa fa-calendar-o"></i>August 28, 2013 
		                       <span class="comments-padding"></span>
                            <i class="fa fa-comment"></i>3 comments
                        </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, veritatis, tempora, necessitatibus inventore nisi quam quia repellat ut tempore laborum possimus eum dicta id animi corrupti debitis ipsum officiis rerum.</p>
                    </div>
                </div>
                <hr>
                <div class="text-center">
                    <ul class="pagination">
                        <li class="active"><a href="#">1</a> </li>
                        <li><a href="#">2</a> </li>
                        <li><a href="#">3</a> </li>
                        <li><a href="#">4</a> </li>
                        <li><a href="#">5</a> </li>
                        <li><a href="#">Next</a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>--%>




        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>


        <!--Jquery Smooth Scrolling-->
        <script>
            $(document).ready(function () {
                $('.custom-menu a[href^="#"], .intro-scroller .inner-link').on('click', function (e) {
                    e.preventDefault();

                    var target = this.hash;
                    var $target = $(target);

                    $('html, body').stop().animate({
                        'scrollTop': $target.offset().top
                    }, 900, 'swing', function () {
                        window.location.hash = target;
                    });
                });

                $('a.page-scroll').bind('click', function (event) {
                    var $anchor = $(this);
                    $('html, body').stop().animate({
                        scrollTop: $($anchor.attr('href')).offset().top
                    }, 1500, 'easeInOutExpo');
                    event.preventDefault();
                });

                $(".nav a").on("click", function () {
                    $(".nav").find(".active").removeClass("active");
                    $(this).parent().addClass("active");
                });

                $('body').append('<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up"></span></div>');
                $(window).scroll(function () {
                    if ($(this).scrollTop() != 0) {
                        $('#toTop').fadeIn();
                    } else {
                        $('#toTop').fadeOut();
                    }
                });
                $('#toTop').click(function () {
                    $("html, body").animate({ scrollTop: 0 }, 700);
                    return false;
                });

            });
        </script>

    </form>

</body>
</html>
