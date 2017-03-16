<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <asp:ListView ID="lstBreadcrum" runat="server" DataSourceID="odsBreadcrum"
            EnableModelValidation="True">
            <ItemTemplate>
                <%# "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryName") + "</a><span class='fa fa-caret-right'></span>"%>
            </ItemTemplate>
            <LayoutTemplate>
                <a id="A2" href="~/" runat="server">Trang chủ</a><span class="fa fa-caret-right"></span><span
                    runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBreadcrum" runat="server"
            SelectMethod="ProductCategoryHierarchyToTopSelectAll"
            TypeName="TLLib.ProductCategory">
            <SelectParameters>
                <asp:QueryStringParameter Name="CurrentProductCategoryID"
                    QueryStringField="pci"
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:Label ID="lblTitle" runat="server"></asp:Label>
    </div>
    <asp:ListView ID="lstProductDetail" runat="server" DataSourceID="odsProductDetail"
        EnableModelValidation="True" OnItemCommand="lstProductDetail_ItemCommand">
        <ItemTemplate>
            <div class="product-bg">
                <div id="sliderDetails" class="detail-images">
                    <div class="wrap-images">
                        <div class="detailimg-desktop">
                            <div class="zoom-box">
                                <a id="zoom1" href="#" class="cloud-zoom" rel="showTitle: false, adjustY:0, adjustX:5">
                                    <%--<img class="img-responsive" src="assets/images/details-img-2.jpg" alt="" />--%>
                                    <img class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                </a>
                            </div>
                        </div>
                        <div class="detailimg-mobile">
                            <div class="slider-for">
                                <asp:ListView ID="lstProductImageSmall" runat="server" DataSourceID="odsProductAlbum"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="slide">
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/thumbs/" + Eval("ImageName") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                runat="server" />
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsProductAlbum" runat="server" SelectMethod="ProductImageSelectAll"
                                    TypeName="TLLib.ProductImage">
                                    <SelectParameters>
                                        <asp:QueryStringParameter QueryStringField="pi" Name="ProductID" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                        <asp:Parameter Name="Priority" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                        </div>
                    </div>
                    <div class="wrapper-in">
                        <div class="wrapper-7">
                            <div class="slider-nav">
                                <asp:ListView ID="lstProductImageBig" runat="server" DataSourceID="odsProductAlbum"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="slide">
                                            <a href='<%# "/res/product/album/" + Eval("ImageName") %>' data-img='<%# "/res/product/album/" + Eval("ImageName") %>' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: '<%# "/res/product/album/" + Eval("ImageName") %>'">
                                                <span>
                                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>'
                                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                        runat="server" /></span>
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-content">
                    <h1><%# Eval("ProductName") %></h1>
                    <span><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <span>đ</span>") : "0"%></span>
                    <i><%# !string.IsNullOrEmpty(Eval("SavePrice").ToString()) ? (string.Format("{0:##,###.##}", Eval("SavePrice")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " đ") : ""%></i>
                    <p><%# Eval("Description") %></p>
                    <div class="btn-book">
                        <%--<a href="javascript:void(0);">MUA NGAY</a>--%>
                        <asp:LinkButton ID="lkbAddToCart" runat="server" CommandName="AddToCart">MUA NGAY</asp:LinkButton>
                    </div>
                    <p>Gọi đặt mua: <span>1802 1060</span> (Miễn phí)</p>
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
            </div>
            <div class="product-detail">
                <div class="detail-images">
                    <h1>Thông số kỹ thuật</h1>
                    <div class="description">
                        <%# Eval("Policy") %>
                    </div>
                    <div class="news-product">
                        <h1>Tin tức về <%# Eval("ProductName") %></h1>
                        <div class="news-df">
                            <asp:ListView ID="lstNewProduct" runat="server" DataSourceID="odsNewProduct"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="newsbox">
                                        <div class="box-img">
                                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-ts-" + Eval("ArticleID") + ".aspx" %>'>
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/article/" + Eval("ImageName") %>'
                                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                    runat="server" /></a>
                                        </div>
                                        <div class="box-name"><a href='<%# progressTitle(Eval("ArticleTitle")) + "-ts-" + Eval("ArticleID") + ".aspx" %>'><%# Eval("ArticleTitle") %></a></div>
                                    </div>
                                </ItemTemplate>
                                <EmptyDataTemplate>
                                    <span>Đang cập nhật...</span>
                                </EmptyDataTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsNewProduct" runat="server" SelectMethod="ArticleSelectAll2" TypeName="TLLib.Article">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="EndRowIndex" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Keyword" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="ArticleTitle" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Description" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="ArticleCategoryID" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Tag" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="IsHot" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="IsNew" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="FromDate" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="ToDate" Type="String"></asp:Parameter>
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String"></asp:Parameter>
                                    <asp:QueryStringParameter QueryStringField="pi" DefaultValue="" Name="ProductID" Type="String"></asp:QueryStringParameter>
                                    <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String"></asp:Parameter>
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </div>
                </div>
                <div class="product-content">
                    <div class="pro-deatil">
                        <h1>Đặc điểm nổi bật của <%# Eval("ProductName") %></h1>
                        <div class="pro-content">
                            <%# Eval("Content") %>
                        </div>
                    </div>
                    <div class="link-fb">
                        <%--<img src="assets/images/img4.jpg" alt="" />--%>
                        <div class="fb-comments" data-href='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host + "/" + Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/", System.StringComparison.Ordinal) + 1) %>'
                            data-width="675" data-numposts="5" data-colorscheme="light">
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProductDetail" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

