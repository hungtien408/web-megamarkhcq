<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="san-pham.aspx.cs" Inherits="san_pham" %>

<%@ Register Src="~/assets/uc/uc-care.ascx" TagPrefix="uc1" TagName="uccare" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>MegaMart</title>
    <meta name="description" content="MegaMart" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><span> Điện thoại</span>
    </div>
    <div class="wrapper-product">
        <div class="title-main mobile">
            <h1>ĐIỆN THOẠI</h1>
            <div class="list-menu">
                <ul>
                    <li><a href="#">samsung</a></li>
                    <li><a href="#">Iphone</a></li>
                    <li><a href="#">Oppo</a></li>
                </ul>
            </div>
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
            <div class="view-more"><a href="#">Xem thêm</a></div>
        </div>
        <div class="wrapper-pro">
            <div class="product-box">
                <div class="info-img">
                    <a href="san-pham-chi-tiet.aspx">
                        <img src="assets/images/sp35.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="san-pham-chi-tiet.aspx">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="san-pham-chi-tiet.aspx">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
            <div class="product-box">
                <div class="info-img">
                    <a href="san-pham-chi-tiet.aspx">
                        <img src="assets/images/sp36.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="san-pham-chi-tiet.aspx">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="san-pham-chi-tiet.aspx">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
            <div class="product-box">
                <div class="info-img">
                    <a href="#">
                        <img src="assets/images/sp35.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="#">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="#">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
            <div class="product-box">
                <div class="info-img">
                    <a href="#">
                        <img src="assets/images/sp36.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="#">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="#">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
            <div class="product-box">
                <div class="info-img">
                    <a href="#">
                        <img src="assets/images/sp35.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="#">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="#">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
            <div class="product-box">
                <div class="info-img">
                    <a href="#">
                        <img src="assets/images/sp36.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="#">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="#">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
            <div class="product-box">
                <div class="info-img">
                    <a href="#">
                        <img src="assets/images/sp35.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="#">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="#">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
            <div class="product-box">
                <div class="info-img">
                    <a href="#">
                        <img src="assets/images/sp36.jpg" alt="" /></a>
                </div>
                <div class="info-content">
                    <a href="#">HUEWWEI GR5 2017</a>
                    <span>5.990.000<span>đ</span></span>
                    <i>6.990.000đ</i>
                    <ul>
                        <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                        <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                    </ul>
                    <div class="product-btn">
                        <a href="#">MUA</a>
                        <a href="#">XEM CHI TIẾT</a>
                    </div>
                </div>
                <div class="icon-new">
                    <img src="assets/images/icon-new.png" alt="" />
                </div>
            </div>
        </div>
        <div class="clr"></div>
        <div class="product-viewmore">
            <a href="#">Xem thêm 123 điện thoại</a>
        </div>
    </div>
    <uc1:uccare runat="server" ID="uccare" />
</asp:Content>

