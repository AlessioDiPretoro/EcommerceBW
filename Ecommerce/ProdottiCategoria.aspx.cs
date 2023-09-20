using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class ProdottiCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);
                

                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where idcategoria=@id", conn);
                    cmd.Parameters.AddWithValue("id", Request.QueryString["idCategoria"]);


                    SqlDataReader reader = cmd.ExecuteReader();

                    List<Product> listProducts = new List<Product>();

                    while (reader.Read())
                    {
                        Product Product = new Product();
                        Product.Copertina = reader["copertina"].ToString();
                        Product.IdProdotto = Convert.ToInt32(reader["idprodotto"]);
                        Product.NomeProdotto = reader["nomeProdotto"].ToString();
                        Product.Peso = Convert.ToDouble(reader["peso"]);
                        Product.DescrizioneBreve = reader["descrizioneBreve"].ToString();
                        Product.PrezzoBase = Convert.ToDouble(reader["prezzoBase"]);
                        listProducts.Add(Product);

                    }
                    Repeater1.DataSource = listProducts;
                Repeater1.DataBind();



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
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Connection = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
            SqlConnection sql = new SqlConnection(Connection);

            SqlCommand cmd = new SqlCommand("select * from prodotti  where idcategoria=@id order by nomeProdotto", sql);
            cmd.Parameters.AddWithValue("id", Request.QueryString["idCategoria"]);

            SqlDataReader sqlDataReader;

            try
            {

                sql.Open();

                List<Product> ListaProdotti = new List<Product>();
                sqlDataReader = cmd.ExecuteReader();

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

            }
            finally { sql.Close(); }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Connection = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
            SqlConnection sql = new SqlConnection(Connection);

            SqlCommand cmd = new SqlCommand("select * from prodotti  where idcategoria=@id order by prezzoBase", sql);
            cmd.Parameters.AddWithValue("id", Request.QueryString["idCategoria"]);
            SqlDataReader sqlDataReader;

            try
            {

                sql.Open();

                List<Product> ListaProdotti = new List<Product>();
                sqlDataReader = cmd.ExecuteReader();

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

            }
            finally { sql.Close(); }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Connection = ConfigurationManager.ConnectionStrings["DB_ConnString"].ConnectionString.ToString();
            SqlConnection sql = new SqlConnection(Connection);

            SqlCommand cmd = new SqlCommand("select * from prodotti  where idcategoria=@id order by prezzoBase desc", sql);
            cmd.Parameters.AddWithValue("id", Request.QueryString["idCategoria"]);

            SqlDataReader sqlDataReader;

            try
            {

                sql.Open();

                List<Product> ListaProdotti = new List<Product>();
                sqlDataReader = cmd.ExecuteReader();

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

            }
            finally { sql.Close(); }
        }

    }
}