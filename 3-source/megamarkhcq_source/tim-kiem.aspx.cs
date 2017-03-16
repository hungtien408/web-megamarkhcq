using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class san_pham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["pci"]))
            {
                var oProductCategory = new ProductCategory();
                var dv = oProductCategory.ProductCategorySelectOne(Request.QueryString["pci"]).DefaultView;
                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];
                strTitle = Server.HtmlDecode(row["ProductCategoryName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTitle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());
                //hdnSanPhamDetails.Value = progressTitle(dv2[0]["ProductCategoryName"].ToString()) + "-pci-" + dv2[0]["ProductCategoryID"].ToString() + ".aspx";

                var oProduct = new Product();
                var dv2 = oProduct.ProductSelectAll("", "", "", "", "", "", "", Request.QueryString["pci"], "", "", "", "", "", "", "", "", "", "", "", "", "True", "True").DefaultView;

                if (dv2.Count <= DataPager1.PageSize)
                {
                    LinkView.Visible = false;
                }
            }
            else
            {
                strTitle = strMetaTitle = "Tìm Kiếm";
                strDescription = "Tìm Kiếm";
                strMetaDescription = "Tìm Kiếm";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta()
            {
                Name = "description",
                Content = !string.IsNullOrEmpty(strMetaDescription) ?
                    strMetaDescription : strDescription
            };
            Header.Controls.Add(meta);
            //lblTitle.Text = strTitle;
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void lstProduct_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var Description = (item.FindControl("lblDescription") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = (item.FindControl("hdnProductCode") as HiddenField).Value;
        var Quantity = "1";//(item.FindControl("inQuantity") as TextBox).Text;//(item.FindControl("hdnQuantitySale") as HiddenField).Value;
        double Price = Convert.ToDouble((item.FindControl("hdnPrice") as HiddenField).Value);
        double SavePrice = 0;
        var oProductSizeColor = new ProductSizeColor();
        if (cmd == "AddToCart")
        {
            var oShoppingCart = new ShoppingCart();
            oShoppingCart.CreateCart(ProductID,
                ImageName,
                ProductName,
                ProductNameEn,
                ProductCode,
                "",
                Price,
                SavePrice,
                "",
                Quantity,
                Description
                );
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataPager1.PageSize = DataPager1.PageSize + 8;
    }
    protected void dropHangSanXuat_SelectedIndexChanged(object sender, EventArgs e)
    {
        var dropdown = (DropDownList)sender;
        var parent = dropdown.NamingContainer;
        var dropHangSanXuat = parent.FindControl("dropHangSanXuat") as DropDownList;
        if (dropHangSanXuat.SelectedValue != "")
        {
            odsProduct.SelectParameters["ManufacturerID"].DefaultValue = dropHangSanXuat.SelectedValue;
        }
        else
        {
            odsProduct.SelectParameters["ManufacturerID"].DefaultValue = "";
        }
        if (((DataView)odsProduct.Select()).Count <= DataPager1.PageSize)
        {
            LinkView.Visible = false;
        }
    }
    protected void dropPrice_SelectedIndexChanged(object sender, EventArgs e)
    {
        var dropdown = (DropDownList)sender;
        var parent = dropdown.NamingContainer;
        var dropPrice = parent.FindControl("dropPrice") as DropDownList;
        if (dropPrice.SelectedValue == "1")
        {
            odsProduct.SelectParameters["PriceFrom"].DefaultValue = "3000000";
            odsProduct.SelectParameters["PriceTo"].DefaultValue = "7000000";
        }
        else if (dropPrice.SelectedValue == "2")
        {
            odsProduct.SelectParameters["PriceFrom"].DefaultValue = "7000000";
            odsProduct.SelectParameters["PriceTo"].DefaultValue = "10000000";
        }
        else if (dropPrice.SelectedValue == "3")
        {
            odsProduct.SelectParameters["PriceFrom"].DefaultValue = "10000000";
            odsProduct.SelectParameters["PriceTo"].DefaultValue = "20000000";
        }
        else if (dropPrice.SelectedValue == "4")
        {
            odsProduct.SelectParameters["PriceFrom"].DefaultValue = "20000000";
            odsProduct.SelectParameters["PriceTo"].DefaultValue = "";
        }
        else
        {
            odsProduct.SelectParameters["PriceFrom"].DefaultValue = "";
            odsProduct.SelectParameters["PriceTo"].DefaultValue = "";
        }
        if (((DataView)odsProduct.Select()).Count <= DataPager1.PageSize)
        {
            LinkView.Visible = false;
        }
    }
    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (DropDownList)sender;
        cbo.Items.Insert(0, new ListItem("--Chọn thương hiệu--", ""));
    }
}