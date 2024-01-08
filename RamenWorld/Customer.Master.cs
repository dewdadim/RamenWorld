using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamenWorld.Customer
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            String user = Session["username"].ToString();
            SqlCommand userFirstName = new SqlCommand("SELECT FirstName FROM Customers WHERE username='"+user+"'", conn);
            SqlCommand userLastName = new SqlCommand("SELECT LastName FROM Customers WHERE username='" + user + "'", conn);


            Label1.Text = "Hi, " + userFirstName.ExecuteScalar().ToString() + " " + userLastName.ExecuteScalar().ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}