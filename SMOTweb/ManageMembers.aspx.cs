using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMOTweb
{
    public partial class ManageMembers : System.Web.UI.Page
    {
        protected int CurrentMember
        {
            get
            {
                if (!string.IsNullOrWhiteSpace(Request.QueryString["mid"]))
                    return int.Parse(Request.QueryString["mid"].ToString());
                else
                    return 0;
            }
        }
        protected int NewMember
        {
            get
            {
                if (!string.IsNullOrWhiteSpace(Request.QueryString["NewMember"]))
                    return 1;
                else
                    return 0;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (NewMember == 1)
                {
                    PanelGridView.Visible = false;
                    PanelEditMember.Visible = true;
                }
                else if (CurrentMember > 0)
                {
                    PanelGridView.Visible = false;
                    PanelEditMember.Visible = true;
                    loadCurrentMember();
                }
                else
                {
                    PanelGridView.Visible = true;
                    PanelEditMember.Visible = false;
                    loadMembers();
                }
            }
        }
        protected void loadMembers()
        {
            BLL.Members objData = new BLL.Members();
            objData.LoadAll();

            GridViewMembers.DataSource = objData.DefaultView;
            GridViewMembers.DataBind();
        }
        protected void loadCurrentMember()
        {
            BLL.Members objData = new BLL.Members();
            objData.LoadByPrimaryKey(CurrentMember);
            txtName.Text = objData.MemberName;
            txtEmail.Text = objData.MemberEmail;
            txtTelephone.Text = objData.MemberTelephone;
            if (!objData.IsColumnNull(BLL.Members.ColumnNames.MemberImagePath))
            {
                btnDeletePhoto.Visible = true;
                imgMember.Src = objData.MemberImagePath;
            }
            else
                btnDeletePhoto.Visible = false;
        }
        protected void btnAddMember_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageMembers.aspx?NewMember=1");
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageMembers.aspx");
        }
        protected void GridViewMembers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "EditMember":
                    Response.Redirect("ManageMembers.aspx?mid=" + e.CommandArgument);
                    break;

                case "DeleteMember":
                    BLL.Members objData = new BLL.Members();
                    objData.LoadByPrimaryKey(int.Parse(e.CommandArgument.ToString()));
                    objData.MarkAsDeleted();
                    objData.Save();
                    loadMembers();
                    break;

                default:
                    break;
            }
        }
        protected void GridViewMembers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMembers.PageIndex = e.NewPageIndex;
            loadMembers();
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            BLL.Members objData = new BLL.Members();
            if (CurrentMember > 0)
                objData.LoadByPrimaryKey(CurrentMember);
            else
                objData.AddNew();

            objData.MemberName = txtName.Text;
            objData.MemberTelephone = txtTelephone.Text;
            objData.MemberEmail = txtEmail.Text;
            if (FileUploadMemberPhoto.HasFile)
            {
                string imagePath = "UploadedFiles/Members/" + FileUploadMemberPhoto.FileName;
                FileUploadMemberPhoto.SaveAs(MapPath("~/" + imagePath));
                objData.MemberImagePath = imagePath;
            }
            objData.Save();
            //loadCurrentMember();
            Response.Redirect("ManageMembers.aspx?mid=" + objData.MemberID);
        }
        protected void btnDeletePhoto_Click(object sender, EventArgs e)
        {
            BLL.Members objData = new BLL.Members();
            objData.LoadByPrimaryKey(CurrentMember);
            objData.SetColumnNull(BLL.Members.ColumnNames.MemberImagePath);
            objData.Save();
            imgMember.Src = "~/images/noImg.png";
            btnDeletePhoto.Visible = false;
        }
    }
}