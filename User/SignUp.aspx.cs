using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariSite.User
{
    public partial class SignUp : System.Web.UI.Page
    {
        PropertyServices p = new PropertyServices();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            p.U_Name = txtEmailAddress.Text;
            p.U_Password = txtPassword.Text;
            p.AddNewUser(p);
            Response.Redirect("Login.aspx");
        }
    }
}