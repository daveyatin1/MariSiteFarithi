using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MariSite
{
    public class PropertyServices : DataServices
    {
        public PropertyServices()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        //User Login
        public int U_Id { get; set; }
        public string U_Name { get; set; }
        public string U_Password { get; set; }
        //Posts
        public int P_id { get; set; }
        public string P_Title { get; set; }
        public string P_Data { get; set; }
        public string P_Date { get; set; }
        public string P_ImageName { get; set; }
        public byte[] P_Image { get; set; }
        public string P_Comments { get; set; }
        //Comments
        public int C_id { get; set; }
        public string C_Data { get; set; }
        public string C_Date { get; set; }
        //Comments Reply
        public int CR_id { get; set; }
        public string CR_Data { get; set; }
        public string CR_Date { get; set; }
    }
}