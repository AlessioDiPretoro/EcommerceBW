using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sessionCart"] == null)
            {
                //  Response.Write("NO sessione");
                List<Cart> cartListUser = new List<Cart>();
                Session["sessionCart"] = cartListUser;
            }

            Button7.Visible = false;
                drop.Visible = false;
                
            if (Session["isAdmin"] != null )
            {
                
                drop.Visible = true;

                if (Session["isAdmin"].ToString() == "True")
                {
                    Button7.Visible = true;
                }

            }


            if (Request.Cookies[".ASPXAUTH"]!=null)
            {
                Button9.Text = "LOGOUT"; 
                Button3.Text = "LOGOUT";
                drop.Visible = true;

            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           DeleteCookies();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            DeleteCookies();
        }


        public void DeleteCookies()
        {
            if (Request.Cookies[".ASPXAUTH"] != null)
            {
                HttpCookie cookie = new HttpCookie(".ASPXAUTH");
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);
                Session.Clear();
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Redirect("~/Login.aspx");
        }
           
    }
}
}