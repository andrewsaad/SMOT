using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMOTweb
{
    public partial class Career : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BLL.PageContent objData = new BLL.PageContent();
                objData.LoadByPrimaryKey(3);
                lblPageTitle.Text = objData.PageTitle;
                litJoinUs.Text = objData.PlaceHolder1;
            }
        }
    }
}