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
            else
            {
                List<Cart> cartListUserNow = new List<Cart>();
                cartListUserNow = (List<Cart>)Session["sessionCart"];
                if (cartListUserNow.Count > 0)
                {
                    Notifica.Attributes["class"] = "notifica bg-danger";
                    Notifica.InnerText = cartListUserNow.Count.ToString();
                }
            }


            Button7.Visible = false;
            MostraProdottiBtn.Visible = false;
                drop.Visible = false;
                
            if (Session["isAdmin"] != null )
            {
                
                drop.Visible = true;

                if (Session["isAdmin"].ToString() == "True")
                {
                    Button7.Visible = true;
                    MostraProdottiBtn.Visible = true;
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
           

            if (Request.Cookies[".ASPXAUTH"] != null && Request.Cookies["Id_Cookie"] != null)
            {
                HttpCookie cookie = new HttpCookie(".ASPXAUTH");
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);

                HttpCookie cookie2 = new HttpCookie("Id_Cookie");
                cookie2.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie2);

                Session.Clear();
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Redirect("~/Login.aspx");
        }
           
    }

        protected void ModificaProfiloBtn_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Id_Cookie"] != null)
            {
                string id = Request.Cookies["Id_Cookie"]["id"];
                Response.Redirect($"~/LoginC/ModificaProfilo?IdProfilo={id}");
            }
        }
    }
}