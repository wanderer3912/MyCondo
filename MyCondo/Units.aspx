<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Units.aspx.cs" Inherits="MyCondo.Unit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Create Unit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Create Unit
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
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateUnit" />
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

            <asp:TableRow>
                <asp:TableCell HorizontalAlign ="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtUnitNumber" runat="server" ErrorMessage="Please enter a valid Unit Number" ValidationGroup="CreateUnit">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Unit Number: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtUnitNumber" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtOccupancy" runat="server" ErrorMessage="Please enter a valid occupancy" ValidationGroup="CreateUnit">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Occupancy: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOccupancy" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">                  
                    <asp:Label runat="server" class="font-weight-medium" Text="Owner User ID: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOwnerUserID" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">                    
                    <asp:Label runat="server" class="font-weight-medium" Text="Unit Address ID: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtUnitAddressID" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">                    
                    <asp:Label runat="server" class="font-weight-medium" Text="Owner Address ID: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOwnerAddressID" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Occupancy Date:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOccupancyDate" class="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
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
                    <asp:Button ID="btnCreateUser" class="btn btn-block btn-success waves-effect waves-light" OnClick="btnCreateUnit_Click" runat="server" Text="Create new Unit" ValidationGroup="CreateUnit" />
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

