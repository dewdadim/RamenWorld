<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="RamenWorld.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Orders]" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Orders] WHERE [OrderId] = @original_OrderId AND [OrderReceiverName] = @original_OrderReceiverName AND [OrderAddress] = @original_OrderAddress AND [OrderCity] = @original_OrderCity AND [OrderState] = @original_OrderState AND [OrderPhone] = @original_OrderPhone AND [OrderEmail] = @original_OrderEmail AND [OrderDate] = @original_OrderDate AND [TotalAmount] = @original_TotalAmount AND [username] = @original_username" InsertCommand="INSERT INTO [Orders] ([OrderReceiverName], [OrderAddress], [OrderCity], [OrderState], [OrderPhone], [OrderEmail], [OrderDate], [TotalAmount], [username]) VALUES (@OrderReceiverName, @OrderAddress, @OrderCity, @OrderState, @OrderPhone, @OrderEmail, @OrderDate, @TotalAmount, @username)" UpdateCommand="UPDATE [Orders] SET [OrderReceiverName] = @OrderReceiverName, [OrderAddress] = @OrderAddress, [OrderCity] = @OrderCity, [OrderState] = @OrderState, [OrderPhone] = @OrderPhone, [OrderEmail] = @OrderEmail, [OrderDate] = @OrderDate, [TotalAmount] = @TotalAmount, [username] = @username WHERE [OrderId] = @original_OrderId AND [OrderReceiverName] = @original_OrderReceiverName AND [OrderAddress] = @original_OrderAddress AND [OrderCity] = @original_OrderCity AND [OrderState] = @original_OrderState AND [OrderPhone] = @original_OrderPhone AND [OrderEmail] = @original_OrderEmail AND [OrderDate] = @original_OrderDate AND [TotalAmount] = @original_TotalAmount AND [username] = @original_username">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_OrderReceiverName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderCity" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderPhone" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderEmail" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_OrderDate"></asp:Parameter>
            <asp:Parameter Name="original_TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderReceiverName" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderCity" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderPhone" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderEmail" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderDate" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="username" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderReceiverName" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderCity" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderPhone" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderEmail" Type="String"></asp:Parameter>
            <asp:Parameter Name="OrderDate" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="username" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_OrderReceiverName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderAddress" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderCity" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderState" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderPhone" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_OrderEmail" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_OrderDate"></asp:Parameter>
            <asp:Parameter Name="original_TotalAmount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="container-fluid py-5">
        <div class="container py-5">
            <asp:GridView class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="OrderId" AllowSorting="True" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" InsertVisible="False" SortExpression="OrderId"></asp:BoundField>
                    <asp:BoundField DataField="OrderReceiverName" HeaderText="Receiver Name" SortExpression="OrderReceiverName"></asp:BoundField>
                    <asp:BoundField DataField="OrderAddress" HeaderText="Address" SortExpression="OrderAddress"></asp:BoundField>  
                    <asp:BoundField DataField="OrderCity" HeaderText="City" SortExpression="OrderCity" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none"></asp:BoundField>
                    <asp:BoundField DataField="OrderState" HeaderText="State" SortExpression="OrderState"></asp:BoundField>
                    <asp:BoundField DataField="OrderPhone" HeaderText="Phone Number" SortExpression="OrderPhone" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none"></asp:BoundField>
                    <asp:BoundField DataField="OrderEmail" HeaderText="Email" SortExpression="OrderEmail"></asp:BoundField>
                    <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate"></asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="Customer" SortExpression="username"></asp:BoundField>

                    <asp:CommandField DeleteText="Complete" ShowDeleteButton="True" HeaderText="Manage Order">
                        <ControlStyle CssClass="btn btn-primary"></ControlStyle>
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>
        </div>
        <!-- Cart Page End -->
</asp:Content>