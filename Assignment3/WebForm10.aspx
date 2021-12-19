<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="Assignment3.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-1"></div>

            <!-- PRODUCT IMAGE -->
            <div class="col-md-4">
                <img src="images/march/set/A-1038.jpg" CssClass="d-block w-100" alt="..." style="width: 360px; height: 430px;"/>
            </div>

            <!-- PRODUCT DETAILS -->
            <div class="col-md-6 product-description">
                <div class="row">
                    <h2>Two Pieces Plaid Top & Skirt (Beige)</h2>
                </div>

                <div class="row">
                    <h5 class="text-muted">RM59.00</h5>
                </div>

                <div class="row">
                    <div class="product-color">
                        <span>Color</span>

                        <div class="color-name">
                            <h5>Beige</h5>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="product-size" style="padding-left: 13px;">
                        <span>Size</span>

                        <br />

                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <asp:ListItem CssClass="radio"><h5>&nbsp;S&emsp;&nbsp;</h5></asp:ListItem>
                            <asp:ListItem CssClass="radio"><h5>&nbsp;M&emsp;&nbsp;</h5></asp:ListItem>
                            <asp:ListItem CssClass="radio"><h5>&nbsp;L</h5></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <div class="row">
                    <div class="product-button" style="padding-top: 50px;">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" style = "background-color: #00adb5; border: none; color: #fff; width: 160px; border-radius: 4px; font-size: 14px; text-decoration: none; display: inline-block; height: 50px;" onMouseOver="this.style.background='#393e46'" onMouseOut="this.style.background='#00adb5'" Text="Add to Cart" />
                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>
        </div>
    </div>
</asp:Content>
