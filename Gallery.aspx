<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="ShopProject.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        * {
            box-sizing: border-box;
        }

        .row {
            display: flex;
        }

        /* Create three equal columns that sits next to each other */
        .column {
            flex: 33.33%;
            padding: 55px;
        }

        .image {
            border-color: Black;
            border-style: Solid;
            height: 250px;
            width: 265px;
        }

        .description {
            font-size: Small;
            font-weight: bold;
        }
        .auto-style1 {
            margin-left: 1320px;
        }
    </style>

    <asp:Button ID="ClearCart" runat="server" Text="Clear Cart" OnClick="ClearCart_Click" BackColor="Red" CssClass="auto-style1" Height="29px" Width="109px" />

    <asp:GridView ID="productsGridView" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="row">
                        <div class="column">
                            <asp:Image runat="server" ID="test" BorderColor="Black" BorderStyle="Solid" ImageUrl='<%# Bind("ImagePath") %>' Style="margin-left: 0px" CssClass="image" />
                                                        </br>
                            <asp:Label ID="LabelName1" runat="server" Text='<%# Bind("name") %>' CssClass="description"></asp:Label>
                            <asp:Label ID="Price" runat="server" Text='<%# Bind("Price") %>' CssClass="description"></asp:Label>
                            </br>
                                                        </br>
                            <asp:Button ID="AddToCart" runat="server" Text="Add to Cart" OnClick="AddToCart_Click" CommandArgument='<%# Eval("Id") %>' BackColor="Green" HorizontalAlign="Center" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
