<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MariSite.User.SignUp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Dark Admin</title>

    <link rel="stylesheet" type="text/css" href="../Themes/Theme-DarkAdmin/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../Themes/Theme-DarkAdmin/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../Themes/Theme-DarkAdmin/css/local.css" />

    <script type="text/javascript" src="../Themes/Theme-DarkAdmin/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../Themes/Theme-DarkAdmin/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form runat="server">
        <div id="wrapper">
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12 text-center v-center">
                        <h1>Sign Up</h1>
                        <p class="lead">Enter your Email and Password to Sign-Up</p>
                        <br>
                        <br>
                        <br>
                        <form class="col-lg-12">
                            <div class="input-group" style="width: 340px; text-align: center; margin: 0 auto;">
                                <%--<input class="form-control input-lg" title="Confidential signup."
                                placeholder="Enter your email address" type="text">--%>
                                <asp:TextBox ID="txtEmailAddress" CssClass="form-control input-lg" placeholder="Enter your email address" runat="server"></asp:TextBox>
                                <asp:TextBox ID="txtPassword" CssClass="form-control input-lg" TextMode="Password" placeholder="Enter your Password" runat="server"></asp:TextBox>
                                <br />
                                <%--<button class="btn btn-lg btn-primary" type="button">OK</button>--%>
                                <asp:Button ID="btnSignup" CssClass="btn btn-lg btn-primary" runat="server" Text="SignUp" OnClick="btnSignup_Click" />
                            </div>
                        </form>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <!-- /.row -->

            </div>
            <!-- /#page-wrapper -->
        </div>
    </form>
</body>
</html>

