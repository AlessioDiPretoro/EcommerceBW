using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
            if (!IsPostBack)
            {
                //verifica se lo user è ADMIN

                if (Session["isAdmin"] == null || Session["isAdmin"].ToString() != "True")
                {
                    Response.Redirect(FormsAuthentication.DefaultUrl);
                }

                //crea le categorie
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    conn.Open();
                    List<string> listCat = new List<string>();
                    SqlCommand cmd2 = new SqlCommand(@"SELECT descrizioneCategoria FROM categorie", conn);
                    SqlDataReader reader = cmd2.ExecuteReader();

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

            //carica dati prodotto
            int _id = Convert.ToInt16(Request.QueryString["idProdotto"]);
            string Connection = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
            SqlConnection sql = new SqlConnection(Connection);

            SqlCommand cmd = new SqlCommand("select * from prodotti WHERE idprodotto=@id", sql);
            cmd.Parameters.AddWithValue("id", _id);
            SqlDataReader sqlDataReader;

            try
            {
                sql.Open();

                sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    NomeProdotto.Text = sqlDataReader["nomeProdotto"].ToString();
                    DescrizioneBreve.Text = sqlDataReader["descrizioneBreve"].ToString();
                    DescrizioneLunga.Text = sqlDataReader["descrizioneLunga"].ToString();
                    TipologiaAnimale.Text = sqlDataReader["tipologiaAnimale"].ToString();
                    DropDownCategorie.SelectedIndex = Convert.ToInt16(sqlDataReader["idcategoria"]);//.ToString();
                    PaeseOrigine.Text = sqlDataReader["paeseOrigine"].ToString();
                    Disponiblita.Text = sqlDataReader["disponibile"].ToString();
                    Calendario.Text = sqlDataReader["dataInserimento"].ToString();
                    Peso.Text = sqlDataReader["peso"].ToString();
                    Prezzo.Text = sqlDataReader["prezzoBase"].ToString();
                    Sconto.Text = sqlDataReader["sconto"].ToString();
                    Evidenza.Checked = Convert.ToBoolean(sqlDataReader["inEvidenza"].ToString());
                    ImgCopertina.Text = sqlDataReader["copertina"].ToString();
                    Img1.Text = sqlDataReader["immagine1"].ToString();
                    Img2.Text = sqlDataReader["immagine2"].ToString();
                    Img3.Text = sqlDataReader["immagine3"].ToString();
                    Img4.Text = sqlDataReader["immagine4"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally { sql.Close(); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //modifica prodotto
            string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);
            int _id = Convert.ToInt16(Request.QueryString["idProdotto"]);
            try
            {
                conn.Open();
                // Response.Write("ok connesso");

                SqlCommand cmdEdit = new SqlCommand();

                cmdEdit.Connection = conn;
                cmdEdit.CommandText = "UPDATE prodotti SET prezzoBase=@prezzoBase, peso=@peso, nomeProdotto=@nomeProdotto, tipologiaAnimale=@tipologiaAnimale, paeseOrigine=@paeseOrigine, copertina=@copertina, immagine1=@immagine1, immagine2=@immagine2, immagine3=@immagine3, immagine4=@immagine4, disponibile=@disponibile, dataInserimento=@dataInserimento, inEvidenza=@inEvidenza, sconto=@sconto, idcategoria=@idcategoria, descrizioneBreve=@descrizioneBreve, descrizioneLunga=@descrizioneLunga where idprodotto=@idprodotto";
                cmdEdit.Parameters.AddWithValue("prezzoBase", Convert.ToDouble(Prezzo.Text));
                cmdEdit.Parameters.AddWithValue("peso", Peso.Text);
                cmdEdit.Parameters.AddWithValue("nomeProdotto", NomeProdotto.Text);
                cmdEdit.Parameters.AddWithValue("tipologiaAnimale", TipologiaAnimale.Text);
                cmdEdit.Parameters.AddWithValue("paeseOrigine", PaeseOrigine.Text);
                cmdEdit.Parameters.AddWithValue("copertina", ImgCopertina.Text);
                cmdEdit.Parameters.AddWithValue("immagine1", Img1.Text);
                cmdEdit.Parameters.AddWithValue("immagine2", Img2.Text);
                cmdEdit.Parameters.AddWithValue("immagine3", Img3.Text);
                cmdEdit.Parameters.AddWithValue("immagine4", Img4.Text);
                cmdEdit.Parameters.AddWithValue("disponibile", Disponiblita.Text);
                cmdEdit.Parameters.AddWithValue("dataInserimento", Calendario.Text);
                cmdEdit.Parameters.AddWithValue("inEvidenza", Evidenza.Checked);
                cmdEdit.Parameters.AddWithValue("sconto", Sconto.Text);
                cmdEdit.Parameters.AddWithValue("idcategoria", DropDownCategorie.SelectedItem.Value);
                cmdEdit.Parameters.AddWithValue("descrizioneBreve", DescrizioneBreve.Text);
                cmdEdit.Parameters.AddWithValue("descrizioneLunga", DescrizioneLunga.Text);
                cmdEdit.Parameters.AddWithValue("idprodotto", _id);

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            //cancella prodotto
            int _id = Convert.ToInt16(Request.QueryString["idProdotto"]);
            string Connection = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
            SqlConnection sql = new SqlConnection(Connection);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = sql;
            cmd.CommandText = "delete from prodotti where idprodotto=@id";
            cmd.Parameters.AddWithValue("id", _id);
            sql.Open();
            cmd.ExecuteNonQuery();

            sql.Close();

            Response.Redirect("~/Admin/GrigliaProdotti.aspx");
        }
    }
}