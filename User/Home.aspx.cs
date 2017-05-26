using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariSite.User
{
    public partial class Home : System.Web.UI.Page
    {
        PropertyServices p = new PropertyServices();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["U_Id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                FillPosts();
            }
        }

        private void FillPosts()
        {
            DataList1.DataSource = p.GetAllPosts();
            DataList1.DataBind();
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("Comments.aspx?P_Id=" + e.CommandArgument);
        }
    }
}