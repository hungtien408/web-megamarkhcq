using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class site : System.Web.UI.MasterPage
{
    public static string ProductColorName = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("san-pham.aspx?ci=") || page.Contains("chi-tiet-san-pham.aspx?pi="))
                activePage = "san-pham.aspx";
            else if (page.Contains("chi-tiet-tin-tuc.aspx?id="))
                activePage = "tin-tuc.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;

            //var date = string.Format("{0: dd/MM}", DateTime.Now);
            ////ddlNgayGiao.Items.Add(new ListItem("Hôm nay ngày  " + date, ""));
            //DateTime d = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            //var lastDayOfMonth = d.AddDays(-1);
            //for (int i = DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month) - lastDayOfMonth.Day; i <= DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month); i++)
            //{
            //    ddlNgayGiao.Items.Add(new ListItem(i.ToString() + "/" + DateTime.Now.Month));
            //}

            //foreach (DateTime date in DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month))
            //{
            //    ddlNgayGiao.Items.Add(new ListItem(date.));
            //}
            DateTime first = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);
            for (DateTime current = first ; current.Month == first.Month ; current = current.AddDays(1)) {
                ddlNgayGiao.Items.Add(new ListItem(string.Format("{0: dd/MM}", current)));
            }

            lblSuccessFullName.Text = "";
            lblSuccessAddress.Text = "";
            lblSuccessYeuCau.Text = "";
            lblSuccessGiaoHang.Text = "";
            lblSuccessTongTien.Text = "";
        }
        
    }
    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (DropDownList)sender;
        cbo.Items.Insert(0, new ListItem("--Chọn màu--"));
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void btnNewLetter_Click(object sender, EventArgs e)
    {
        if (txtEmailNewLetter.Text != "")
        {
            new TLLib.Newsletter().NewsletterInsert(txtEmailNewLetter.Text.ToString().Trim());
        }
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cảm ơn bạn đã đăng ký nhận tin Mega Mark');});", true);
        txtEmailNewLetter.Text = "";
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (Session["Cart"] != null)
        {
            var oShoppingCart = new ShoppingCart();
            var dt = oShoppingCart.Cart();
            if (dt.Rows.Count == 0)
            {
                lblSummary.Text = "0";
            }
            else
            {
                int quantity = 0;
                double Total = 0;

                foreach (DataRow dr in dt.Rows)
                {
                    var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? "0" : dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]);
                    Total += Quantity * Price;
                    quantity += Quantity;
                }
                lblSummary.Text = quantity.ToString();
                //lblTotal.Text = string.IsNullOrEmpty(Total.ToString()) ? "0.000" : (string.Format("{0:##,###.##}", Total.ToString().Replace('.', '*').Replace(',', '.').Replace('*', ',')));
                lblTotalPrice.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',') + "đ";
            }

            ListView1.DataBind();
        }
    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        var dtCart = Session["Cart"] as DataTable;
        if (dtCart != null)
        {
            var iShippingPrice = "0";// Convert.ToDouble(string.IsNullOrEmpty(dv[0]["ShippingPrice"].ToString()) ? "0" : dv[0]["ShippingPrice"].ToString());
            double TotalPrice = 0;
            double SumTotalPrice = 0;
            double ShippingPrice = 0;

            if (lblTotalPrice != null)
            {
                foreach (DataRow dr in dtCart.Rows)
                {
                    var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? 0 : dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]);
                    TotalPrice += Quantity * Price;
                }

                ShippingPrice = Convert.ToDouble(iShippingPrice);
                SumTotalPrice = TotalPrice + ShippingPrice;
                hdnTotalPrice.Value = TotalPrice.ToString();
                //hdnSumTotalPrice.Value = SumTotalPrice.ToString();
                lblTotalPrice.Text = string.IsNullOrEmpty(TotalPrice.ToString()) ? "<span>0</span> đ" : "<span>" + (string.Format("{0:##,###.##}", TotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</span> đ";
            }
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        if (cmd == "Remove")
        {
            var ProductID = (item.FindControl("hdnCartProductID") as HiddenField).Value;

            var oShoppingCart = new ShoppingCart();
            oShoppingCart.DeleteItem(ProductID);
            ListView1.DataBind();
        }
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        var textbox = (TextBox)sender;
        var parent = textbox.NamingContainer;
        var oShoppingCart = new ShoppingCart();
        var Quantity = (parent.FindControl("txtQuantity") as TextBox).Text.Trim();
        var ProductID = (parent.FindControl("hdnCartProductID") as HiddenField).Value;
        int Quantity1 = Int32.Parse(Quantity);
        if (Quantity1 > 0 && Quantity1 < 1000)
        {
            oShoppingCart.UpdateQuantity(ProductID, Quantity);
            ListView1.DataBind();
        }
        else
        {
            Quantity = "1";
            ScriptManager.RegisterClientScriptBlock((TextBox)sender, sender.GetType(), "runtime", "alert('Bạn nhập quá số lượng cho phép (1 - 12)')", true);
        }

        //ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {$('.cart img').trigger('click');});", true);
    }
    protected void btnDatHang_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            sendEmail();
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {$('.btn-a a').trigger('click');});", true);

            txtFullName.Text = "";
            txtPhone.Text = "";
            txtContent.Text = "";
            txtAddress.Text = "";
            var oShoppingCart = new ShoppingCart();
            oShoppingCart.DeleteAllItem();
            Session["Cart"] = null;
            ListView1.DataBind();
        }
    }
    private void sendEmail()
    {
        var dtCart = Session["Cart"] as DataTable;
        string Price = "0";
        double TotalPrice = 0;
        double SumTotalPrice = 0;

        string msg = "<h3 style='font-size: 18px'>MEGA MARK: ĐẶT HÀNG</h3><br/>";
        if(rdbGender.SelectedValue == "1")
            msg += "<b>Anh: </b>" + txtFullName.Text.Trim().ToString() + "<br /><br />";
        else
            msg += "<b>Chị: </b>" + txtFullName.Text.Trim().ToString() + "<br /><br />";
        
        msg += "<b>Điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br /><br />";
        msg += "<b>Yêu cầu khác: </b>" + txtContent.Text.Trim().ToString() + "<br /><br />";
        if (rdbGiaoHang.SelectedValue == "1"){
            msg += "<b>Tỉnh/thành: </b>" + ddlProvince.SelectedItem.Text + "<br /><br />";
            msg += "<b>Quận/huyện: </b>" + ddlDistrict.SelectedItem.Text + "<br /><br />";
        }
        msg += "<b>Địa chỉ: </b>" + txtAddress.Text.Trim().ToString() + "<br /><br />";
        msg += "<b>Thời gian giao: </b>" + ddlNgayGiao.SelectedItem.Text + " - " + ddlGioGiao.SelectedItem.Text + "<br /><br />";
        if(chkXuatHoaDon.Checked)
            msg += "<b>Xuất hoá đơn công ty: Có</b><br /><br />";
        else
            msg += "<b>Xuất hoá đơn công ty: Không</b><br /><br />";

        msg += "<table style='font-size: 11px; font-family: Verdana; padding: 10px; border: 1px solid #C7D7DB; width: 100%;border-collapse: collapse;' cellpadding='0' cellspacing='0'>";
        //Body += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Cỡ/Size</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";
        msg += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";

        foreach (DataRow dr in dtCart.Rows)
        {
            //string ProductCode = dr["Tag"].ToString();
            string ProductID = dr["ProductID"].ToString();
            string ProductName = dr["ProductName"].ToString();
            string Quantity = dr["Quantity"].ToString();
            Price = dr["Price"].ToString();
            //string ProductOptionCategoryName = dr["ProductOptionCategoryName"].ToString();
            // string ProductLengthName = dr["ProductLengthName"].ToString();
            double tPrice = Convert.ToDouble(Price) * Convert.ToDouble(Quantity);

            var itemPrice = string.Format("{0:##,###.##}", tPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ";
            var sPrice = string.Format("{0:##,###.##}", dr["Price"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ";
            //Amount += Convert.ToDouble(Price) * Convert.ToDouble(Quantity);
            msg += "<tr>";
            msg += "<td style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductName + "</td>";
            //msg += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'><div style='background: " + ProductColorName + "; width: 30px; height: 30px;'></div></td>";
            msg += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + Quantity + "</td>";
            msg += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + sPrice + "</td>";
            msg += "<td align='right' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + itemPrice + "</td>";
            msg += "</tr>";
            TotalPrice += tPrice;
        }

        SumTotalPrice = TotalPrice;


        msg += "</table>";
        msg += "<div style='clear: both;'></div>";
        msg += "<table style='font-size: 13px; font-family: Verdana; text-align: right; margin: 10px 0; width: 100%; float: right;' cellpadding='0' cellspacing='0'>";
        msg += "<tr><td style='width:85%;'>Thành tiền:</td><td style='width:15%;'>" + string.Format("{0:##,###.##}", TotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</td></tr>";
        msg += "<tr><td><b>Tổng tiền:</b></td><td><b>" + string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</b></td></tr>";
        msg += "</table>";
        msg += "<div style='clear: both;'></div>";

        if (rdbGender.SelectedValue == "1")
            lblSuccessFullName.Text = "<b>Anh: </b>" + txtFullName.Text.Trim().ToString();
        else
            lblSuccessFullName.Text = "<b>Chị: </b>" + txtFullName.Text.Trim().ToString();
        lblSuccessAddress.Text = txtAddress.Text.Trim().ToString();
        lblSuccessYeuCau.Text = txtContent.Text.Trim().ToString();
        lblSuccessGiaoHang.Text = " Trước " + ddlGioGiao.SelectedItem.Text + " ngày " + ddlNgayGiao.SelectedItem.Text;
        lblSuccessTongTien.Text = string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ";
        

        TLLib.Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "hungtien408@gmail.com", "", "ĐẶT HÀNG MEGA MARK", msg, true);
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("tim-kiem.aspx?kw=" + txtSearch.Text.Trim());
    }
    protected void ddlColorProduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        var textbox = (DropDownList)sender;
        var parent = textbox.NamingContainer;
        var ddlColorProduct = parent.FindControl("ddlColorProduct") as DropDownList;
        ProductColorName = ddlColorProduct.SelectedItem.Text;
    }
}
