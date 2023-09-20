using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.Admin
{
    public partial class ModificaProdotto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //verifica se lo user è ADMIN

            if (Session["isAdmin"] == null || Session["isAdmin"].ToString() != "True")
            {
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }
    }
}