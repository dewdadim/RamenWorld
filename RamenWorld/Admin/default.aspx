<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RamenWorld.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Orders]" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Orders] WHERE [OrderId] = @original_OrderId AND [OrderAddress] = @original_OrderAddress AND [OrderState] = @original_OrderState AND [OrderZip] = @original_OrderZip AND [OrderDate] = @original_OrderDate AND [TotalAmount] = @original_TotalAmount AND [CartID] = @original_CartID" InsertCommand="INSERT INTO [Orders] ([OrderId], [OrderAddress], [OrderState], [OrderZip], [OrderDate], [TotalAmount], [CartID]) VALUES (@OrderId, @OrderAddress, @OrderState, @OrderZip, @OrderDate, @TotalAmount, @CartID)" UpdateCommand="UPDATE [Orders] SET [OrderAddress] = @OrderAddress, [OrderState] = @OrderState, [OrderZip] = @OrderZip, [OrderDate] = @OrderDate, [TotalAmount] = @TotalAmount, [CartID] = @CartID WHERE [OrderId] = @original_OrderId AND [OrderAddress] = @original_OrderAddress AND [OrderState] = @original_OrderState AND [OrderZip] = @original_OrderZip AND [OrderDate] = @original_OrderDate AND [TotalAmount] = @original_TotalAmount AND [CartID] = @original_CartID">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderZip" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_OrderDate"></asp:Parameter>
            <asp:Parameter Name="original_TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_CartID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderZip" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="OrderDate"></asp:Parameter>
            <asp:Parameter Name="TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="CartID" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderZip" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="OrderDate"></asp:Parameter>
            <asp:Parameter Name="TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="CartID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_OrderId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderZip" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_OrderDate"></asp:Parameter>
            <asp:Parameter Name="original_TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_CartID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="container-fluid py-5">
        <div class="container py-5">
            <asp:GridView class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="OrderId" AllowSorting="True" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True">
                        <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                    </asp:CommandField>
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" ReadOnly="True" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none"></asp:BoundField>
                    <asp:BoundField DataField="OrderAddress" HeaderText="OrderAddress" SortExpression="OrderAddress"></asp:BoundField>
                    <asp:BoundField DataField="OrderAddress" HeaderText="OrderAddress" SortExpression="OrderAddress" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none"></asp:BoundField>
                    <asp:BoundField DataField="OrderState" HeaderText="OrderState" SortExpression="OrderState"></asp:BoundField>
                    <asp:BoundField DataField="OrderZip" HeaderText="OrderZip" SortExpression="OrderZip"></asp:BoundField>
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate"></asp:BoundField>
                    <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount"></asp:BoundField>

                </Columns>
            </asp:GridView>
        </div>
        </div>
        <!-- Cart Page End -->
</asp:Content>