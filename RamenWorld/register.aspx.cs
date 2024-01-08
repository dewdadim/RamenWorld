using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamenWorld
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            String firstName = TextBox1.Text;
            String lastName = TextBox2.Text;
            String username = TextBox3.Text;
            String password = TextBox4.Text;

            SqlCommand users = new SqlCommand("SELECT username FROM Customers WHERE username='" + username + "'", conn);

            SqlDataReader dr = users.ExecuteReader();
            dr.Read();
            
            if (dr.HasRows == true)
            {
                Response.Write(@"<script language='javascript'>alert('Username already in database!')</script>");
                TextBox3.Text = "";
            }
            else
            {
                dr.Close();
                SqlCommand addCustomer = new SqlCommand("INSERT INTO Customers(username, firstname, lastname, password) VALUES ('" + username + "', '" + firstName + "', '" + lastName + "', '" + password + "')", conn);
                addCustomer.ExecuteScalar();

                SqlCommand addCustomerCart = new SqlCommand("INSERT INTO Carts(username) VALUES ('" + username + "')", conn);
                addCustomerCart.ExecuteScalar();

                Response.Write(@"<script language='javascript'>alert('Successfully Registered!')</script>");
                
                Response.Redirect("login.aspx");
            }
        }
    }
}