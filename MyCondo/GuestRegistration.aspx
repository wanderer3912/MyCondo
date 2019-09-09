<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GuestRegistration.aspx.cs" Inherits="MyCondo.GuestRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Guest Registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
        Guest Registration
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
     <div class="account-box mb-3">
        <asp:Table ID="CreateGuest" runat="server">


            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateGuest" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell CssClass="font-weight-bold">Create New Guest Registration</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName" runat="server" ErrorMessage="Please enter a valid date" ValidationGroup="CreateGuest">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtName" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Visitor Type: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="VisitorTypeDropDown" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT * FROM [VisitorType]"></asp:SqlDataSource>
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Parking Required: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="chkParking" runat="server" />
                    </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnCreateGuest" class="btn btn-block btn-success waves-effect waves-light" OnClick="btnCreateGuest_Click" runat="server" Text="Register Guest" ValidationGroup="CreateGuest" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
