<%@ Page Title="" Language="C#" MasterPageFile="~/Resident.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="MyCondo.ResidentsView.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Feedback
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Feedback
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
        <div class="account-box mb-3">
        <asp:Table ID="feedbackForm" runat="server">

            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateFeedback" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell CssClass="font-weight-bold">Create Feedback</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredMessage" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMessage" runat="server" ErrorMessage="Please enter your Message. Message field can not be blank" ValidationGroup="CreateFeedback">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Message: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtMessage" class="form-control" runat="server" TextMode="MultiLine" CssClass="form-control rounded-0" Rows="5"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Service used:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ServicesDropDown" runat="server" DataSourceID="SqlDataSource2" DataTextField="Services" DataValueField="RequestId"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="DisplayServiceRequested" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Feedback for:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ResidentDropDown" runat="server" DataSourceID="SqlDataSource2" DataTextField="Residents" DataValueField="UserId"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="DisplayResidents" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btnSubmitFeedback" class="btn btn-block btn-success waves-effect waves-light" runat="server" Text="Send Feedback" ValidationGroup="CreateFeedback" />
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