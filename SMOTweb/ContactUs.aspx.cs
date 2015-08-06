using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMOTweb
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BLL.ContactDetails objData = new BLL.ContactDetails();
                objData.LoadByPrimaryKey(1);
                lblContactLocation.Text = objData.Location;
                lblContactPhone.Text = objData.Telephone;
                aContactEmail.InnerText = objData.Email;
                aContactEmail.HRef = "mailto:" + objData.Email;
            }
        }
    }
}