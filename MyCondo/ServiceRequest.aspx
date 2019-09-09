<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ServiceRequest.aspx.cs" Inherits="MyCondo.ServiceRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Request Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Request Service
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div class="account-box mb-3">
        <asp:Table ID="CreateUnitsTable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:Label ID="lblUnitAlreadyBooked" runat="server" Text="The Unit Number is already booked" ForeColor="Red" Visible="False"></asp:Label>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="ServiceRequest" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell CssClass="font-weight-bold">Create a new Unit</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>

            <%--<asp:TableRow>
                <asp:TableCell HorizontalAlign ="Right">
                    
                    <asp:Label runat="server" class="font-weight-medium required" Text="User Id: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtUserId" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>--%>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Request for:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ResidentDropDown" runat="server" DataSourceID="SqlDataSource2" DataTextField="Residents" DataValueField="UserId"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="DisplayResidents" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtSubject" runat="server" ErrorMessage="Subject line cannot be blank" ValidationGroup="ServiceRequest">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Subject: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSubject" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>

                <asp:TableCell HorizontalAlign="Right">    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDescription" runat="server" ErrorMessage="Please give the description of the service" ValidationGroup="ServiceRequest">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium" Text="Description: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
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
                    <asp:Button ID="btnRequestService" class="btn btn-block btn-success waves-effect waves-light" OnClick="BtnRequestService_Click" runat="server" Text="Request Service" ValidationGroup="ServiceRequest" />
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

