using Antlr.Runtime.Tree;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.Admin
{
    public partial class NuovoProdotto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //verifica se lo user è ADMIN
            if (!IsPostBack)
            {
                if (Session["isAdmin"] == null || Session["isAdmin"].ToString() != "True")
                {
                    Response.Redirect(FormsAuthentication.DefaultUrl);
                }

                //recupera da DB le categorie
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    conn.Open();
                    List<string> listCat = new List<string>();
                    SqlCommand cmd = new SqlCommand(@"SELECT descrizioneCategoria FROM categorie", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            listCat.Add(reader["descrizioneCategoria"].ToString());
                        }
                    }
                    int i = 0;
                    foreach (string Cat in listCat)
                    {
                        ListItem l = new ListItem(Cat, (i + 1).ToString());
                        DropDownCategorie.Items.Add(l);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);
            try
            {
                conn.Open();
                // Response.Write("ok connesso");

                SqlCommand cmdInsert = new SqlCommand();

                cmdInsert.Connection = conn;
                cmdInsert.CommandText = "Insert Into prodotti VALUES (@prezzoBase, @peso, @nomeProdotto, @tipologiaAnimale, @paeseOrigine, @copertina, @immagine1, @immagine2, @immagine3, @immagine4, @disponibile, @dataInserimento, @inEvidenza, @sconto, @idcategoria, @descrizioneBreve, @descrizioneLunga)";
                cmdInsert.Parameters.AddWithValue("prezzoBase", Prezzo.Text);
                cmdInsert.Parameters.AddWithValue("peso", Peso.Text);
                cmdInsert.Parameters.AddWithValue("nomeProdotto", NomeProdotto.Text);
                cmdInsert.Parameters.AddWithValue("tipologiaAnimale", TipologiaAnimale.Text);
                cmdInsert.Parameters.AddWithValue("paeseOrigine", PaeseOrigine.Text);
                cmdInsert.Parameters.AddWithValue("copertina", ImgCopertina.Text);
                cmdInsert.Parameters.AddWithValue("immagine1", Img1.Text);
                cmdInsert.Parameters.AddWithValue("immagine2", Img2.Text);
                cmdInsert.Parameters.AddWithValue("immagine3", Img3.Text);
                cmdInsert.Parameters.AddWithValue("immagine4", Img4.Text);
                cmdInsert.Parameters.AddWithValue("disponibile", Disponiblita.Text);
                cmdInsert.Parameters.AddWithValue("dataInserimento", Calendario.Text);
                cmdInsert.Parameters.AddWithValue("inEvidenza", Evidenza.Checked);
                cmdInsert.Parameters.AddWithValue("sconto", Sconto.Text);
                cmdInsert.Parameters.AddWithValue("idcategoria", DropDownCategorie.SelectedItem.Value);
                cmdInsert.Parameters.AddWithValue("descrizioneBreve", DescrizioneBreve.Text);
                cmdInsert.Parameters.AddWithValue("descrizioneLunga", DescrizioneLunga.Text);

                int affectedRows = cmdInsert.ExecuteNonQuery();
                if (affectedRows != 0)
                {
                    Response.Write("ok inserimento");
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