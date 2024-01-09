<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="RamenWorld.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Checkout Page Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <h1 class="mb-4">Billing details</h1>
                <div>
                    <div class="row g-5">
                        <div class="col-md-12 col-lg-6 col-xl-7">
                            <div class="form-item">
                                <label class="form-label my-3">Receiver Name <sup>*</sup></label>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Who is going to receive parcel?" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter receiver name" ControlToValidate="TextBox1" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3">Address <sup>*</sup></label>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="House Number Street Name" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter receiver address" ControlToValidate="TextBox2" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Town/City <sup>*</sup></label>
                                        <asp:TextBox ID="TextBox3" runat="server" placeholder="ex: Kajang" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter city" ControlToValidate="TextBox3" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-6">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">State <sup>*</sup></label>
                                        <asp:TextBox ID="TextBox4" runat="server" placeholder="ex: Selangor" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter state" ControlToValidate="TextBox4" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3">Phone Number <sup>*</sup></label>
                                <asp:TextBox ID="TextBox5" runat="server" placeholder="Receiver phone number" class="form-control" TextMode="Phone" MaxLength="11"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter phone number" ControlToValidate="TextBox5" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-item">
                                <label class="form-label my-3">Email Address <sup>*</sup></label>
                                <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter email address" class="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox6" CssClass="text-danger"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 col-xl-5">
                            <div class="col-sm-8 col-md-7 col-lg-6 col-xl-4 w-100">
                                <div class="bg-light rounded w-100">
                                    <div class="p-4">
                                        <h1 class="display-6 mb-4"><span class="fw-normal">Total Payment</span></h1>
                                        <div class="d-flex justify-content-between mb-4">
                                            <h5 class="mb-0 me-4">Subtotal:</h5>
                                            <asp:Label ID="Label1" runat="server" Text="Label" class="mb-0"></asp:Label>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <h5 class="mb-0 me-4">Shipping</h5>
                                            <div class="">
                                                <asp:Label ID="Label3" runat="server" Text="Label" class="mb-0"></asp:Label>
                                            </div>
                                        </div>
                                        <p class="mb-0 text-end"></p>
                                    </div>
                                    <div class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
                                        <h5 class="mb-0 ps-4 me-4">Total</h5>
                                        <asp:Label ID="Label2" runat="server" Text="Label" class="mb-0 pe-4"></asp:Label>
                                    </div>
                                    <asp:Button ID="Button1" runat="server" Text="Proceed Checkout" class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4 ms-4" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Checkout Page End -->
</asp:Content>
