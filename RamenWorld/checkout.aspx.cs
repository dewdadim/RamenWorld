using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamenWorld
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }

            else
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                SqlCommand subTotalPrice = new SqlCommand("SELECT SUM(ALL Price) AS [Total - ALL] FROM CartItems WHERE cartid='" + Session["cart"] + "'", conn);
                SqlDataReader dr = subTotalPrice.ExecuteReader();

                dr.Read();

                if (dr["Total - ALL"].ToString() != "")
                {
                    dr.Close();
                    decimal subTotal = Decimal.Parse(subTotalPrice.ExecuteScalar().ToString());

                    if (subTotal == 0)
                    {
                        Label1.Text = "RM0";
                        Label2.Text = "RM0";
                        Label3.Text = "+ RM0";
                    }
                    else
                    {
                        Label1.Text = "RM" + subTotal.ToString();

                        decimal totalPrice = subTotal + 3;

                        Label2.Text = "RM" + totalPrice.ToString();
                        Label3.Text = "+ RM3";
                    }
                }
                else
                {
                    Label1.Text = "RM0";
                    Label2.Text = "RM0";
                    Label3.Text = "+ RM0";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            SqlCommand subTotalPrice = new SqlCommand("SELECT SUM(ALL Price) AS [Total - ALL] FROM CartItems WHERE cartid='" + Session["cart"] + "'", conn);
            SqlDataReader dr = subTotalPrice.ExecuteReader();

            dr.Read();

            if (dr["Total - ALL"].ToString() != "")
            {
                dr.Close();
                decimal subTotal = Decimal.Parse(subTotalPrice.ExecuteScalar().ToString());
                decimal totalPrice = subTotal + 3;

                String name = TextBox1.Text;
                String address = TextBox2.Text;
                String city = TextBox3.Text;
                String state = TextBox4.Text;
                String phone = TextBox5.Text;
                String email = TextBox6.Text;
                String date = DateTime.Now.ToString("yyyy/MM/dd");

                SqlCommand addOrder = new SqlCommand("INSERT INTO Orders(OrderReceiverName, OrderAddress, OrderCity, OrderState, OrderPhone, OrderEmail, OrderDate, TotalAmount, username) VALUES ('" + name + "', '" + address + "', '" + city + "', '" + state + "', '" + phone + "', '" + email + "', '" + date + "', '" + totalPrice + "', '" + Session["username"] + "' )", conn);
                addOrder.ExecuteScalar();

                SqlCommand deleteCartItems = new SqlCommand("DELETE FROM CartItems WHERE CartId='" + Session["cart"] +"'", conn);
                deleteCartItems.ExecuteScalar();

                Response.Redirect("default.aspx");
            }

            
        }
    }
}