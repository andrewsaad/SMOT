using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace SMOTweb.adminLap
{
    public partial class CareersRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBindReq();
        }

        protected void GrdCareerRequest_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            BLL.Career carReq = new BLL.Career();
            carReq.LoadByPrimaryKey(int.Parse(e.CommandArgument.ToString()));

            if (e.CommandName == "DownloadCV")
            {
                string url = carReq.FilePath.ToString();
                Response.Redirect(url);
            }
            else if (e.CommandName == "DeleteGrd")
            {
                carReq.MarkAsDeleted();
                carReq.Save();
                DataBindReq();
            }

        }
        private void DataBindReq()
        {
            BLL.Career CareerReq = new BLL.Career();
            CareerReq.LoadAll();
            GrdCareerRequest.DataSource = CareerReq.DefaultView;
            GrdCareerRequest.DataBind();
        }
    }
}