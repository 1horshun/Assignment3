<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="Assignment3.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <!-- CONTACT FORM -->
    <div class="contact-us">

        <h3 class="section-title"><asp:Label ID="Label6" runat="server" Text="" style="text-align: center; color: crimson;" Visible = "false">></asp:Label></h3>
        <h3 class="section-title"><asp:Label ID="Label7" runat="server" Text="" style="text-align: center; color: #00adb5;" Visible="false"></asp:Label></h3>

        <div class="contact-header container form-main">
            <div class="title">
                <h4>Get In Touch</h4>
                <h3>Write us a message</h3>
                <br />
            </div>

            <div class="contact-form">
                <div class="row">
                    <div class="form-group col-lg-6 col-12">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label> 
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Drop your name here..."></asp:TextBox>
                    </div>

                    <div class="form-group col-lg-6 col-12">
                        <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label> 
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Drop your subject here..."></asp:TextBox>
                    </div>

                    <div class="form-group col-lg-6 col-12">
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label> 
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="example@email.com"></asp:TextBox>
                    </div>

                    <div class="form-group col-lg-6 col-12">
                        <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label> 
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="0123456789"></asp:TextBox>
                    </div>

                    <br />

                    <div class="form-group message col-12">
                        <asp:Label ID="Label5" runat="server" Text="Message"></asp:Label> 
                        <asp:TextBox ID="TextBox5" runat="server" Enabled="true" CssClass="form-control input-sm text-area" placeholder="Drop your message here..."></asp:TextBox>
                    </div>

                    <br />

                    <div class="form-group button col-12">
                        <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" CssClass="btn"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
