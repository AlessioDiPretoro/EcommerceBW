using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorLogin.Visible = false;
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string user = userNameLogin.Text;
            string pw = passwordLogin.Text;
            string userDB = "";
            string pwDB = "";

            if (user == userDB && pw == pwDB)
            {
                //fare chiamata al db e verificare che sia esistente
                FormsAuthentication.SetAuthCookie(user, true);
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            else
            {
                ErrorLogin.Visible = true;
            }
        }
    }
}