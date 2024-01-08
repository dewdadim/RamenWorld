using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamenWorld.Customer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected String getUserCart(String user)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            SqlCommand cartCmd = new SqlCommand("SELECT CartId FROM Carts WHERE username='" + user + "'", conn);
            String cart = cartCmd.ExecuteScalar().ToString();

            return cart;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();


            String user = Session["username"].ToString();
            String cart = getUserCart(user);
            SqlCommand checkCart = new SqlCommand("SELECT ProductName, Quantity FROM CartItems WHERE CartId = '"+cart+ "' and ProductName = 'Samyang x2 Hot Chicken Flavour Ramen'", conn);

            SqlDataReader dr = checkCart.ExecuteReader();
            IDataRecord dataRecord;
            dr.Read();
            dataRecord = (IDataRecord)dr;

            SqlCommand sql = new SqlCommand("INSERT INTO CartItems VALUES('" + cart + "', 'Samyang x2 Hot Chicken Flavour Ramen', '1', '5.50')", conn);

            if (dr.HasRows)
            {
                int newQuantity = int.Parse(dataRecord[1].ToString()) + 1;
                SqlCommand addQuantity = new SqlCommand("UPDATE CartItems SET Quantity = '" + newQuantity + "', Price = " + newQuantity + "*5.50 WHERE ProductName = 'Samyang x2 Hot Chicken Flavour Ramen'", conn);

                dr.Close();
                addQuantity.ExecuteScalar();
            }
            else
            {
                dr.Close();
                sql.ExecuteScalar();
            }

            Response.Write(@"<script language='javascript'>alert('Product added to cart!')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();


            String user = Session["username"].ToString();
            String cart = getUserCart(user);
            SqlCommand checkCart = new SqlCommand("SELECT ProductName, Quantity FROM CartItems WHERE CartId = '" + cart + "' and ProductName = 'Daebak Mamee Ghost Pepper Spicy Chicken'", conn);

            SqlDataReader dr = checkCart.ExecuteReader();
            IDataRecord dataRecord;
            dr.Read();
            dataRecord = (IDataRecord)dr;

            SqlCommand sql = new SqlCommand("INSERT INTO CartItems VALUES('" + cart + "', 'Daebak Mamee Ghost Pepper Spicy Chicken', '1', '9.10')", conn);

            if (dr.HasRows)
            {
                int newQuantity = int.Parse(dataRecord[1].ToString()) + 1;
                SqlCommand addQuantity = new SqlCommand("UPDATE CartItems SET Quantity = '" + newQuantity + "', Price = " + newQuantity + "*9.10 WHERE ProductName = 'Daebak Mamee Ghost Pepper Spicy Chicken'", conn);

                dr.Close();
                addQuantity.ExecuteScalar();
            }
            else
            {
                dr.Close();
                sql.ExecuteScalar();
            }

            Response.Write(@"<script language='javascript'>alert('Product added to cart!')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();


            String user = Session["username"].ToString();
            String cart = getUserCart(user);
            SqlCommand checkCart = new SqlCommand("SELECT ProductName, Quantity FROM CartItems WHERE CartId = '" + cart + "' and ProductName = 'Nongshim - Shin Ramyun Red Super Spicy'", conn);

            SqlDataReader dr = checkCart.ExecuteReader();
            IDataRecord dataRecord;
            dr.Read();
            dataRecord = (IDataRecord)dr;

            SqlCommand sql = new SqlCommand("INSERT INTO CartItems VALUES('" + cart + "', 'Nongshim - Shin Ramyun Red Super Spicy', '1', '8.00')", conn);

            if (dr.HasRows)
            {
                int newQuantity = int.Parse(dataRecord[1].ToString()) + 1;
                SqlCommand addQuantity = new SqlCommand("UPDATE CartItems SET Quantity = '" + newQuantity + "', Price = " + newQuantity + "*8.00 WHERE ProductName = 'Nongshim - Shin Ramyun Red Super Spicy'", conn);

                dr.Close();
                addQuantity.ExecuteScalar();
            }
            else
            {
                dr.Close();
                sql.ExecuteScalar();
            }

            Response.Write(@"<script language='javascript'>alert('Product added to cart!')</script>");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();


            String user = Session["username"].ToString();
            String cart = getUserCart(user);
            SqlCommand checkCart = new SqlCommand("SELECT ProductName, Quantity FROM CartItems WHERE CartId = '" + cart + "' and ProductName = 'NONGSHIM CHAPAGETTI 123G'", conn);

            SqlDataReader dr = checkCart.ExecuteReader();
            IDataRecord dataRecord;
            dr.Read();
            dataRecord = (IDataRecord)dr;

            SqlCommand sql = new SqlCommand("INSERT INTO CartItems VALUES('" + cart + "', 'NONGSHIM CHAPAGETTI 123G', '1', '7.90')", conn);

            if (dr.HasRows)
            {
                int newQuantity = int.Parse(dataRecord[1].ToString()) + 1;
                SqlCommand addQuantity = new SqlCommand("UPDATE CartItems SET Quantity = '" + newQuantity + "', Price = " + newQuantity + "*7.90 WHERE ProductName = 'NONGSHIM CHAPAGETTI 123G'", conn);

                dr.Close();
                addQuantity.ExecuteScalar();
            }
            else
            {
                dr.Close();
                sql.ExecuteScalar();
            }

            Response.Write(@"<script language='javascript'>alert('Product added to cart!')</script>");
        }
    }
}