﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Assignment3.WebForm2" %>

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
                        <asp:Repeater ID="repeater_cart" runat="server">
                        <HeaderTemplate>
                        <table id="Table1" class="table shopping-summary">
	                        <thead>
	                        <tr class="main-heading">
		                        <th class="text-left" style: width="200px">Product</th>
		                        <th class="text-left">Name</th>
                                <th class="text-left">Color</th>
                                <th class="text-left">Size</th>
		                        <th class="text-left">Unit Price</th>
		                        <th class="text-left">Quantity</th>
		                        <th class="text-left">Total</th>
		                        <th class="text-left">Remove</th>
	                        </thead>
                            <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>

	                        <tr>
		                        <td class="product-img text-left" id="Image1"><img src='<%#Eval("imagePath") %>' style: width="150px"; height="150px";/></td>
		                        <td runat="server" class="text-left" id="product_name"><%#Eval("productName") %></td>
                                <td runat="server" class="text-left" id="product_color"><%#Eval("productColor") %></td>
                                <td runat="server" class="text-left" id="product_size"><%#Eval("productSize") %></td>
		                        <td>RM<%#Eval("productPrice")%></td>
		                        <td><%#Eval("productQuantity") %></td>
		                        <td>RM<%#Eval("totalprice")%></td>
		                        <td><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Remove</asp:LinkButton></td>
	                        </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                        </table>
                        </FooterTemplate>
                        </asp:Repeater>
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
                                            <li>Cart Subtotal<span runat="server" id="subtotal"></span></li>
                                            <li>Shipping<span>RM8.00</span></li>
                                            <li class="last">You Pay<span runat="server" id="totalpay"></span></li>
                                        </ul>

                                        <div class="cartBtn">
                                            <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="btn" OnClick="Button1_Click" Enabled="false"/>
                                            <asp:Button ID="Button2" runat="server" Text="Continue Shopping" CssClass="btn" OnClick="Button2_Click"/>
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
