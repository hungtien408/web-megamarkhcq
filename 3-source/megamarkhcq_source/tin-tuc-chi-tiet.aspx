<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><a href="tin-tuc.aspx"> Tin tức</a><span class="fa fa-caret-right"></span><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
    </div>
    <asp:ListView ID="lstNewDetail" runat="server" DataSourceID="odsNewDetail"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="news-bg">
                <h1><%# Eval("ProductName") %></h1>
                <%# Eval("Content") %>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsNewDetail" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="tt" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

