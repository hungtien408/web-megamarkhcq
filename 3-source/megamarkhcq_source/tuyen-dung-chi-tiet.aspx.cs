﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class tuyen_dung_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["td"]))
            {
                var oProduct = new Product();
                var dv = oProduct.ProductSelectOne(Request.QueryString["td"]).DefaultView;
                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];
                strTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strDescription = Server.HtmlDecode(row["ProductName"].ToString());
                strMetaTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strMetaDescription = Server.HtmlDecode(row["ProductName"].ToString());
                //hdnSanPhamDetails.Value = progressTitle(dv2[0]["ProductCategoryName"].ToString()) + "-pci-" + dv2[0]["ProductCategoryID"].ToString() + ".aspx";
            }
            else
            {
                strTitle = strMetaTitle = "Tuyển Dụng";
                strDescription = "Tuyển Dụng";
                strMetaDescription = "Tuyển Dụng";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta()
            {
                Name = "description",
                Content = !string.IsNullOrEmpty(strMetaDescription) ?
                    strMetaDescription : strDescription
            };
            Header.Controls.Add(meta);
            lblTitle.Text = strTitle;
        }
    }
}