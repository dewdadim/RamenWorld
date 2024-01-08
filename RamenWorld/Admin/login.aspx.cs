using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamenWorld.Admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            String inputUsername = TextBox1.Text;
            String inputPassword = TextBox2.Text;


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            SqlCommand username = new SqlCommand("SELECT username, password FROM Admins WHERE username='" + inputUsername + "'", conn);

            SqlDataReader dr = username.ExecuteReader();
            IDataRecord dataRecord;
            dr.Read();

            dataRecord = (IDataRecord)dr;

            if (dr.HasRows)
            {
                if (dataRecord[1].ToString() == inputPassword)
                {
                    Session["username"] = TextBox1.Text;
                    String user = Session["username"].ToString();

                    dr.Close();

                    Response.Redirect("default.aspx");
                }
                else
                {
                    Response.Write(@"<script language='javascript'>alert('Password not match!')</script>");
                }
            }
            else
            {
                Response.Write(@"<script language='javascript'>alert('Account not found!')</script>");
            }
        }
    }
}