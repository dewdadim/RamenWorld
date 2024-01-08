<%@ Page Title="Home" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RamenWorld.Customer.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [CartItems]"></asp:SqlDataSource>
    <div class="container-fluid fruite py-5">
            <div class="container py-5">
                <div class="tab-class text-center">
                    <div class="row g-4">
                        <div class="col-lg-4 text-start">
                            <h1>Our Ramen Choices</h1>
                        </div>
                        <div class="col-lg-8 text-end">
                            <ul class="nav nav-pills d-inline-flex text-center mb-5">
                                <li class="nav-item">
                                    <a class="d-flex m-2 py-2 bg-light rounded-pill text-decoration-none active" data-bs-toggle="pill" href="#tab-1">
                                        <span class="text-dark" style="width: 130px;">All Products</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-12">
                                    <div class="row g-4">
                                        <div class="ramen-list col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item">
                                                <div class="fruite-img">
                                                    <img src="../img/spicy-ramen-1.png" class="img-fluid -100 rounded-top" alt="">
                                                </div>
                                                <div class="p-4">
                                                    <h4 class="mb-5">Samyang x2 Hot Chicken Flavour Ramen</h4>
                                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                                        <p class="text-dark fs-5 fw-bold mb-0">RM5.50</p>
                                                        <asp:Button ID="Button1" runat="server" class="btn btn-outline-primary px-3" Text="Add to cart" OnClick="Button1_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ramen-list col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item">
                                                <div class="fruite-img">
                                                    <img src="../img/spicy-ramen-2.jpg" class="img-fluid w-100 rounded-top" alt="">
                                                </div>
                                                <div class="p-4">
                                                    <h4 class="mb-5">Daebak Mamee Ghost Pepper Spicy Chicken</h4>
                                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                                        <p class="text-dark fs-5 fw-bold mb-0">RM9.10</p>
                                                        <asp:Button ID="Button2" runat="server" class="btn btn-outline-primary px-3" Text="Add to cart" OnClick="Button2_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ramen-list col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item">
                                                <div class="fruite-img">
                                                    <img src="../img/spicy-ramen-3.jpg" class="img-fluid w-100 rounded-top" alt="">
                                                </div>
                                                <div class="p-4">
                                                    <h4 class="mb-5">Nongshim - Shin Ramyun Red Super Spicy</h4>
                                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                                        <p class="text-dark fs-5 fw-bold mb-0">RM 8.00</p>
                                                        <asp:Button ID="Button3" runat="server" class="btn btn-outline-primary px-3" Text="Add to cart" OnClick="Button3_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ramen-list col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item">
                                                <div class="fruite-img">
                                                    <img src="../img/normal-ramen-1.jpg" class="img-fluid w-100 rounded-top" alt="">
                                                </div>
                                                <div class="p-4">
                                                    <h4 class="mb-5">NONGSHIM CHAPAGETTI 123G</h4>
                                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                                        <p class="text-dark fs-5 fw-bold mb-0">RM 7.90</p>
                                                        <asp:Button ID="Button4" runat="server" class="btn btn-outline-primary px-3" Text="Add to cart" OnClick="Button4_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>      
            </div>
        </div>
        <!-- Fruits Shop End-->
</asp:Content>
