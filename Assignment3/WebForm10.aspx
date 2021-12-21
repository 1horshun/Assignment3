<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="Assignment3.WebForm10" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <div class="container">
         <asp:Repeater ID="repeater1" runat="server">
            <HeaderTemplate></HeaderTemplate>

             <ItemTemplate>
        <div class="row">
            <div class="col-md-1"></div>

            <!-- PRODUCT IMAGE -->
            <div class="col-md-4">
                <img src='<%#Eval("imagePath")%>' CssClass="d-block w-100" alt="..." style="width: 360px; height: 430px;"/>
            </div>

            <!-- PRODUCT DETAILS -->
            <div class="col-md-6 product-description">
                <div class="row">
                    <h2><%#Eval("productName") %></h2>
                </div>

                <div class="row">
                    <h5 class="text-muted">RM<%#Eval("productPrice")%>.00</h5>
                </div>

                <div class="row">
                    <div class="product-color">
                        <span>Color</span>

                        <div class="color-name">
                            <h5><%#Eval("productColor") %></h5>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="product-size" style="padding-left: 13px;">
                        <span>Size</span>

                        <br />

                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem CssClass="radio">S</asp:ListItem>
                            <asp:ListItem CssClass="radio">M</asp:ListItem>
                            <asp:ListItem CssClass="radio">L</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <div class="row">
                    <div class="product-quantity">
                        <span>Quantity</span>
                        <br />

                        <div class="input-group">
                            <asp:TextBox ID="quantity" TextMode="Number" runat="server" Text="0"  min="1" max='<%#Eval("productQuantity")%>'></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="product-button" style="padding-top: 20px;">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" style = "background-color: #00adb5; border: none; color: #fff; width: 160px; border-radius: 4px; font-size: 14px; text-decoration: none; display: inline-block; height: 50px;" onMouseOver="this.style.background='#393e46'" onMouseOut="this.style.background='#00adb5'" Text="Add to Cart" OnClick="Button1_Click"/>
                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>
        </div>

        </ItemTemplate>

        <FooterTemplate></FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>