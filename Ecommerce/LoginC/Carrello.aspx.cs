﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Carrello : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["sessionCart"] == null)
                {
                    //   Response.Write("NO sessione");
                    List<Cart> cartListUser = new List<Cart>();
                    Session["sessionCart"] = cartListUser;
                }

                List<Cart> cartList = Session["sessionCart"] as List<Cart>;

                if (cartList.Count > 0)
                {
                    GridView1.DataSource = cartList;
                    GridView1.DataBind();
                    //crea il totale del carrello
                    double tot = 0;
                    foreach (Cart c in cartList)
                    {
                        tot += c.Product.PrezzoBase * c.quantity;
                    }
                    totalPrice.InnerHtml = $"Totale carrello:{tot.ToString("C2")} ";
                }
                else
                {
                    isEmpty.InnerHtml = "carrello vuoto";
                    DeleteAll.Visible = false;
                    Button1.Visible = false;
                }
            }
        }

        protected void DeleteThis_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow gRow = btn.NamingContainer as GridViewRow;
            int i = gRow.RowIndex;
            List<Cart> cartList = Session["sessionCart"] as List<Cart>;
            cartList.RemoveAt(i);
            Session["cartList"] = cartList;
            Response.Redirect("Carrello");
        }

        protected void DeleteAll_Click(object sender, EventArgs e)
        {
            List<Cart> cartList = Session["sessionCart"] as List<Cart>;
            cartList.Clear();
            Session["cartList"] = cartList;
            Response.Redirect("Carrello");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            checkout.InnerHtml = $"<h1>Grazie per il tuo acquisto</h1>" +
                $"<h2>Stai per essere reindirizzato alla pagina per il pagamento</h2>" +
                $"<div class='spinner-grow text-danger' role='status'><span class='visually-hidden'>Loading...</span></div>";
            List<Cart> cartList = Session["sessionCart"] as List<Cart>;
            cartList.Clear();
            Session["cartList"] = cartList;


            Response.AppendHeader("Refresh", "5;url=Carrello.aspx");

        }
    }
}