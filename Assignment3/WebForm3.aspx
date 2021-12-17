<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Assignment3.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <!-- START CHECKOUT -->
    <div class ="shop checkout section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="checkout-form">
                        <h2>Make Your Checkout Here</h2>
                        <p>Please register in order to checkout more quickly</p>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter your name"/>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter your email" />
                                    </div>
                                </div>
                                
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label3" runat="server" Text="Phone Number"></asp:Label>
                                        <asp:TextBox ID="TextBox3" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter your phone" />
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                                        <asp:TextBox ID="TextBox4" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter your address" />
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label5" runat="server" Text="Postcode"></asp:Label>
                                        <asp:TextBox ID="TextBox5" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter postcode" />
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label6" runat="server" Text="District"></asp:Label>
                                        <asp:TextBox ID="TextBox6" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter district" />
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
                                        <asp:TextBox ID="TextBox7" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter state" />
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <asp:Label ID="Label8" runat="server" Text="Bank Transaction ID"></asp:Label>
                                        <asp:TextBox ID="TextBox8" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter bank transaction ID" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="order-details">
                                <!-- ORDER WIDGET 1 -->
                                <div class="single-widget">
                                    <h2>CART TOTAL</h2>
                                    <div class="content">
                                        <ul>
                                            <li>Sub Total</li>
                                            <li>(+) Shipping<span>RM8.00</span></li>
                                            <li>Total</li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- END ORDER WIDGET 1 -->

                                <!-- ORDER WIDGET 2 -->
                                <div class="single-widget">
                                    <div class="payment-title"><h2>Payment</h2></div>
                                    <div class="content" style="padding-left: 30px;">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="option">
                                            <asp:ListItem CssClass="radio">Online Banking</asp:ListItem>
                                            <asp:ListItem CssClass="radio">Credit Card</asp:ListItem>
                                            <asp:ListItem CssClass="radio">Cash on Delivery</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <!-- END ORDER WIDGET 2 -->

                                <!-- BUTTON WIDGET -->
                                <div class ="single-widget get-button">
                                    <div class="content">
                                        <div class="get-button">
                                            <asp:Button ID="Button1" runat="server" Text="Confirm Order" CssClass="button"/>
                                        </div>
                                    </div>
                                </div>
                                <!-- END BUTTON WIDGET -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
