<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Assignment3.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <div>
        <h3 class="section-title"><asp:Label ID="successMessage" style="text-align: center; color: #00adb5;" runat="server" Text="" Visible="false"></asp:Label></h3>
        <h3 class="section-title"><asp:Label ID="failMessage"  style="text-align: center; color: crimson;" runat="server" Text=""></asp:Label></h3>
    </div>

    <asp:HiddenField ID="hiddenFieldUserID" runat ="server" />

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
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name" Visible="true"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
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

                            <div class="form-floating mb-3">
                                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" placeholder="Address Line"></asp:TextBox>
                                <label for="floatingInput">Address Line</label>
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
                        <asp:Button ID="Button1" runat="server" Text="Submit Details" CssClass="btn btn-block" OnClick="userRegister"/>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="login-link" NavigateUrl="~/WebForm4.aspx">Back to Login Page</asp:HyperLink>
                    </div>

                </div>
            </div>

        </div>
    </div>

</asp:Content>
