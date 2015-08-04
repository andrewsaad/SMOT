using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMOTweb.adminLap
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkLogOut_Click(object sender, EventArgs e)
        {
            Session["LoggedInUser"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}