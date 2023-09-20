using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
            string _user = userNameLogin.Text;
            string _pw = passwordLogin.Text;

            string Connection = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
            SqlConnection conn = new SqlConnection(Connection);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM anagrafica where username=@user", conn);
                cmd.Parameters.AddWithValue("user", _user);
                SqlDataReader reader = cmd.ExecuteReader();
                string userDB = "";
                string pwDB = "";
                string isAdmin = "";
                while (reader.Read())
                {
                    userDB = reader["username"].ToString();
                    pwDB = reader["password"].ToString();
                    isAdmin = reader["isAdmin"].ToString();
                    Session["isAdmin"] = isAdmin;
                }

                if (_user == userDB && _pw == pwDB)
                {
                    FormsAuthentication.SetAuthCookie(_user, true);
                }
                else
                {
                    ErrorLogin.Visible = true;
                }
            }
            catch
                (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                conn.Close();

                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
        }
    }
}