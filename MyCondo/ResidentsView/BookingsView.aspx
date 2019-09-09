<%@ Page Title="" Language="C#" MasterPageFile="~/Resident.Master" AutoEventWireup="true" CodeBehind="BookingsView.aspx.cs" Inherits="MyCondo.ResidentsView.BookingsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Bookings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Bookings
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div style="Width:700px" class="objectcenter">
        <asp:GridView ID="BookingsDisplay" Width="700px" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <EmptyDataTemplate>
                <h3>There is no Booking at this moment.<a href="Bookings.aspx">Create One?</a></h3>
            </EmptyDataTemplate>
            <Columns>
                <asp:TemplateField HeaderText="Bookings">
                    <ItemTemplate>
                        <div class="form-group mb-3">
                            <br />
                            <asp:Label ID="lblmessage1" class="header-title font-weight-light" runat="server" Text='You booked'></asp:Label>
                            <asp:Label ID="lblBookingType" class="header-title font-weight-bold" runat="server" Text='<%# Bind("BookingType") %>'></asp:Label>
                            <asp:Label ID="lblmessage2" class="header-title font-weight-light" runat="server" Text='for the'></asp:Label>
                            <asp:Label ID="lbldate" class="header-title font-weight-bold" runat="server" Text='<%# Bind("StartDate") %>'></asp:Label>
                            <asp:Label ID="lblBookingStatus" class="text-muted float-right" runat="server" Text='<%# Bind("BookingStatus") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="XX-Large" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
</asp:Content>