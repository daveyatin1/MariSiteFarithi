using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MariSite
{
    public class DataServices
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        SqlDataAdapter da;
        SqlCommand cmd;
        DataTable dt;
        public DataServices()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public void AddNewUser(PropertyServices p)
        {
            cmd = new SqlCommand("AddNewUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue(@"U_Name", p.U_Name);
            cmd.Parameters.AddWithValue(@"U_Password", p.U_Password);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public bool IsUser(string U_Name, string U_Password)
        {
            cmd = new SqlCommand("IsUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@U_Name", U_Name);
            cmd.Parameters.AddWithValue("@U_Password", U_Password);
            con.Open();
            bool IsUser = Convert.ToBoolean(cmd.ExecuteScalar());
            con.Close();
            return IsUser;
        }
        public DataTable GetUserProfile(string U_Name)
        {
            da = new SqlDataAdapter("GetUserProfile", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@U_Name", U_Name);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void AddNewPost(PropertyServices p)
        {
            cmd = new SqlCommand("AddNewPost", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue(@"P_Title", p.P_Title);
            cmd.Parameters.AddWithValue(@"P_Data", p.P_Data);
            cmd.Parameters.AddWithValue(@"P_Date", p.P_Date);
            cmd.Parameters.AddWithValue(@"P_ImageName", p.P_ImageName);
            cmd.Parameters.AddWithValue(@"P_Image", p.P_Image);
            cmd.Parameters.AddWithValue(@"P_Comments", p.P_Comments);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public DataTable GetAllPosts()
        {
            da = new SqlDataAdapter("GetAllPosts", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable GetSelectedPost(int P_Id)
        {
            da = new SqlDataAdapter("GetSelectedPost", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue(@"P_Id", P_Id);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void AddNewComment(PropertyServices p)
        {
            cmd = new SqlCommand("AddNewComment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue(@"P_id", p.P_id);
            cmd.Parameters.AddWithValue(@"U_Id", p.U_Id);
            cmd.Parameters.AddWithValue(@"C_Data", p.C_Data);
            cmd.Parameters.AddWithValue(@"C_Date", p.C_Date);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public DataTable GetComments(int P_Id)
        {
            da = new SqlDataAdapter("GetComments", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue(@"P_Id", P_Id);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void AddReply(PropertyServices p)
        {
            cmd = new SqlCommand("AddReply", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue(@"U_Id", p.U_Id);
            cmd.Parameters.AddWithValue(@"C_id", p.C_id);
            cmd.Parameters.AddWithValue(@"CR_Data", p.CR_Data);
            cmd.Parameters.AddWithValue(@"CR_Date", p.CR_Date);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public DataTable GetAllReply(int C_Id)
        {
            da = new SqlDataAdapter("GetAllReply", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue(@"C_Id", C_Id);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}