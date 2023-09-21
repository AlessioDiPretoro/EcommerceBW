using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.LoginC
{
    public partial class ModificaProfilo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                SqlCommand cmd = new SqlCommand("select * from anagrafica where idanagrafica=@id", conn);
                cmd.Parameters.AddWithValue("id", Request.QueryString["IdProfilo"]);
                SqlDataReader sqlDataReader;
                try
                {
                    conn.Open();
                    sqlDataReader = cmd.ExecuteReader();

                    while (sqlDataReader.Read())
                    {
                        string NomeUtente = sqlDataReader["nome"].ToString();
                        string CognomeUtente = sqlDataReader["cognome"].ToString();
                        string IndirizzoUtente = sqlDataReader["indirizzo"].ToString();
                        string CittaUtente = sqlDataReader["citta"].ToString();
                        string CapUtente = sqlDataReader["cap"].ToString();
                        string UsernameUtente = sqlDataReader["username"].ToString();
                        string PswUtente = sqlDataReader["password"].ToString();

                        Nome.Text = NomeUtente;
                        Cognome.Text = CognomeUtente;
                        Indirizzo.Text = IndirizzoUtente;
                        Citta.Text = CittaUtente;
                        Cap.Text = CapUtente;
                        Username.Text = UsernameUtente;
                        Password.Text = PswUtente;
                    }
                }
                catch (Exception ex) { }
                finally { conn.Close(); }
            }
        }

        protected void EditProf_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);
            try
            {
                conn.Open();
                // Response.Write("ok connesso");

                SqlCommand cmdEdit = new SqlCommand();

                cmdEdit.Connection = conn;
                cmdEdit.CommandText = "UPDATE anagrafica SET cognome=@cognome, nome=@nome, indirizzo=@indirizzo, citta=@citta, cap=@cap, username=@username, password=@password where idanagrafica=@idanagrafica";
                cmdEdit.Parameters.AddWithValue("cognome", Cognome.Text);
                cmdEdit.Parameters.AddWithValue("nome", Nome.Text);
                cmdEdit.Parameters.AddWithValue("indirizzo", Indirizzo.Text);
                cmdEdit.Parameters.AddWithValue("citta", Citta.Text);
                cmdEdit.Parameters.AddWithValue("cap", Cap.Text);
                cmdEdit.Parameters.AddWithValue("username", Username.Text);
                cmdEdit.Parameters.AddWithValue("password", Password.Text);
                int _id = Convert.ToInt16(Request.QueryString["IdProfilo"]);
                cmdEdit.Parameters.AddWithValue("idanagrafica", _id);

                cmdEdit.ExecuteNonQuery();
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