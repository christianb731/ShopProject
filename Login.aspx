<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShopProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" Height="254px" OnAuthenticate="Login1_Authenticate" Width="435px">
            </asp:Login>
            Login Page For Shop whick redirect to next Page If password is correct<br />
        </div>
    </form>
</body>
</html>
