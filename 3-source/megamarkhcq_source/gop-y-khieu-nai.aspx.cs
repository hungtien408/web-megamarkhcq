using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class gop_y_khieu_nai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Góp Ý Khiếu Nại";
            var meta = new HtmlMeta() { Name = "description", Content = "Góp Ý Khiếu Nại" };
            Header.Controls.Add(meta);
        }
    }
}