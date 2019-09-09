<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateNews.aspx.cs" Inherits="MyCondo.CreateNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Create News
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Add News
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div class="account-box mb-3">
        <asp:Table ID="Createnewstable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateNews" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell CssClass="font-weight-bold">Create a new feed</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell><br /></asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredTitle" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTitle" runat="server" ErrorMessage="Please enter a title" ValidationGroup="CreateNews">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Title: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTitle" class="form-control" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredDescription" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDescription" runat="server" ErrorMessage="Please enter a Description" ValidationGroup="CreateNews">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Description: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" TextMode="MultiLine" CssClass="form-control rounded-0" Rows="5"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Expiry Date: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtExpiryDate" class="form-control" runat="server" TextMode="Date" Text=""></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Priority: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="PriorityDropDown" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="PriorityName" DataValueField="PriorityName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT * FROM [Priority]"></asp:SqlDataSource>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Group: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="GroupDropDown" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="GroupName" DataValueField="GroupName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT * FROM [Usergroup]"></asp:SqlDataSource>
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
                    <asp:Button ID="btnCreateNews" class="btn btn-block btn-success waves-effect waves-light" runat="server" Text="Create news" OnClick="btnCreateNews_Click" ValidationGroup="CreateNews" />
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
