<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="RamenWorld.Customer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [CartItems] WHERE ([CartId] = @CartId)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CartItems] WHERE [CartItemId] = @original_CartItemId AND [CartId] = @original_CartId AND [ProductName] = @original_ProductName AND [Quantity] = @original_Quantity AND [Price] = @original_Price" InsertCommand="INSERT INTO [CartItems] ([CartId], [ProductName], [Quantity], [Price]) VALUES (@CartId, @ProductName, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [CartItems] SET [CartId] = @CartId, [ProductName] = @ProductName, [Quantity] = @Quantity, [Price] = @Price WHERE [CartItemId] = @original_CartItemId AND [CartId] = @original_CartId AND [ProductName] = @original_ProductName AND [Quantity] = @original_Quantity AND [Price] = @original_Price">
        <DeleteParameters>
            <asp:Parameter Name="original_CartItemId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_CartId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Quantity" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Price" Type="Decimal"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CartId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Quantity" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="Cart" Name="CartId" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CartId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Quantity" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Price" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_CartItemId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_CartId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Quantity" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Price" Type="Decimal"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="container-fluid py-5">
        <div class="container py-5">
            <asp:GridView class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="CartItemId">
                <Columns>
                    <asp:BoundField DataField="CartItemId" HeaderText="CartItemId" SortExpression="CartItemId" ReadOnly="True" InsertVisible="False" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none"></asp:BoundField>
                    <asp:BoundField DataField="CartId" HeaderText="CartId" SortExpression="CartId" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none"></asp:BoundField>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName"></asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" ></asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Manage Item" DeleteText="Remove">
                        <ControlStyle CssClass="btn btn-danger"></ControlStyle>

                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <div class="row g-4 justify-content-end mt-3">
                <div class="col-8"></div>
                <div class="col-sm-8 col-md-7 col-lg-6 col-xl-4">
                    <div class="bg-light rounded">
                        <div class="p-4">
                            <h1 class="display-6 mb-4">Cart <span class="fw-normal">Total</span></h1>
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
        <!-- Cart Page End -->
</asp:Content>
