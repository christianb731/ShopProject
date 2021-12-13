<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShopProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('ART/paint.JPG'); height: 577px;">
            
            <asp:Login ID="Login1" runat="server" Height="400px" OnAuthenticate="Login1_Authenticate" Width="603px" style="text-align: left; margin-left: 307px; margin-top: 66px">
            </asp:Login>
            Login Page For Shop whick redirect to next Page If password is correct<br />
            <asp:Button ID="Button1" runat="server" Text="Register" style="text-align: left; margin-left: 855px;" OnClick="Button1_Click1" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
