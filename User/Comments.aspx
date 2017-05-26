<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="MariSite.User.Comments" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="ATIS">

    <title>PATROS - HTML5 FREE TEMPLATE</title>

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
    <form runat="server">
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
        <div class="container blog singlepost">
            <div class="row">
                <article class="col-md-8">
                    <h1 class="page-header sidebar-title">
                        <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></h1>
                    <%--<img src="../Themes/patros-web/web/images/unsplash1.jpg" class="img-responsive" alt="photo" />--%>
                    <asp:Image Height="500px" Width="1000px" ID="imgPost" CssClass="img-responsive" runat="server" />
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="entry-meta">
                                <span><i class="fa fa-calendar-o"></i>
                                    <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></span>
                                <span><i class="fa fa-user"></i>Posted by admin</span>
                            </div>
                        </div>
                    </div>
                    <blockquote>
                        <p>
                            <asp:Label ID="lblData" runat="server" Text=""></asp:Label>
                        </p>
                    </blockquote>
                    <!-- Blog Comments -->
                    <div class="comments1">
                        <div class="well">
                            <h4>Leave a Comment:</h4>

                            <div class="form-group">
                                <%--<textarea class="form-control" rows="3"></textarea>--%>
                                <asp:TextBox ID="txtCommentData" TextMode="MultiLine" ForeColor="Black" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                            </div>
                            <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                            <asp:Button ID="btnPostComment" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnPostComment_Click" />
                        </div>
                        <hr>

                        <div class="media">
                            <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
                                <ItemTemplate>
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object" src="../Themes/patros-web/web/images/avatar1.png" alt="">
                                        </a>
                                        &nbsp;<div class="media-body">
                                            <h4 class="media-heading">
                                                <asp:Label ID="Label1" runat="server" Text="<%# Bind('U_Name') %>"></asp:Label>
                                                <small>
                                                    <asp:Label ID="Label5" runat="server" Text="<%# Bind('C_Date') %>"></asp:Label></small>
                                            </h4>
                                            <asp:Label ID="Label6" runat="server" Text="<%# Bind('C_Data') %>"></asp:Label>
                                            <asp:LinkButton ID="lbbtnReply" CssClass="btn btn-primary" runat="server" CommandName="Reply" CommandArgument='<%# Bind("C_Id") %>' ForeColor="White">Reply</asp:LinkButton>
                                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                                                <asp:TextBox ID="txtReplyData" runat="server" TextMode="MultiLine" Height="50" Width="100%"></asp:TextBox>
                                                <asp:Button ID="btnComment" runat="server" CssClass="btn btn-primary" Text="Leave A Reply" CommandName="LeaveReply" CommandArgument='<%#Bind("C_Id") %>' />
                                            </asp:Panel>
                                            <asp:DataList ID="DataList2" runat="server">
                                                <ItemTemplate>
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object" src="../themes/patros-web/web/images/avatar1.png" alt="">
                                                        </a>
                                                        &nbsp;<div class="media-body">
                                                            <h4 class="media-heading">
                                                                <asp:Label ID="label2" runat="server" Text="<%# Bind('U_Name') %>"></asp:Label>
                                                                <small>
                                                                    <asp:Label ID="label3" runat="server" Text="<%# Bind('CR_Date') %>"></asp:Label></small>
                                                            </h4>
                                                            <asp:Label ID="label4" runat="server" Text="<%# Bind('CR_Data') %>"></asp:Label>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </article>
                <!-- Blog Sidebar Column -->
            </div>
        </div>
        <!-- jQuery -->
        <script src="../Themes/patros-web/web/js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="../Themes/patros-web/web/js/bootstrap.min.js"></script>

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
            });
        </script>

        <script>
            $(".nav a").on("click", function () {
                $(".nav").find(".active").removeClass("active");
                $(this).parent().addClass("active");
            });
        </script>

        <script>
            //jQuery for page scrolling feature - requires jQuery Easing plugin
            $(function () {
                $('a.page-scroll').bind('click', function (event) {
                    var $anchor = $(this);
                    $('html, body').stop().animate({
                        scrollTop: $($anchor.attr('href')).offset().top
                    }, 1500, 'easeInOutExpo');
                    event.preventDefault();
                });
            });
        </script>

        <script>
            $(document).ready(function () {
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

