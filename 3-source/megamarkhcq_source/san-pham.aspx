<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <%--<asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct"
        EnableModelValidation="True">
        <ItemTemplate>--%>
            <div class="wrapper-product">
                <div class="title-main mobile">
                    <%--<h1><%# Eval("ProductCategoryName") %></h1>--%>
                    <h1>
                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h1>
                    <asp:HiddenField ID="hdnProductCategoryID" runat="server" />
                    <div class="list-menu">
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
                    </div>
                    <div class="product-all">
                        <%--<select>
                            <option value="1">hãng khác</option>
                            <option value="2">HUAWEI</option>
                            <option value="3">HTC</option>
                            <option value="4">Sony</option>
                            <option value="5">Asus</option>
                            <option value="6">LG</option>
                        </select>--%>
                        <asp:DropDownList ID="dropHangSanXuat" runat="server" DataSourceID="odsHangSanXuat" DataTextField="ManufacturerName" DataValueField="ManufacturerID" OnSelectedIndexChanged="dropHangSanXuat_SelectedIndexChanged" AutoPostBack="true" OnDataBound="DropDownList_DataBound"></asp:DropDownList>
                        <asp:ObjectDataSource ID="odsHangSanXuat" runat="server"
                            SelectMethod="ManufacturerSelectAll" TypeName="TLLib.Manufacturer1">
                            <SelectParameters>
                                <asp:Parameter Name="ManufacturerName" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                <asp:Parameter Name="ProductID" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="product-price">
                        <asp:DropDownList ID="dropPrice" runat="server" OnSelectedIndexChanged="dropPrice_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0">-- Chọn giá --</asp:ListItem>
                            <asp:ListItem Value="1">Từ 3-7 triệu</asp:ListItem>
                            <asp:ListItem Value="2">Từ 7-10 triệu</asp:ListItem>
                            <asp:ListItem Value="3">Từ 10-20 triệu</asp:ListItem>
                            <asp:ListItem Value="4">Trên 20 triệu</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <%--<div class="product-function">
                        <select>
                            <option value="1">Cảm ứng</option>
                            <option value="2">Chụp hình</option>
                            <option value="3">Quay phim</option>
                        </select>
                    </div>--%>
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
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:ControlParameter ControlID="hdnProductCategoryID" PropertyName="Value" Name="CategoryID" Type="String" />
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
                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstProduct" PageSize="8" Visible="false"></asp:DataPager>
                </div>
                <div class="clr"></div>
                <div class="product-viewmore" id="LinkView" runat="server">
                    <%--<a href="#">Xem thêm 123 điện thoại</a>--%>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Xem thêm <%--<%= ((System.Data.DataView)odsProduct.Select()).Count - DataPager1.PageSize %> điện thoại--%></asp:LinkButton>
                </div>
            </div>
            <%--</ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProduct" runat="server"
        SelectMethod="ProductCategorySelectOne" TypeName="TLLib.ProductCategory">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="pci" Name="ProductCategoryID" Type="String" DefaultValue="3" />
        </SelectParameters>
    </asp:ObjectDataSource>--%>
        </ContentTemplate>
    </asp:UpdatePanel>
    <uc1:uccare runat="server" ID="uccare" />
</asp:Content>

