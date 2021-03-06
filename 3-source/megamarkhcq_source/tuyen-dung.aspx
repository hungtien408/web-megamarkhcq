﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tuyen-dung.aspx.cs" Inherits="tuyen_dung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><span> Tuyển dụng</span>
    </div>
    <div class="recruitment-bg">
        <h1>TUYỂN DỤNG</h1>
        <p>Với chiến lược phát triển mở rộng thị phần tại Việt Nam, MegaMark hân hoan chào đón những người có năng lực, tự tin, nhiệt huyết vào vị trí như sau:</p>
        <div class="table-recruiment">
            <div class="title-table">
                <div class="column-table">Bộ phận</div>
                <div class="column-table">Chức vụ</div>
                <div class="column-table">Khu vực</div>
                <div class="column-table">Số lượng</div>
            </div>
            <div class="content-table">
                <asp:ListView ID="lstTuyenDung" runat="server" DataSourceID="odsTuyenDung"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <li>
                            <a href='<%# progressTitle(Eval("ProductName")) + "-td-" + Eval("ProductID") + ".aspx" %>'>
                                <div class="column-table"><%# Eval("ProductName") %></div>
                                <div class="column-table"><strong><%# Eval("MetaTittle") %></strong></div>
                                <div class="column-table"><%# Eval("MetaDescription") %></div>
                                <div class="column-table"><%# Eval("Tag") %></div>
                            </a>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul>
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsTuyenDung" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="13" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>

