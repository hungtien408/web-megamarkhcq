<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>MegaMart</title>
    <meta name="description" content="MegaMart" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="site" class="corner">
        <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a><span class="fa fa-caret-right"></span><span> Liên hệ</span>
    </div>
    <div id="mapshow"></div>
    <div class="contact-main">
        <div class="wrapper-map">
            <div class="contact-text">
                <h1>Liên hệ chúng tôi</h1>
                <p><span class=" fa fa-map-marker"></span>111 Tên Lửa, P. Bình Trị Đông B, Q. Bình Tân</p>
                <p><span class="fa fa-phone"></span>0917 377 999   </p>
                <p><span class="fa fa-envelope"></span><a href="mailto:info@megamart.vn">info@megamart.vn</a></p>
                <div class="follow-contact">
                    <h1 style="font-size:18px;">follow us</h1>
                    <a href="#">
                        <img src="assets/images/fl1.png" alt="" /></a>
                    <a href="#">
                        <img src="assets/images/fl2.png" alt="" /></a>
                    <a href="#">
                        <img src="assets/images/fl3.png" alt="" /></a>
                </div>
            </div>
            <div class="wrap-send">
                <div class="contact-w">
                    <div class="contact-input">
                        <label class="contact-lb">Họ Tên</label>
                        <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="contact-input">
                        <label class="contact-lb">Công ty</label>
                        <asp:TextBox ID="Textbox1" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="contact-input">
                        <label class="contact-lb">Địa chỉ</label>
                        <asp:TextBox ID="Textbox2" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="contact-input">
                        <label class="contact-lb">Điện thoại</label>
                        <asp:TextBox ID="Textbox6" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="contact-input">
                        <label class="contact-lb">Fax</label>
                        <asp:TextBox ID="Textbox3" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                    </div>
                    <div class="contact-input">
                        <label class="contact-lb">Email</label>
                        <asp:TextBox ID="Textbox5" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                    </div>
                </div>
                <div class="contact-w">
                    <label class="contact-lb">Nội dung</label>
                    <div class="contact-input contactarea">
                        <asp:TextBox ID="TextBox4" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder=""></asp:TextBox>
                    </div>
                </div>
                <div class="contact-button">
                    <div class="contact-btn">
                        <asp:Button ID="Button1" CssClass="button-btn" runat="server" Text="Gửi thông tin" />
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>

