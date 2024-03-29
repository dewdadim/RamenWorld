﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamenWorld.Customer
{
    public partial class WebForm2 : System.Web.UI.Page
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
            Response.Redirect("checkout.aspx");
        }
    }
}