<%@ Page Title="" Language="C#" MasterPageFile="~/Resident.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="MyCondo.ResidentsView.Complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Complaint
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Complaint
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div class="account-box mb-3">
        <asp:Table ID="CreateUnitsTable" runat="server">
            
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="Complaint" />
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtReporterName" runat="server" ErrorMessage="Reporter Name cannot be blank" ValidationGroup="Complaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Reporter Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtReporterName" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtTitle" runat="server" ErrorMessage="Please provide the title of the complaint" ValidationGroup="Complaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium" Text="Title: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTitle" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

             <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMessage" runat="server" ErrorMessage="Please give the description of the complaint" ValidationGroup="Complaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium" Text="Complaint Message: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtMessage" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
          <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDate" runat="server" ErrorMessage="Please enter a valid date" ValidationGroup="Complaint">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Date: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDate" class="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
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
                    <asp:Button ID="btnReportComplaint" class="btn btn-block btn-success waves-effect waves-light" OnClick="BtnRequestService_Click" runat="server" Text="Request Service" ValidationGroup="ServiceRequest" />
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