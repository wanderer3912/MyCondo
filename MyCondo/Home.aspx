<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyCondo.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="btncreateNews" class="btn btn-block btn-success waves-effect waves-light float-right" OnClick="btncreateNews_Click" runat="server" Text="Create News" />
                <asp:GridView ID="NewsFeedView" OnRowDataBound="NewsFeedView_RowDataBound" Width="700px" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <EmptyDataTemplate>
                        <h3>There is no news at this moment.<a href="CreateNews.aspx">Create One?</a></h3>
                    </EmptyDataTemplate>

                    <Columns>
                        <asp:TemplateField HeaderText="News">
                            <ItemTemplate>
                                <div class="form-group mb-3">
                                    <br />
                                    <asp:Label ID="lblTitle" class="header-title font-weight-bold" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                    <asp:Label ID="lblDate" class="text-muted float-right" runat="server" Text='<%# Bind("Creationdate") %>'></asp:Label>
                                </div>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                                <asp:Label ID="lblpoint" runat="server" Text='...'></asp:Label>
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
            </asp:TableCell>
            <asp:TableCell Width="250px"></asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnCreateBooking" class="btn btn-block btn-success waves-effect waves-light float-right" OnClick="btnCreateBooking_Click" runat="server" Text="Create Bookings" />
                <asp:GridView ID="BookingsView" OnRowDataBound="NewsFeedView_RowDataBound" Width="700px" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <EmptyDataTemplate>
                        <h3>There is no Booking at this moment.<a href="Bookings.aspx">Create One?</a></h3>
                    </EmptyDataTemplate>
                    <Columns>
                        <asp:TemplateField HeaderText="Bookings">
                            <ItemTemplate>
                                <div class="form-group mb-3">
                                    <br />
                                    <asp:Label ID="lblName" class="header-title font-weight-bold" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                    <asp:Label ID="lblmessage" class="header-title font-weight-light" runat="server" Text='booked'></asp:Label>
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
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SelectShortBookingsDisplay" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
