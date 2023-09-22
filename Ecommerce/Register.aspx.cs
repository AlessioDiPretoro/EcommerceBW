using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

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
                string userName = username.Text;
                string password = passwordConf.Text;
                bool paymentMode = false;
                string idUtente = "";
                //fare INSERT al db
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);
                try
                {
                    conn.Open();
                    // Response.Write("ok connesso");

                    SqlCommand cmdInsert = new SqlCommand();

                    cmdInsert.Connection = conn;
                    cmdInsert.CommandText = "Insert Into anagrafica VALUES (@cognome, @nome, @indirizzo, @citta, @cap, @isAdmin, @metodoPagamento, @username, @password)";
                    cmdInsert.Parameters.AddWithValue("cognome", surname);
                    cmdInsert.Parameters.AddWithValue("nome", name);
                    cmdInsert.Parameters.AddWithValue("indirizzo", address);
                    cmdInsert.Parameters.AddWithValue("citta", city);
                    cmdInsert.Parameters.AddWithValue("cap", postalCode);
                    cmdInsert.Parameters.AddWithValue("isAdmin", "false");
                    cmdInsert.Parameters.AddWithValue("metodoPagamento", paymentMode);
                    cmdInsert.Parameters.AddWithValue("username", userName);
                    cmdInsert.Parameters.AddWithValue("password", password);

                    int affectedRows = cmdInsert.ExecuteNonQuery();
                    if (affectedRows != 0)
                    {
                        conn.Close();

                        conn.Open();
                        SqlCommand cmd = new SqlCommand("SELECT * FROM anagrafica where username=@user", conn);
                        cmd.Parameters.AddWithValue("user", userName);
                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            idUtente = reader["idanagrafica"].ToString();
                            string isAdmin = "false";
                            Session["isAdmin"] = isAdmin;
                        }

                        FormsAuthentication.SetAuthCookie(userName, true);
                        HttpCookie cookie = new HttpCookie("Id_Cookie");
                        cookie.Values["id"] = idUtente;
                        Response.Cookies.Add(cookie);
                        conn.Close();
                        Response.Redirect(FormsAuthentication.DefaultUrl);
                    }
                }
                catch (Exception ex) { Response.Write(ex.Message); }
                finally
                {
                    if (conn.State == ConnectionState.Open)
                    {
                        conn.Close();
                    }
                }
            }
        }
    }
}