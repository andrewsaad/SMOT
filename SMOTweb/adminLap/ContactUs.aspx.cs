using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace SMOTweb.adminLap
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    ContactDetails con = new ContactDetails();
                    con.LoadByPrimaryKey(1);
                    txtEMail.Text = con.Email;
                    txtFacebook.Text = con.Facebook;
                    txtLocation.Text = con.Location;
                    txtTelephone.Text = con.Telephone;
                    
                }
                catch (Exception)
                {
                }
               
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            ContactDetails cd = new ContactDetails();
            cd.LoadByPrimaryKey(1);
            cd.Telephone = txtTelephone.Text;
            cd.Email = txtEMail.Text;
            cd.Location = txtLocation.Text;
            cd.Facebook = txtFacebook.Text;
            cd.Save();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}