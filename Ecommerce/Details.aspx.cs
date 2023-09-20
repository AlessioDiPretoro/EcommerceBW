using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddCart_Click(object sender, EventArgs e)
        {
            Product chosenP = new Product();
            int id = Convert.ToInt16(Request.QueryString["idDetails"]);
            //foreach (Product p in Product.productList)
            //{
            //    if (p.Id == id)
            //    {
            //        chosenP = p;
            //        break;
            //    }
            //}
            //int qty = int.Parse(DropDownList1.SelectedItem.Value);
            //List<CartItem> cartList = Session["sessionCart"] as List<CartItem>;
            //cartList.Add(new CartItem(qty, chosenP));

            //Session["sessionCart"] = cartList;
            //Response.Redirect("Default.aspx");
        }
    }
}