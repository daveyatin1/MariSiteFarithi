<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MariSite.User.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->
    <link href="../Themes/NiceAdmin/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="../Themes/NiceAdmin/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="../Themes/NiceAdmin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="../Themes/NiceAdmin/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="../Themes/NiceAdmin/css/style.css" rel="stylesheet">
    <link href="../Themes/NiceAdmin/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    
</head>

<body class="login-img3-body">
    <div class="container">

        <form class="login-form" runat="server">
            <div class="login-wrap">
                <p class="login-img"><i class="icon_lock_alt"></i></p>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_profile"></i></span>
                    <%--<input type="text" class="form-control" placeholder="Username" autofocus>--%>
                    <asp:TextBox ID="txtUname" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                    <%--<input type="password" class="form-control" placeholder="Password">--%>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <%--<button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
                <button class="btn btn-info btn-lg btn-block" type="submit">Signup</button>--%>
                <asp:Button ID="btnlogin" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Login" OnClick="btnlogin_Click"/>
                <asp:Button ID="btnSignup" CssClass="btn btn-info btn-lg btn-block" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
            </div>
        </form>

    </div>
</body>
</html>

