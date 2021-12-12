<%@ Page Title="test" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShopProject.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="ClearCart" runat="server" Text="Clear Cart" OnClick="ClearCart_Click" BackColor="Red" />
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" />
</asp:Content>
