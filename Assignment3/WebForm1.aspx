<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment3.WebForm1" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">

    <div id="carouselControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <asp:Image ID="Image25" runat="server" src="images/slide_3.png" CssClass="d-block w-100" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="Image26" runat="server" src="images/slide_2.png" CssClass="d-block w-100" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="Image27" runat="server" src="images/slide_1.png" CssClass="d-block w-100"/>
            </div>
        </div>
        <asp:Button ID="Button16" runat="server" CssClass="carousel-control-prev" data-bs-target="#carouselControls" data-bs-slide="prev" />
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
        <asp:Button ID="Button17" runat="server" CssClass="carousel-control-next" data-bs-target="#carouselControls" data-bs-slide="next" />
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </div>

    <div class="break-10">
        <div class = "section-title">
			<h2>Summer Series</h2>
		</div>
    </div>

    <br />
    
    <div class="grid-container">
        <asp:Repeater ID="repeater_home" runat="server">
            <HeaderTemplate></HeaderTemplate>

            <ItemTemplate>
        <div class="product1">
            <div class="image-box">
                <div class="img">
                    <asp:Image CssClass="product-img" ID="Image1" runat="server" src='<%#Eval("imagePath") %>' />
                </div>
                <div class="overlay">
                    <asp:Image CssClass="overlay-img" ID="Image2" runat="server" src='<%#Eval("imagePath") %>' />
                </div>
            </div>

            <div class="content">
                <div class="name-box">
                    <asp:Label CssClass="product-name" ID="Label1" runat="server" Text='<%#Eval("productName") %>'></asp:Label>
                    <br />
                </div>
                <asp:Label CssClass="product-price" ID="Label2" runat="server">RM<%#Eval("productPrice")%>&nbsp; | </asp:Label>
                <asp:Label CssClass="product-colour" ID="Label4" runat="server" Text='<%#Eval("productColor") %>'></asp:Label>
            </div>
            <div class="button">
                <br />
                <asp:Button CssClass="btn" ID="Button1" runat="server" Text="View Product" OnClick="Button1_OnClick"/>
            </div>
            
        </div>
            </ItemTemplate>

            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
    </div>

</asp:Content>




