<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyCondo.Register" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>MyCondo - Register</title>
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
    <link href="assets/css/Site.css" rel="stylesheet" type="text/css" />
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
                                            <asp:Table ID="AccountcreationTable" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell Width="125px"></asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="250px">
                                                        <asp:CustomValidator ID="CustomValidator1" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" Font-Bold="true" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell Width="125px"></asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="250px">
                                                        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateAccount" />
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell Width="125px">
                                                    </asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>
                                                        Personal Info
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell Width="125px">
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:RequiredFieldValidator ID="RequiredFname" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtFName" runat="server" ErrorMessage="Please enter a First Name" ValidationGroup="CreateAccount">
                        *
                                                        </asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblFname" runat="server" CssClass="font-weight-medium required" Text="First Name :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtFName" runat="server" placeholder="Enter your First Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:RequiredFieldValidator ID="RequiredLname" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtLName" runat="server" ErrorMessage="Please enter a Last Name" ValidationGroup="CreateAccount">
                        *
                                                        </asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblLName" runat="server" CssClass="font-weight-medium required" Text="Last Name :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtLName" runat="server" placeholder="Enter your Last Name"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:RequiredFieldValidator ID="RequiredEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtEmail" runat="server" ErrorMessage="Please enter a valid email" ValidationGroup="CreateAccount">
                        *
                                                        </asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblEmail" runat="server" CssClass="font-weight-medium required" Text="Email :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:TextBox class="form-control" ID="txtEmail" runat="server" placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:Label ID="lblPhone" runat="server" CssClass="font-weight-medium" Text="Phone Number :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtPNumber" runat="server" placeholder="Enter your PhoneNumber" TextMode="Phone"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                        <!--Adress -->
                                        <div class="form-group mb-3">
                                            <asp:Table ID="AdressTable" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell Width="125px"></asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="250px">
                                                        Adress Info
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell Width="125px">
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:Label ID="lblAdressLine1" runat="server" CssClass="font-weight-medium" Text="Address Line 1 :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtLine1" runat="server" placeholder="Enter Adress Line 1"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:Label ID="lblAdressLine2" runat="server" CssClass="font-weight-medium" Text="Address Line 2 :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtLine2" runat="server" placeholder="Enter Adress Line 2"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:Label ID="lblCity" runat="server" CssClass="font-weight-medium" Text="City :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtCity" runat="server" placeholder="Enter your City"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:Label ID="Label4" runat="server" CssClass="font-weight-medium" Text="Province :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtprovince" runat="server" placeholder="Enter Your Province"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:Label ID="lblZip" runat="server" CssClass="font-weight-medium" Text="Postal Code :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtZip" runat="server" placeholder="Enter your Zip Code"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:Label ID="Label2" runat="server" CssClass="font-weight-medium" Text="Country :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtCountry" runat="server" placeholder="Country"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                        <!--Login Information -->
                                        <div class="form-group mb-3">
                                            <asp:Table ID="Table1" runat="server">
                                                <asp:TableHeaderRow>
                                                    <asp:TableHeaderCell Width="125px"></asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="250px">
                                                        Login Info
                                                    </asp:TableHeaderCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:RequiredFieldValidator ID="RequiredUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtUsername" runat="server" ErrorMessage="Please enter a Username" ValidationGroup="CreateAccount">
                        *
                                                        </asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblUsername" runat="server" CssClass="font-weight-medium required" Text="Username :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtUsername" runat="server" placeholder="Enter a Username"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:RequiredFieldValidator ID="RequiredPwd" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtPwd" runat="server" ErrorMessage="Please enter a Password" ValidationGroup="CreateAccount">
                        *
                                                        </asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblPwd" runat="server" CssClass="font-weight-medium required" Text="Password :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtPwd" runat="server" placeholder="Enter a password" TextMode="Password"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell HorizontalAlign="Right" Width="125px">
                                                        <asp:RequiredFieldValidator ID="RequiredCPwd" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtCPwd" runat="server" ErrorMessage="Please Confirm password" ValidationGroup="CreateAccount">
                        *
                                                        </asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblConfirmPwd" runat="server" CssClass="font-weight-medium required" Text="Confirm PWD :"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox class="form-control" ID="txtCPwd" runat="server" placeholder="Confirm your password" TextMode="Password"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell></asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:CompareValidator ID="ComparePwd" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtCPwd" ControlToCompare="txtPwd" Operator="Equal" Type="String" runat="server" ValidationGroup="CreateAccount" ErrorMessage="The Password Doesn't Match">
                                                            Doesn't Match
                                                        </asp:CompareValidator>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell></asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                        <!--Submit button-->
                                        <div class="form-group row text-center">
                                            <div class="col-12">
                                                <asp:Button class="btn btn-block btn-success waves-effect waves-light" ID="btnCreateAccount" runat="server" Text="Create Account" OnClick="btnCreateAccount_Click" ValidationGroup="CreateAccount" />
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

