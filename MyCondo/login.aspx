<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MyCondo.login" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>MyCondo - Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico" />

    <!-- Icons css -->
    <link href="assets/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/dripicons/webfont/webfont.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />

    <!-- App css -->
    <!-- build:css -->
    <link href="assets/css/app.css" rel="stylesheet" type="text/css" />
    <!-- endbuild -->

</head>

<body class="bg-account-pages">

    <!-- Login -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <div class="wrapper-page">
                        <div class="account-pages">
                            <div class="account-box">

                                <!-- Logo box-->
                                <div class="account-logo-box">
                                    <h2 class="text-uppercase text-center">
                                        <a href="Home.aspx" class="text-success">
                                            <span>
                                                <img src="assets/images/logo.png" alt="" height="40" /></span>
                                        </a>
                                    </h2>
                                </div>
                                <div class="account-content">
                                    <form method="get" runat="server">
                                        <asp:ScriptManager ID="ScriptManager" runat="server" />
                                        <div>
                                            <asp:Timer ID="codeTimingTime" runat="server" Enabled="false" Interval="1000" OnTick="Timer1_Tick">
                                            </asp:Timer>
                                        </div>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="codeTimingTime" EventName="Tick" />
                                            </Triggers>
                                            <ContentTemplate>
                                                <asp:Label ID="lblValidation" runat="server" ForeColor="Red"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <div class="form-group mb-3">
                                            <asp:Label ID="lblUsername" class="font-weight-medium" runat="server" Text="Username"></asp:Label>
                                            <asp:TextBox class="form-control" ID="txtUsername" runat="server" placeholder="Enter your username"></asp:TextBox>
                                        </div>
                                        <div class="form-group mb-3">
                                            <a href="ForgetPassword.aspx" class="text-muted float-right">
                                                <small>
                                                    <asp:Label ID="lblForgotPwd" runat="server" Text="Forgot your password?"></asp:Label>
                                                </small></a>
                                            <asp:Label ID="lblPwd" class="font-weight-medium" runat="server" Text="Password"></asp:Label>
                                            <asp:TextBox class="form-control" ID="txtPassword" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
                                            <a href="Register.aspx" class="text-muted float-right">
                                                <small>
                                                    <asp:Label ID="lblRegister" runat="server" Text="Don't have account? Create!"></asp:Label>
                                                </small></a>
                                            <br />
                                        </div>
                                        <div class="form-group row text-center">
                                            <div class="col-12">
                                                <asp:Button class="btn btn-block btn-success waves-effect waves-light" ID="btnSubmit" runat="server" Text="Sign In" OnClick="btnSubmit_Click" />
                                            </div>
                                        </div>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="codeTimingTime" EventName="Tick" />
                                            </Triggers>
                                            <ContentTemplate>
                                                <asp:Label ID="lblTime" class="text-danger float-right" runat="server" Visible="False"></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <div class="form-group mb-3">
                                            <asp:Label ID="lblverificationMessage" class="font-weight-medium" runat="server" Text="Enter Verification Code" Visible="False"></asp:Label>
                                            <asp:TextBox class="form-control" ID="txtVerificationtext" runat="server" placeholder="Enter your Confirmation Code" Visible="False" TextMode="Number"></asp:TextBox>
                                        </div>
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="codeTimingTime" EventName="Tick" />
                                            </Triggers>
                                            <ContentTemplate>
                                                <div class="form-group row text-center">
                                                    <div class="col-12">
                                                        <asp:Button class="btn btn-block btn-success waves-effect waves-light" ID="btnConfirm" runat="server" Text="Confirm" Visible="False" OnClick="btnConfirm_Click" />
                                                        <asp:Button class="btn btn-block btn-success waves-effect waves-light" ID="btnSendCode" runat="server" Text="Send New Code" Visible="False" OnClick="btnSendCode_Click" />
                                                    </div>
                                                </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </form>
                                    <!-- end form -->

                                </div>
                                <!-- end account-content -->

                            </div>
                            <!-- end account-box -->
                        </div>
                        <!-- end account-page-->
                    </div>
                    <!-- end wrapper-page -->

                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- END HOME -->


    <!-- jQuery  -->
    <script src="assets/libs/jquery/jquery.min.js"></script>
    <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/libs/metismenu/metisMenu.min.js"></script>

    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>

</body>
</html>

