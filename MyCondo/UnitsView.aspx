<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UnitsView.aspx.cs" Inherits="MyCondo.UnitsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Units
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadLine" runat="server">
    Units
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <div style="Width:700px" class="objectcenter">
        <asp:Button ID="btnCreateBooking" class="btn btn-block btn-success waves-effect waves-light float-right" OnClick="btnCreateUnit_Click" runat="server" Text="Create new Unit" />
        </div>
    <div>
        <asp:GridView ID="GridView1" OnRowDataBound="UnitDisplay_RowDataBound" Width="700px" runat="server" OnSelectedIndexChanged="UnitDisplay_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Font-Size="Medium" GridLines="Horizontal">
            <EmptyDataTemplate>
                <h3>There are no Unit at this moment.<a href="Units.aspx">Create One?</a></h3>
            </EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="unitNumber" HeaderText="unitNumber" InsertVisible="False" ReadOnly="True" SortExpression="unitNumber" />
                <asp:BoundField DataField="Occupancy" HeaderText="Occupancy" SortExpression="Occupancy" />
                <asp:BoundField DataField="OwnerUserId" HeaderText="OwnerUserId" SortExpression="OwnerUserId" />
                <asp:BoundField DataField="UnitAdressId" HeaderText="UnitAdressId" SortExpression="UnitAdressId" />
                <asp:BoundField DataField="OwnerAdressId" HeaderText="OwnerAdressId" SortExpression="OwnerAdressId" />
                <asp:BoundField DataField="Occupancydate" HeaderText="Occupancydate" SortExpression="Occupancydate" />
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
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MyCondo %>" SelectCommand="SELECT * FROM [Units] ORDER BY [unitNumber]"></asp:SqlDataSource>
   </div>
</asp:Content>
