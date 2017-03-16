<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>MegaMart</title>
    <meta name="description" content="MegaMart" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><span> Tin tức</span>
    </div>
    <div class="news-main">
        <div class="news-box">
            <div class="news-img">
                <a href="tin-tuc-chi-tiet.aspx">
                    <img src="assets/images/news1.jpg" alt="" /></a>
            </div>
            <div class="news-content">
                <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">So sánh Galaxy A5 2017 và iPhone SE: 9 triệu chọn Sung to hay Táo nhỏ?</a></div>
                <div class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed quam ac purus finibus posuere id vel tortor.</div>
            </div>
        </div>
        <div class="news-box">
            <div class="news-img">
                <a href="tin-tuc-chi-tiet.aspx">
                    <img src="assets/images/news1.jpg" alt="" /></a>
            </div>
            <div class="news-content">
                <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">So sánh Galaxy A5 2017 và iPhone SE: 9 triệu chọn Sung to hay Táo nhỏ?</a></div>
                <div class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed quam ac purus finibus posuere id vel tortor.</div>
            </div>
        </div>
        <div class="news-box">
            <div class="news-img">
                <a href="tin-tuc-chi-tiet.aspx">
                    <img src="assets/images/news1.jpg" alt="" /></a>
            </div>
            <div class="news-content">
                <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">So sánh Galaxy A5 2017 và iPhone SE: 9 triệu chọn Sung to hay Táo nhỏ?</a></div>
                <div class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed quam ac purus finibus posuere id vel tortor.</div>
            </div>
        </div>
        <div class="news-box">
            <div class="news-img">
                <a href="tin-tuc-chi-tiet.aspx">
                    <img src="assets/images/news1.jpg" alt="" /></a>
            </div>
            <div class="news-content">
                <div class="news-name"><a href="tin-tuc-chi-tiet.aspx">So sánh Galaxy A5 2017 và iPhone SE: 9 triệu chọn Sung to hay Táo nhỏ?</a></div>
                <div class="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed quam ac purus finibus posuere id vel tortor.</div>
            </div>
        </div>
    </div>
    <div class="pager">
        <a href="#" class="current">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#" class="next fa fa-angle-right"></a>
    </div>
</asp:Content>

