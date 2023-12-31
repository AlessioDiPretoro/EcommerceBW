﻿using System;
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
    public partial class Promo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
            SqlConnection conn = new SqlConnection(connectionString);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where inEvidenza=@true", conn);
                cmd.Parameters.AddWithValue("true", "True");

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
                    Product.ScontoPercentuale = Convert.ToInt32(reader["sconto"]);
                    Product.PrezzoBase = Convert.ToDouble(reader["prezzoBase"]);
                    //double tot = Product.PrezzoBase * Product.ScontoPercentuale / 100;
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
    }
}