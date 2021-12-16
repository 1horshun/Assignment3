<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Assignment3.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">

    <div class="login-signup container-fluid">
        <div class="wrapper">
            <div class="col-md-12 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row-title">
                            <asp:Label ID="Label1" runat="server" Text="Sign Up Form"></asp:Label>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                </center>
                            </div>
                        </div>

                        <div class="row g-2">
                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                                    <label for="floatingInput">Full Name</label>
                                </div>
                            </div>

                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                    <label for="floatingInput">Date of Birth</label>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row g-2">
                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox>
                                    <label for="floatingInput">Email address</label>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                                    <label for="floatingInput">Phone Number</label>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row g-2">
                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Passward" TextMode="Password"></asp:TextBox>
                                    <label for="floatingInput">Password</label>
                                </div>
                            </div>

                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                    <label for="floatingInput">Confirm Password</label>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row g-2">
                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>What is your mother&#39;s first name?</asp:ListItem>
                                        <asp:ListItem>What is your pet&#39;s first name?</asp:ListItem>
                                        <asp:ListItem>In what city were you born?</asp:ListItem>
                                        <asp:ListItem>What is the name of your first school?</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="floatingInput">Select Security Questions</label>
                                </div>
                            </div>
                            <div class="col-md">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Text"></asp:TextBox>
                                    <label for="floatingInput">Answer</label>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <center>
                                <hr>
                            </center>
                            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                        </div>
                        <div class="row g-2">
                            <div class="form-floating mb-3">
                                <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" placeholder="Street 1"></asp:TextBox>
                                <label for="floatingInput">Street Line 1</label>
                            </div>
                            <div class="form-floating mb-3">
                                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" placeholder="Street 2"></asp:TextBox>
                                <label for="floatingInput">Street Line 2</label>
                            </div>
                        </div>

                        <div class="row g-3">
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Text"></asp:TextBox>
                                    <label for="floatingInput">State</label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Text"></asp:TextBox>
                                    <label for="floatingInput">City</label>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Text"></asp:TextBox>
                                    <label for="floatingInput">Postcode</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <asp:Button ID="Button1" runat="server" Text="Submit Details" class="btn btn-block" />
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="login-link">Back to Login Page</asp:HyperLink>
                    </div>

                </div>
            </div>

        </div>
    </div>

</asp:Content>
