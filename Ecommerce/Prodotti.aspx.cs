using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Prodotti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Connection = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
            SqlConnection sql= new SqlConnection(Connection);

            SqlCommand cmd = new SqlCommand("select * from prodotti", sql);
            SqlDataReader sqlDataReader;

            try
            {
                
                sql.Open();

                List<Product> ListaProdotti=new List<Product>();
                sqlDataReader=cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    Product Product = new Product();
                    Product.Copertina = sqlDataReader["copertina"].ToString();
                    Product.IdProdotto = Convert.ToInt32(sqlDataReader["idprodotto"]);
                    Product.NomeProdotto = sqlDataReader["nomeProdotto"].ToString();
                    Product.Peso = Convert.ToDouble(sqlDataReader["peso"]);
                    Product.DescrizioneBreve = sqlDataReader["descrizioneBreve"].ToString();
                    Product.PrezzoBase = Convert.ToDouble(sqlDataReader["prezzoBase"]);
                    ListaProdotti.Add(Product);
                }
                Repeater1.DataSource = ListaProdotti; 
                Repeater1.DataBind();

            }
            catch (Exception ex)
            {

            }finally {  sql.Close(); }
        }
    }


    public class Product
    {
        public int IdProdotto { get; set; }
        public double PrezzoBase { get; set; }
        public double Peso { get; set; }
        public string NomeProdotto { get; set; }
        public string DescrizioneBreve { get; set; }

        public string TipoplogiaAnimale { get; set; }
        public string PaeseOrigine { get; set; }
        public string Copertina { get; set; }
        public string Immagine1 { get; set; }
        public string Immagine2 { get; set; }
        public string Immagine3 { get; set; }
        public string Immagine4 { get; set; }
        public int PzzDisponibili { get; set; }
        public DateTime DataInserimento { get; set; }

        public bool InEvidenza { get; set; }
        public int ScontoPercentuale { get; set; }
    }

    
}