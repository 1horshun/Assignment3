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
                        <asp:Repeater ID="repeater_cart" runat="server">
                        <HeaderTemplate>
                        <table id="Table1" class="table shopping-summary">
	                        <thead>
	                        <tr class="main-heading">
		                        <th>Product</th>
		                        <th class="text-center name th">Name</th> 
		                        <th class="text-center th">Unit Price</th>
		                        <th class="text-center th">Quantity</th>
		                        <th class="text-center th">Total</th>
		                        <th class="text-center th"><i class = "fa fa-trash remove-icon-first"></th>
	                        </thead>
                            <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>

	                        <tr>
		                        <td class="product-img" id="Image1"><img src='<%#Eval("imagePath") %>' style: width="150px"; height="150px";/></td>
		                        <td><%#Eval("productName") %></td>
		                        <td>RM<%#Eval("productPrice")%></td>
		                        <td><%#Eval("productQuantity") %></td>
		                        <td></td>
		                        <td></td>
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
        <!-- <br /><br /><br /><br /><br /><br /><br /> --> 
    </div>
</asp:Content>
