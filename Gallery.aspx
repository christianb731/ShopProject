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
.image{
        border-color: Black;
    border-style: Solid;
    height: 250px;
    width: 265px;
}
.description{
    font-size: X-Small;
}
</style>
            



    <div class="row">
  <div class="column">
            <asp:Image ID="Image7" runat="server" BorderColor="Black" BorderStyle="Solid" ImageUrl="~/Art/intimate.jpg" style="margin-left: 0px" CssClass="image" />
            <br />
            <br />
            <asp:Label ID="LabelName1" runat="server"  Text="Pablo Picasso, Femme au béret orange et au col de fourrure (Marie‐Thérèse), 1937" CssClass="description"></asp:Label>
            <br />
            <br />
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" BackColor="Red" />
</div>
  <div class="column">
<asp:Image ID="Image8" runat="server" BorderColor="Black" BorderStyle="Solid" ImageUrl="~/Art/Arlequin.jpg" CssClass="image" />  
      <br />
      <br />
            <asp:Label ID="LabelName2" runat="server"  Text="Pablo Picasso (Spanish, Malaga 1881–1973 Mougins, France)" CssClass="description"></asp:Label>
      <br />
      <br />
                        <asp:Button ID="Button5" runat="server" Text="Add to Cart" />
      <br />
        </div>
  <div class="column">
      <asp:Image ID="Image9" runat="server"  BorderColor="Black" BorderStyle="Solid" ImageUrl="~/Art/OIP.jfif"  CssClass="image" />
      <br />
      <br />
      <asp:Label ID="LabelName3" runat="server"  Text="    Unknown" CssClass="description"></asp:Label>
      <br />
      <br />
                        <asp:Button ID="Button6" runat="server" Text="Add to Cart" />
        </div>
</div>

      <div class="row">
  <div class="column">
            <asp:Image ID="Image4" runat="server"  BorderColor="Black" BorderStyle="Solid" ImageUrl="~/Art/Mona-Lisa.jpg" CssClass="image" />
            <br />
            <br />
      <asp:Label ID="LabelName4" runat="server"  Text="Mona Lisa, oil on wood panel by Leonardo da Vinci, c. 1503–19; in the Louvre, Paris." CssClass="description"></asp:Label>
            <br />
            <br />
                        <asp:Button ID="Button2" runat="server" Text="Add to Cart" />
</div>
  <div class="column">
<asp:Image ID="Image5" runat="server"  BorderColor="Black" BorderStyle="Solid" ImageUrl="~/Art/PearlEarrin.png"  CssClass="image" />      
      <br />
      <br />
      <asp:Label ID="LabelName5" runat="server"  Text="Johannes Vermeer (Delft 1632 - 1675 Delft)" CssClass="description"></asp:Label>
      <br />
      <br />
                        <asp:Button ID="Button3" runat="server" Text="Add to Cart" />
          </div>
  <div class="column">
<asp:Image ID="Image6" runat="server"  BorderColor="Black" BorderStyle="Solid" ImageUrl="~/Art/StarryNight.jpg" CssClass="image" />
                 <br />
      <br />
      <asp:Label ID="LabelName6" runat="server"  Text=" The Starry Night,Vincent van Gogh,  June 1889," CssClass="description"></asp:Label>
                 <br />
      <br />
                        <asp:Button ID="Button4" runat="server" Text="Add to Cart" />
      <br />
          </div>
</div>




</asp:Content>
