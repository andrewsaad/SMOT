using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace SMOTweb
{
    public partial class ManageContactInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BLL.ContactDetails objdata = new BLL.ContactDetails();
                objdata.LoadAll();
                txtFacebook.Text = objdata.Facebook;
                txtLocation.Text = objdata.Location;
                txtMail.Text = objdata.Email;
                txtTelephone.Text = objdata.Telephone;
            }


        }

        protected void btnSaveInfo_Click(object sender, EventArgs e)
        {
            BLL.ContactDetails objdata = new ContactDetails();
            objdata.LoadByPrimaryKey(1);
            objdata.Telephone = txtTelephone.Text;
            objdata.Email = txtMail.Text;
            objdata.Location = txtLocation.Text;
            objdata.Facebook = txtFacebook.Text;
            objdata.Save();

            ClientScript.RegisterStartupScript(this.GetType(), "getCKEditor", "$(#hfPageContect).val() = $('#txtPageContent').ckeditorGet();");
            BLL.PageContent objPC = new PageContent();
            objPC.LoadByPrimaryKey(1);
            objPC.PlaceHolder1 = hfPageContect.Value;
            objPC.Save();
            Response.Redirect("ManageContactInformation.aspx");
        }
    }
}