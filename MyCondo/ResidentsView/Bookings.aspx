<%@ Page Title="" Language="C#" MasterPageFile="~/Resident.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="MyCondo.ResidentsView.Bookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Bookings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Bookings
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div class="account-box mb-3">
        <asp:Table ID="Createnewstable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:Label ID="lblDatealreadyBooked" runat="server" Text="The period you have choosen is already booked" ForeColor="Red" Visible="False"></asp:Label>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Width="150px"></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Bold="true" DisplayMode="BulletList" HeaderText="Please fill the required field" runat="server" ValidationGroup="CreateBookings" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableHeaderRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell CssClass="font-weight-bold">Create a new Booking</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                <asp:Label runat="server" class="font-weight-medium" Text="Type: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="BookingTypeDropDown" class="form-control" runat="server" OnSelectedIndexChanged="BookingTypeDropDown_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT * FROM [BookingType]"></asp:SqlDataSource>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtstartDate" runat="server" ErrorMessage="Please enter a valid date" ValidationGroup="CreateBookings">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Start Date: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtStartDate" class="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:CompareValidator ID="ComparePwd" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtEndDate" ControlToCompare="txtStartDate" Operator="GreaterThan" Type="String" runat="server" ValidationGroup="CreateBookings" ErrorMessage="The end date must be bigger than the start date">
                        Invalid date
                    </asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtEndDate" runat="server" ErrorMessage="Please enter a valid date" ValidationGroup="CreateBookings">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="End Date: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEndDate" class="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:RequiredFieldValidator ID="RequiredDescription" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtDescription" runat="server" ErrorMessage="Please enter a Description" ValidationGroup="CreateBookings">
                        *
                    </asp:RequiredFieldValidator>
                    <asp:Label runat="server" class="font-weight-medium required" Text="Description: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" TextMode="MultiLine" CssClass="form-control rounded-0" Rows="5"></asp:TextBox>
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
                    <asp:Button ID="btnCreatebooking" class="btn btn-block btn-success waves-effect waves-light" OnClick="btnCreatebooking_Click" runat="server" Text="Create new Booking" ValidationGroup="CreateBookings" />
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
