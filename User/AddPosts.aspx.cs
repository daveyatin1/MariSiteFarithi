using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MariSite.User
{
    public partial class AddPosts : System.Web.UI.Page
    {
        PropertyServices p = new PropertyServices();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSavePost_Click(object sender, EventArgs e)
        {
            p.P_Title = txtPTitle.Text;
            p.P_Data = txtPData.Text;
            p.P_Date = Convert.ToString(DateTime.Now);
            p.P_ImageName = fuPostImage.PostedFile.FileName;
            p.P_Image = fuPostImage.FileBytes;
            p.P_Comments = Convert.ToString("0");
            p.AddNewPost(p);
        }
    }
}