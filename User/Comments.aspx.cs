using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariSite.User
{
    public partial class Comments : System.Web.UI.Page
    {
        string Title, Data, Date, ImageName, Commentss;
        byte[] Image;
        PropertyServices p = new PropertyServices();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["U_Id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                string Query_String_P_Id = Request.QueryString["P_Id"];
                int P_Id = Convert.ToInt16(Query_String_P_Id);
                DataTable dt = new DataTable();
                dt = p.GetSelectedPost(P_Id);
                foreach (DataRow row in dt.Rows)
                {
                    Title = row["P_Title"].ToString();
                    Data = row["P_Data"].ToString();
                    Date = row["P_Date"].ToString();
                    ImageName = row["P_ImageName"].ToString();
                    Image = (byte[])row["P_Image"];
                    Commentss = row["P_Comments"].ToString();
                }
                lblTitle.Text = Title;
                imgPost.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])Image);
                lblDate.Text = Date;
                lblData.Text = Data;
                if (!IsPostBack)
                {
                    FillComments();
                }

            }
        }

        private void FillComments()
        {
            string Query_String_P_Id = Request.QueryString["P_Id"];
            int P_Id = Convert.ToInt16(Query_String_P_Id);
            DataList1.DataSource = p.GetComments(P_Id);
            DataList1.DataBind();
        }
        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void btnPostComment_Click(object sender, EventArgs e)
        {
            string Query_String_P_Id = Request.QueryString["P_Id"];
            int P_Id = Convert.ToInt16(Query_String_P_Id);
            p.P_id = P_Id;
            p.U_Id = Convert.ToInt16(Session["U_Id"]);
            p.C_Data = txtCommentData.Text;
            p.C_Date = Convert.ToString(DateTime.Now);
            p.AddNewComment(p);
            FillComments();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Reply")
            {
                Panel pnl = (Panel)e.Item.FindControl("Panel1");
                pnl.Visible = true;
            }
            if (e.CommandName == "LeaveReply")
            {
                p.U_Id = Convert.ToInt16(Session["U_Id"]);
                p.C_id = Convert.ToInt16(e.CommandArgument);
                p.CR_Data = ((TextBox)e.Item.FindControl("txtReplyData")).Text;
                p.CR_Date = Convert.ToString(DateTime.Now);
                p.AddReply(p);
                Panel pnl = (Panel)e.Item.FindControl("Panel1");
                pnl.Visible = false;
            }

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Button btnReply = (Button)e.Item.FindControl("btnComment");
            DataList ddlReply = (DataList)e.Item.FindControl("DataList2");
            ddlReply.DataSource = p.GetAllReply(Convert.ToInt16(btnReply.CommandArgument));
            ddlReply.DataBind();
        }
    }
}