<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Sản phẩm
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="MaDM_SP" HeaderText="MaDM_SP" SortExpression="MaDM_SP" />
                <asp:BoundField DataField="Donvi" HeaderText="Donvi" SortExpression="Donvi" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="GiaSP" HeaderText="GiaSP" SortExpression="GiaSP" />
                <asp:BoundField DataField="ChuThich" HeaderText="ChuThich" SortExpression="ChuThich" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaDM_SP], [Donvi], [TenSP], [GiaSP], [ChuThich], [HinhAnh]) VALUES (@MaSP, @MaDM_SP, @Donvi, @TenSP, @GiaSP, @ChuThich, @HinhAnh)" SelectCommand="SELECT [MaSP], [MaDM_SP], [Donvi], [TenSP], [GiaSP], [ChuThich], [HinhAnh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaDM_SP] = @MaDM_SP, [Donvi] = @Donvi, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [ChuThich] = @ChuThich, [HinhAnh] = @HinhAnh WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaDM_SP" Type="Int32" />
                <asp:Parameter Name="Donvi" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="ChuThich" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaDM_SP" Type="Int32" />
                <asp:Parameter Name="Donvi" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="ChuThich" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="Object" />
                <asp:Parameter Name="MaSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>

