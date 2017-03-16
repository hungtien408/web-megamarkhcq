<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tim-kiem1.aspx.cs" Inherits="san_pham" %>

<%@ Register Src="~/assets/uc/uc-care.ascx" TagPrefix="uc1" TagName="uccare" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum"
        EnableModelValidation="True">
        <ItemTemplate>
            <%# Container.DataItemIndex == ((System.Data.DataView)odsBreadcrum.Select()).Count - 1 ? "<span>" + Eval("ProductCategoryName") + "</span>" : "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryName") + "</a><span class='fa fa-caret-right'></span>"%>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="site" class="corner">
                <a id="A1" href="~/" runat="server">Trang chủ</a><span class="fa fa-caret-right"></span><span
                    runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsBreadcrum" runat="server"
        SelectMethod="ProductCategoryHierarchyToTopSelectAll" TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci"
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

    <div class="wrapper-product">
        <div class="title-main mobile">
            <h1>Tìm Kiếm</h1>
            <%--<div class="list-menu">
                <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <li><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'><%# Eval("ProductCategoryName") %></a></li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul>
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProductCategory" runat="server"
                    SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="hdnProductCategoryID" PropertyName="Value" Name="parentID" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>--%>
            <div class="product-all">
                <select>
                    <option value="1">hãng khác</option>
                    <option value="2">HUAWEI</option>
                    <option value="3">HTC</option>
                    <option value="4">Sony</option>
                    <option value="5">Asus</option>
                    <option value="6">LG</option>
                </select>
            </div>
            <div class="product-price">
                <select>
                    <option value="1">Từ 3-7 triệu</option>
                    <option value="2">Từ 7-10 triệu</option>
                    <option value="3">Từ 10-20 triệu</option>
                    <option value="4">Trên 20 triệu</option>
                </select>
            </div>
            <div class="product-function">
                <select>
                    <option value="1">Cảm ứng</option>
                    <option value="2">Chụp hình</option>
                    <option value="3">Quay phim</option>
                </select>
            </div>
            <div class="view-more"><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>Xem thêm</a></div>
        </div>
        <div class="wrapper-pro">
            <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct"
                EnableModelValidation="True" OnItemCommand="lstProduct_ItemCommand">
                <ItemTemplate>
                    <div class="product-box">
                        <div class="info-img">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                    runat="server" /></a>
                        </div>
                        <div class="info-content">
                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a>
                            <span><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <span>đ</span>") : "0"%></span>
                            <i><%# !string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? (string.Format("{0:##,###.##}", Eval("SavePrice")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " đ") : ""%></i>
                            <div class="description"><%# Eval("Description") %></div>
                            <div class="product-btn">
                                <asp:LinkButton ID="lkbAddToCart" runat="server" CommandName="AddToCart">MUA</asp:LinkButton>
                                <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>XEM CHI TIẾT</a>
                            </div>
                        </div>
                        <%# string.IsNullOrEmpty(Eval("IsNew").ToString()) ? "" : Eval("IsNew").ToString() == "False" ? "" : "<div class='icon-new'><img src='assets/images/icon-new.png' alt='' /></div>" %>
                    </div>
                    <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                    <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                    <asp:HiddenField ID="hdnProductCode" Value='<%# Eval("Tag") %>' runat="server" />
                    <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                    <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>'
                        runat="server" />
                    <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                    <asp:Label ID="lblDescription" Visible="False" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <span>Không tìm thấy từ khoá cần tìm kiếm</span>
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <div class="product-box">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:QueryStringParameter QueryStringField="kw" Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
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
        <div class="clr"></div>
        <div class="product-viewmore">
            <a href="#">Xem thêm 123 điện thoại</a>
        </div>
    </div>

    <uc1:uccare runat="server" ID="uccare" />
</asp:Content>

