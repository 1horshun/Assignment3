 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment3.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <div class="grid-container">
        <div class="product1">
            <div class="image-box">
                 <div class="img">
                <asp:Image class="product-img" ID="Image1" runat="server" src="images/march/set/A-1038.jpg"/>
            </div>
            <div class="overlay">
                <asp:Image class="overlay-img" ID="Image2" runat="server" src="images/march/set/A-1040.jpg"/>
            </div>
            </div>
          
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label1" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label2" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label3" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label4" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Add to Cart"/>
            </div>
        </div>

        <div class="product2">
            <div class="image-box">
                <asp:Image class="product-img" ID="Image3" runat="server" src="images/march/top/A-1122.jpg"/>
            <div class="overlay">
                <asp:Image class="overlay-img" ID="Image4" runat="server" src="images/march/top/A-1120.jpg"/>
            </div>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label5" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label6" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label7" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label8" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button CssClass="btn" ID="Button2" runat="server" Text="Add to Cart" />
            </div>
        </div>

         <div class="product3">
            <div class="image-box">
                <asp:Image class="product-img" ID="Image5" runat="server" src="images/march/top/A-1128.jpg"/>
            <div class="overlay">
                <asp:Image class="overlay-img" ID="Image6" runat="server" src="images/march/top/A-1132.jpg"/>
            </div>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label9" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label10" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label11" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label12" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button CssClass="btn" ID="Button3" runat="server" Text="Add to Cart" />
            </div>
        </div>

         <div class="product4">
            <div class="image-box">
                <asp:Image class="product-img" ID="Image7" runat="server" src="images/march/top/A-1179.jpg"/>
            <div class="overlay">
                <asp:Image class="overlay-img" ID="Image8" runat="server" src="images/march/top/A-1181.jpg"/>
            </div>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label13" runat="server" Text="Top"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label14" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label15" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label16" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button4" runat="server" Text="Add to Cart" />
            </div>
        </div>
        
        <div class="product5">
            <div class="image-box">
                <asp:Image class="product-img" ID="Image5" runat="server" src="images/march/set/A-1188.jpg"/>
            <div class="overlay">
                <asp:Image class="overlay-img" ID="Image17" runat="server" src="images/march/set/A-1040.jpg"/>
            </div>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label17" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label18" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label19" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label20" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button5" runat="server" Text="Add to Cart" />
            </div>
        </div>
        <div class="product6">
            <div class="image-box">
                <asp:Image class="product-img" ID="Image6" runat="server" src="images/march/set/A-1190.jpg"/>
            <div class="overlay">
                <asp:Image class="overlay-img" ID="Image18" runat="server" src="images/march/set/A-1040.jpg"/>
            </div>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label21" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label22" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label23" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label24" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button6" runat="server" Text="Add to Cart" />
            </div>
        </div>
        <div class="product7">
            <div class="image-box">
                <asp:Image class="product-img" ID="Image7" runat="server" src="images/march/set/A-1198.jpg"/>
            <div class="overlay">
                <asp:Image class="overlay-img" ID="Image19" runat="server" src="images/march/set/A-1040.jpg"/>
            </div>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label25" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label26" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label27" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label28" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button7" runat="server" Text="Add to Cart" />
            </div>
        </div>
        <div class="product8">
            <div class="img">
                <asp:Image class="product-img" ID="Image8" runat="server" src="images/march/bottom/A-1024.jpg"/>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label29" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label30" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label31" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label32" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button8" runat="server" Text="Add to Cart" />
            </div>
        </div>
        <div class="product9">
            <div class="img">
                <asp:Image class="product-img" ID="Image9" runat="server" src="images/march/bottom/A-1100.jpg"/>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label33" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label34" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label35" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label36" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button9" runat="server" Text="Add to Cart" />
            </div>
        </div>
        <div class="product10">
            <div class="img">
                <asp:Image class="product-img" ID="Image10" runat="server" src="images/march/bottom/A-1133.jpg"/>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label37" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label38" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label39" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label40" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button10" runat="server" Text="Add to Cart" />
            </div>
        </div>
        <div class="product11">
            <div class="img">
                <asp:Image class="product-img" ID="Image11" runat="server" src="images/march/bottom/A-1215.jpg"/>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label41" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label42" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label43" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label44" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button11" runat="server" Text="Add to Cart" />
            </div>
        </div>
        <div class="product12">
            <div class="img">
                <asp:Image class="product-img" ID="Image12" runat="server" src="images/march/bottom/IMG_9610.JPG"/>
            </div>
            <div class="content">
                <asp:Label CssClass="product-name" ID="Label45" runat="server" Text="Product Name"></asp:Label>
                <br />
                <asp:Label CssClass="product-price" ID="Label46" runat="server" Text="RM: "></asp:Label>
                <br />
                <asp:Label CssClass="product-size" ID="Label47" runat="server" Text="Size: "></asp:Label>
                <br />
                <asp:Label CssClass="product-colour" ID="Label48" runat="server" Text="Colour: "></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button  CssClass="btn" ID="Button12" runat="server" Text="Add to Cart" />
            </div>
        </div>
    </div>
        
</asp:Content>

       

