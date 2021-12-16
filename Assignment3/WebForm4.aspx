<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Assignment3.WebForm4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">

    <div class="login-signup container">
        <div class="wrapper">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <asp:Label ID="Label1" runat="server" Text="Login Form" CssClass="title-text"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Email Address"></asp:TextBox>
                                        <label for="floatingInput">Email address</label>
                                    </div>
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <label for="floatingPassword">Password</label>
                                        <br />
                                    </div>

                                    <div class="d-grid gap-2 col-6 mx-auto">
                                        <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-block" />
                                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="reset-link">Forgot Password?</asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="signup-link">Not a Member?</asp:HyperLink>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>

