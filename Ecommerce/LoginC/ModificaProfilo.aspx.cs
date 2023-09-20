using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
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
        }
    }
}