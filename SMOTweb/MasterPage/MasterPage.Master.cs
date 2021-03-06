﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMOTweb
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BLL.ContactDetails objData = new BLL.ContactDetails();
                objData.LoadByPrimaryKey(1);

                //Header
                lblHeaderAddress.Text = objData.Location;
                lblHeaderPhone.Text = objData.Telephone;
                //FacebookHeader.InnerText = objData.Facebook;
                aHeaderEmail.InnerText= objData.Email;
                aHeaderEmail.HRef = "mailto:" + objData.Email;

                //Footer
                lblFooterAddress.Text = objData.Location;
                lblFooterPhone.Text = objData.Telephone;
                lblFooterEmail.Text = objData.Email;
                //FacebookFooter.InnerText = objData.Facebook;
                aFooterEmail.HRef = "mailto:" + objData.Email;

                if (Page.User.Identity.IsAuthenticated)
                {
                    lblLoginHi.Visible = true;
                    lblLoginDash.Visible = true;
                }
            }
        }
    }
}