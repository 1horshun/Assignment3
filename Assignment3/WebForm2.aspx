<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Assignment3.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <div class = "shopping-cart">
        <div class ="container">
            <div class ="row">
                
            </div>
        </div>

        <!-- SHOPPING CART -->
        <div class ="shopping-cart section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- SHOPPING SUMMARY -->
                        <asp:Table ID="Table1" runat="server" CssClass="table shopping-summary">
                            <asp:TableHeaderRow runat="server" CssClass="main-heading">
                                <asp:TableCell runat="server" CssClass="th">Product</asp:TableCell>
                                <asp:TableCell runat="server" CssClass="name th">Name</asp:TableCell>
                                <asp:TableCell runat="server" CssClass="text-center th">Unit Price</asp:TableCell>
                                <asp:TableCell runat="server" CssClass="text-center th">Quantity</asp:TableCell>
                                <asp:TableCell runat="server" CssClass="text-center th">Total</asp:TableCell>
                                <asp:TableCell runat="server" CssClass="text-center th"><i class = "fa fa-trash remove-icon-first"></asp:TableCell>
                            </asp:TableHeaderRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server"></asp:TableCell>
                                <asp:TableCell runat="server"></asp:TableCell>
                                <asp:TableCell runat="server"></asp:TableCell>
                                <asp:TableCell runat="server"></asp:TableCell>
                                <asp:TableCell runat="server"></asp:TableCell>
                                <asp:TableCell runat="server"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <!-- END SHOPPING SUMMARY -->
                    </div>
                </div>

                <div class ="row">
                    <div class ="col-12">
                        <!-- TOTAL AMOUNT -->
                        <div class="total-amount">
                            <div class="row">
                                <div class="col-lg-8 col-md-5 col-12">
                                    <div class="left">

                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-7 col-12">
                                    <div class="right">
                                        <ul>
                                            <li>Cart Subtotal<span></span></li>
                                            <li>Shipping<span>RM8.00</span></li>
                                            <li class="last">You Pay<span></span></li>
                                        </ul>

                                        <div class="cartBtn">
                                            <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="btn"/>
                                            <asp:Button ID="Button2" runat="server" Text="Continue Shopping" CssClass="btn"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END TOTAL AMOUNT -->
                    </div>
                </div>
            </div>
        </div>
        <!-- END SHOPPING CART -->
    </div>
</asp:Content>
