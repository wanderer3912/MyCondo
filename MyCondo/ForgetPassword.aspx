<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="MyCondo.ForgetPassword" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>MyCondo - GetMypassword</title>
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
    <form id="form1" runat="server">
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
                                        <div class="form-group mb-3">
                                            <asp:Label ID="LblMessage" runat="server" Font-Bold="true" ForeColor="Red"
                                                Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;THE PASSWORD WILL BE SENT TO YOUR EMAIL"></asp:Label>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="emailaddress" class="font-weight-medium">Email</label>
                                            <asp:TextBox class="form-control" ID="txtEmail" runat="server" placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
                                        </div>
                                        <div class="form-group row text-center">
                                            <div class="col-12">
                                                <asp:Button class="btn btn-block btn-success waves-effect waves-light" ID="btnSendPassword" runat="server" Text="Send Password" OnClick="btnSendPassword_Click" />
                                            </div>
                                        </div>


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
    </form>
    <!-- end form -->
</body>
</html>

