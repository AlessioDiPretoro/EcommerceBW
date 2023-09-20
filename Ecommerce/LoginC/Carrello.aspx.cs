using System;
using System.Collections.Generic;
using System.Linq;
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
                }
            }
        }
    }
}