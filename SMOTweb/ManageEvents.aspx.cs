using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMOTweb
{
    public partial class ManageEvents : System.Web.UI.Page
    {
        protected int CurrentEvent
        {
            get
            {
                if (!string.IsNullOrWhiteSpace(Request.QueryString["Eid"]))
                    return int.Parse(Request.QueryString["Eid"].ToString());
                else
                    return 0;
            }
        }
        protected int NewEvent
        {
            get
            {
                if (!string.IsNullOrWhiteSpace(Request.QueryString["NewEvent"]))
                    return 1;
                else
                    return 0;
            }
        }

        protected void BindEventType()
        {
            BLL.EventType objDate = new BLL.EventType();
            objDate.LoadAll();
            drpEventType.DataSource = objDate.DefaultView;
            
            drpEventType.DataTextField = BLL.EventType.ColumnNames.EventTypeName;
            drpEventType.DataValueField = BLL.EventType.ColumnNames.EventTypeID;
            drpEventType.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (NewEvent == 1)
                {
                    PanelGridView.Visible = false;
                    PanelEditEvent.Visible = true;
                }
                else if (CurrentEvent > 0)
                {
                    PanelGridView.Visible = false;
                    PanelEditEvent.Visible = true;
                    loadCurrentEvent();
                }
                else
                {
                    PanelGridView.Visible = true;
                    PanelEditEvent.Visible = false;
                    loadEvent();
                }
                
            }
            BindEventType();
        }


        protected void loadEvent()
        {
            BLL.Event objData = new BLL.Event();
            objData.LoadAll();

            GridViewEvents.DataSource = objData.DefaultView;
            GridViewEvents.DataBind();
        }
        protected void loadCurrentEvent()
        {
            BLL.Event objData = new BLL.Event();
            objData.LoadByPrimaryKey(CurrentEvent);
            txtEventName.Text = objData.EventName;
            txtEventPlace.Text = objData.EventPlace;
            txtEventTimeFrom.Text =objData.EventTimeFrom.ToString("HH:mm");
            txtEventTimeTo.Text = objData.EventTimeTo.ToString("HH:mm");
            txtEventTshirtcolor.Text = objData.EventTshirt;
            txtEventDate.Text = objData.EventDate.ToString("dd/MM/yyyy");
            drpEventType.SelectedValue = objData.EventTypeID.ToString();
            if (!objData.IsColumnNull(BLL.Event.ColumnNames.MainImagePath))
            {
                btnDeletePhoto.Visible = true;
                imgEvent.Src = objData.MainImagePath;
            }
            else
                btnDeletePhoto.Visible = false;
        }
        protected void GridViewEvents_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "EditEvent":
                    Response.Redirect("ManageEvents.aspx?Eid=" + e.CommandArgument);
                    break;

                case "DeleteEvent":
                    BLL.Event objData = new BLL.Event();
                    objData.LoadByPrimaryKey(int.Parse(e.CommandArgument.ToString()));
                    objData.MarkAsDeleted();
                    objData.Save();
                    loadEvent();
                    break;

                default:
                    break;
            }
        }

        protected void GridViewEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewEvents.PageIndex = e.NewPageIndex;
            loadEvent();
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageEvents.aspx?NewEvent=1");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageEvents.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BLL.Event objData = new BLL.Event();
            if (CurrentEvent > 0)
                objData.LoadByPrimaryKey(CurrentEvent);
            else
                objData.AddNew();

            objData.EventName = txtEventName.Text;
            objData.EventPlace = txtEventPlace.Text;
            objData.EventTimeFrom = Convert.ToDateTime(txtEventTimeFrom.Text);
            objData.EventTimeTo = Convert.ToDateTime(txtEventTimeTo.Text);
            objData.EventTshirt = txtEventTshirtcolor.Text;
            objData.EventTypeID = int.Parse(drpEventType.SelectedValue);
            if (FileUploadEventPhoto.HasFile)
            {
                string imagePath = "UploadedFiles/Events/" + FileUploadEventPhoto.FileName;
                FileUploadEventPhoto.SaveAs(MapPath("~/" + imagePath));
                objData.MainImagePath = imagePath;
            }
            objData.Save();
            //loadCurrentMember();
            Response.Redirect("ManageEvents.aspx?Eid=" + objData.EventID);
        }

        protected void btnDeletePhoto_Click(object sender, EventArgs e)
        {
            BLL.Event objData = new BLL.Event();
            objData.LoadByPrimaryKey(CurrentEvent);
            objData.SetColumnNull(BLL.Event.ColumnNames.MainImagePath);
            objData.Save();
            imgEvent.Src = "~/images/noImg.png";
            btnDeletePhoto.Visible = false;
        }
    }
}