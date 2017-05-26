using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariSite.User
{
    public partial class Login : System.Web.UI.Page
    {
        PropertyServices p = new PropertyServices();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (p.IsUser(txtUname.Text, txtPassword.Text))
            {
                Session["U_Name"] = txtUname.Text;
                Session["UserProfile"] = p.GetUserProfile(txtUname.Text);
                Session["U_Id"] = ((DataTable)Session["UserProfile"]).Rows[0]["U_Id"].ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Enter valid Details');</script>");
            }
        }
    }
}