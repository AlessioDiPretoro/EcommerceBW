using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            if (password.Text == passwordConf.Text)
            {
                string name = nome.Text;
                string surname = cognome.Text;
                string address = indirizzo.Text;
                string city = citta.Text;
                string postalCode = cap.Text;
                string password = passwordConf.Text;
                bool paymentMode = CheckBox1.Checked;
                //fare INSERT al db
            }
        }
    }
}