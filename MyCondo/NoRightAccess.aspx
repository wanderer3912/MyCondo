<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoRightAccess.aspx.cs" Inherits="MyCondo.NoRightAccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>You dont have the right authorisation</h1>
        <asp:Button ID="Button1" runat="server" Text="Return Home" OnClick="Button1_Click" />
        <div>
        </div>
    </form>
</body>
</html>
