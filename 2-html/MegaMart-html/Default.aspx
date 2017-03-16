<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/assets/uc/uc-care.ascx" TagPrefix="uc1" TagName="uccare" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>MegaMart</title>
    <meta name="description" content="MegaMart" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <div class="slide-df">
            <div id="banner">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item">
                            <img src="assets/images/banner-img-1.jpg" alt="" />
                        </div>
                        <div class="item">
                            <img src="assets/images/banner-img-2.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-news">
            <div class="title-main news-title">
                <h1>TIN CÔNG NGHỆ</h1>
                <div class="view-more"><a href="tin-tuc.aspx">Xem thêm</a></div>
            </div>
            <div class="news-df">
                <div class="newsbox">
                    <div class="box-img">
                        <a href="#">
                            <img src="assets/images/news1.jpg" alt="" /></a>
                    </div>
                    <div class="box-name"><a href="#">So sánh Galaxy A5 2017 và iPhone SE: 9 triệu chọn Sung to hay Táo nhỏ?</a></div>
                </div>
                <div class="newsbox">
                    <div class="box-img">
                        <a href="#">
                            <img src="assets/images/news2.jpg" alt="" /></a>
                    </div>
                    <div class="box-name"><a href="#">So sánh Galaxy A5 2017 và iPhone SE: 9 triệu chọn Sung to hay Táo nhỏ?</a></div>
                </div>
                <div class="newsbox">
                    <div class="box-img">
                        <a href="#">
                            <img src="assets/images/news1.jpg" alt="" /></a>
                    </div>
                    <div class="box-name"><a href="#">Microsoft phát hành bản cập nhật Windows 10 Mobile build 15031</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="wrapper-main">
        <div class="wrapper-box">
            <div class="title-main mobile">
                <h1>ĐIỆN THOẠI</h1>
                <div class="list-menu">
                    <ul>
                        <li><a href="#">samsung</a></li>
                        <li><a href="#">Iphone</a></li>
                        <li><a href="#">Oppo</a></li>
                        <li><a href="#">HUAWEI</a></li>
                        <li><a href="#">HTC</a></li>
                        <li><a href="#">Sony</a></li>
                        <li><a href="#">Asus</a></li>
                        <li><a href="#">LG</a></li>
                    </ul>
                </div>
                <div class="view-more"><a href="#">Xem thêm</a></div>
            </div>
            <div class="wrapper-info">
                <div class="info1" data-tooltip="info-hover1">
                    <div class="info-img">
                        <a href="#">
                            <img src="assets/images/sp1.jpg" alt="" /></a>
                    </div>
                    <div class="info-content">
                        <a href="#">HUEWWEI GR5 2017</a>
                        <ul>
                            <li>Màn hình: 9.7’, Retina</li>
                            <li>HDH: IOS 9, CPU: 2 nhân</li>
                            <li>RAM: 2GB, ROM: 32GB</li>
                            <li>Camera: 12MP và 5MP</li>
                            <li>Kết nối: Wifi</li>
                            <li>Pin: 27.5 Wh</li>
                        </ul>
                        <span>5.990.000<span>đ</span></span>
                        <i>6.990.000đ</i>
                    </div>
                    <div class="icon-hot">
                        <img src="assets/images/icon-hot.png" alt="" />
                    </div>
                </div>
                <div class="info2">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp2.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                            <i>6.990.000đ</i>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp3.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp4.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp5.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
                <div class="info3">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp6.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <div class="wrapper-box">
            <div class="title-main tablet">
                <h1>TABLET</h1>
                <div class="list-menu">
                    <ul>
                        <li><a href="#">samsung</a></li>
                        <li><a href="#">Iphone</a></li>
                        <li><a href="#">Oppo</a></li>
                        <li><a href="#">HUAWEI</a></li>
                        <li><a href="#">HTC</a></li>
                        <li><a href="#">Sony</a></li>
                        <li><a href="#">Asus</a></li>
                        <li><a href="#">LG</a></li>
                    </ul>
                </div>
                <div class="view-more"><a href="#">Xem thêm</a></div>
            </div>
            <div class="wrapper-info">
                <div class="info1" data-tooltip="info-hover1">
                    <div class="info-img">
                        <a href="#">
                            <img src="assets/images/sp1.jpg" alt="" /></a>
                    </div>
                    <div class="info-content">
                        <a href="#">HUEWWEI GR5 2017</a>
                        <ul>
                            <li>Màn hình: 9.7’, Retina</li>
                            <li>HDH: IOS 9, CPU: 2 nhân</li>
                            <li>RAM: 2GB, ROM: 32GB</li>
                            <li>Camera: 12MP và 5MP</li>
                            <li>Kết nối: Wifi</li>
                            <li>Pin: 27.5 Wh</li>
                        </ul>
                        <span>5.990.000<span>đ</span></span>
                        <i>6.990.000đ</i>
                    </div>
                    <div class="icon-hot">
                        <img src="assets/images/icon-hot.png" alt="" />
                    </div>
                </div>
                <div class="info2">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp2.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                            <i>6.990.000đ</i>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp3.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp4.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp5.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
                <div class="info3">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp6.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <div class="wrapper-box">
            <div class="banner-img">
                <img src="assets/images/banner1.jpg" alt="" />
            </div>
            <div class="banner-img">
                <img src="assets/images/banner2.jpg" alt="" />
            </div>
        </div>
        <div class="wrapper-box">
            <div class="title-main laptop">
                <h1>ĐIỆN THOẠI</h1>
                <div class="list-menu">
                    <ul>
                        <li><a href="#">samsung</a></li>
                        <li><a href="#">Iphone</a></li>
                        <li><a href="#">Oppo</a></li>
                        <li><a href="#">HUAWEI</a></li>
                        <li><a href="#">HTC</a></li>
                        <li><a href="#">Sony</a></li>
                        <li><a href="#">Asus</a></li>
                        <li><a href="#">LG</a></li>
                    </ul>
                </div>
                <div class="view-more"><a href="#">Xem thêm</a></div>
            </div>
            <div class="wrapper-info">
                <div class="info1" data-tooltip="info-hover1">
                    <div class="info-img">
                        <a href="#">
                            <img src="assets/images/sp1.jpg" alt="" /></a>
                    </div>
                    <div class="info-content">
                        <a href="#">HUEWWEI GR5 2017</a>
                        <ul>
                            <li>Màn hình: 9.7’, Retina</li>
                            <li>HDH: IOS 9, CPU: 2 nhân</li>
                            <li>RAM: 2GB, ROM: 32GB</li>
                            <li>Camera: 12MP và 5MP</li>
                            <li>Kết nối: Wifi</li>
                            <li>Pin: 27.5 Wh</li>
                        </ul>
                        <span>5.990.000<span>đ</span></span>
                        <i>6.990.000đ</i>
                    </div>
                    <div class="icon-hot">
                        <img src="assets/images/icon-hot.png" alt="" />
                    </div>
                </div>
                <div class="info2">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp2.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                            <i>6.990.000đ</i>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp3.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp4.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp5.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
                <div class="info3">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp6.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <div class="wrapper-box">
            <div class="title-main picter">
                <h1>TABLET</h1>
                <div class="list-menu">
                    <ul>
                        <li><a href="#">samsung</a></li>
                        <li><a href="#">Iphone</a></li>
                        <li><a href="#">Oppo</a></li>
                        <li><a href="#">HUAWEI</a></li>
                        <li><a href="#">HTC</a></li>
                        <li><a href="#">Sony</a></li>
                        <li><a href="#">Asus</a></li>
                        <li><a href="#">LG</a></li>
                    </ul>
                </div>
                <div class="view-more"><a href="#">Xem thêm</a></div>
            </div>
            <div class="wrapper-info">
                <div class="info1" data-tooltip="info-hover1">
                    <div class="info-img">
                        <a href="#">
                            <img src="assets/images/sp1.jpg" alt="" /></a>
                    </div>
                    <div class="info-content">
                        <a href="#">HUEWWEI GR5 2017</a>
                        <ul>
                            <li>Màn hình: 9.7’, Retina</li>
                            <li>HDH: IOS 9, CPU: 2 nhân</li>
                            <li>RAM: 2GB, ROM: 32GB</li>
                            <li>Camera: 12MP và 5MP</li>
                            <li>Kết nối: Wifi</li>
                            <li>Pin: 27.5 Wh</li>
                        </ul>
                        <span>5.990.000<span>đ</span></span>
                        <i>6.990.000đ</i>
                    </div>
                    <div class="icon-hot">
                        <img src="assets/images/icon-hot.png" alt="" />
                    </div>
                </div>
                <div class="info2">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp2.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                            <i>6.990.000đ</i>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp3.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp4.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp5.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
                <div class="info3">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp6.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                        <div class="icon-new">
                            <img src="assets/images/icon-new.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <div class="wrapper-box">
            <div class="title-main accessories">
                <h1>PHỤ KIỆN</h1>
                <div class="list-menu">
                    <ul>
                        <li><a href="#">pin sạc dự phòng</a></li>
                        <li><a href="#">cáp sạc</a></li>
                        <li><a href="#">thẻ nhớ</a></li>
                        <li><a href="#">tai nghe</a></li>
                        <li><a href="#">usb</a></li>
                        <li><a href="#">chuột</a></li>
                        <li><a href="#">loa</a></li>
                        <li><a href="#">đồng hồ</a></li>
                        <li><a href="#">ốp lưng</a></li>
                        <li><a href="#">miếng dán màng hình</a></li>
                    </ul>
                </div>
                <div class="view-more"><a href="#">Xem thêm</a></div>
            </div>
            <div class="wrapper-info">
                <div class="info4">
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp25.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp26.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp27.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp28.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp29.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp30.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp31.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp32.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp33.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="info-img">
                            <a href="#">
                                <img src="assets/images/sp34.jpg" alt="" /></a>
                        </div>
                        <div class="info-content">
                            <a href="#">Samsung Galaxy J5 Prime</a>
                            <span>5.990.000<span>đ</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <uc1:uccare runat="server" ID="uccare" />
    </div>
    <div id="mystickytooltip" class="stickytooltip">
        <div id="info-hover1" class="info-detail atip">
            <h1>Samsung Galaxy J5 Prime</h1>
            <span>5.990.000<span>đ</span></span>
            <ul>
                <li>Giảm ngày 5% khi mua Laptop/Tablet</li>
                <li>Tặng gói bảo hiểm tai nạn bất ngờ</li>
                <li>ặng PMH 200.000đ Hoặc Trả góp 0&</li>
            </ul>
            <ul>
                <li>Màn hình: 9.7’, Retina</li>
                <li>HDH: IOS 9, CPU: 2 nhân</li>
                <li>RAM: 2GB, ROM: 32GB</li>
                <li>Camera: 12MP và 5MP</li>
                <li>Kết nối: Wifi</li>
                <li>Pin: 27.5 Wh</li>
            </ul>
        </div>
    </div>
</asp:Content>



