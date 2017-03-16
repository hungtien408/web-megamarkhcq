using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class gioi_thieu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            var oProduct = new Product();
            var dv = oProduct.ProductSelectOne("1").DefaultView;
            if (dv != null && dv.Count <= 0) return;
            var row = dv[0];
            strTitle = Server.HtmlDecode(row["ProductName"].ToString());
            strDescription = Server.HtmlDecode(row["Description"].ToString());
            strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
            strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta()
            {
                Name = "description",
                Content = !string.IsNullOrEmpty(strMetaDescription) ?
                    strMetaDescription : strDescription
            };
            Header.Controls.Add(meta);
        }
    }
}