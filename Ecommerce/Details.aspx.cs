using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

namespace Ecommerce
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["IdProdotto"] != null)
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                    SqlConnection conn = new SqlConnection(connectionString);

                    try
                    {
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where idprodotto=@id", conn);
                        cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);
                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            double prezzob = Convert.ToDouble(reader["prezzoBase"]);
                            int sconto = Convert.ToInt32(reader["Sconto"]);

                            ImageButton1.ImageUrl = reader["copertina"].ToString();
                            NomeProd.Text = reader["nomeProdotto"].ToString();
                            DescB.Text = reader["descrizioneBreve"].ToString();
                            DescLu.Text = reader["descrizioneLunga"].ToString();
                            if (reader["inEvidenza"].ToString() == "True")
                            {
                                prezzob = prezzob - (prezzob * sconto / 100);
                                Prezzo.Text = prezzob.ToString("C2");
                            }
                            else
                            {
                                Prezzo.Text = prezzob.ToString("C2");
                            }
                            ImageButton2.ImageUrl = reader["immagine1"].ToString();
                            ImageButton3.ImageUrl = reader["immagine2"].ToString();
                            ImageButton4.ImageUrl = reader["immagine3"].ToString();
                            ImageButton5.ImageUrl = reader["immagine4"].ToString();
                            if (ImageButton2.ImageUrl == "")
                            {
                                ImageButton2.Visible = false;
                            }
                            if (ImageButton3.ImageUrl == "")
                            {
                                ImageButton3.Visible = false;
                            }
                            if (ImageButton4.ImageUrl == "")
                            {
                                ImageButton4.Visible = false;
                            }
                            if (ImageButton5.ImageUrl == "")
                            {
                                ImageButton5.Visible = false;
                            }
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
                else
                {
                    Response.Redirect("Prodotti.aspx");
                }
            }
        }

        protected void AddCart_Click(object sender, EventArgs e)
        {
            Product chosenP = new Product();
            int id = Convert.ToInt16(Request.QueryString["idprodotto"]);
            List<Product> productAll = Product.GetAllProducts();
            foreach (Product p in productAll)
            {
                if (p.IdProdotto == id)
                {
                    chosenP = p;
                    break;
                }
            }
            int qty = int.Parse(DropDownList1.SelectedItem.Value);

            List<Cart> cartList = Session["sessionCart"] as List<Cart>;
            cartList.Add(new Cart(qty, chosenP));

            Session["sessionCart"] = cartList;
            Response.Redirect("Prodotti.aspx");
        }

        protected void ImageButton2_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            if (Request.QueryString["IdProdotto"] != null)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where idprodotto=@id", conn);
                    cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        double prezzob = Convert.ToDouble(reader["prezzoBase"]);
                        int sconto = Convert.ToInt32(reader["Sconto"]);

                        ImageButton1.ImageUrl = reader["immagine1"].ToString();
                        NomeProd.Text = reader["nomeProdotto"].ToString();
                        DescB.Text = reader["descrizioneBreve"].ToString();
                        DescLu.Text = reader["descrizioneLunga"].ToString();
                        if (reader["inEvidenza"].ToString() == "True")
                        {
                            prezzob = prezzob - (prezzob * sconto / 100);
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        else
                        {
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        ImageButton2.ImageUrl = reader["immagine1"].ToString();
                        ImageButton3.ImageUrl = reader["immagine2"].ToString();
                        ImageButton4.ImageUrl = reader["immagine3"].ToString();
                        ImageButton5.ImageUrl = reader["immagine4"].ToString();
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
            else
            {
                Response.Redirect("Prodotti.aspx");
            }
        }

        protected void ImageButton3_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            if (Request.QueryString["IdProdotto"] != null)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where idprodotto=@id", conn);
                    cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        double prezzob = Convert.ToDouble(reader["prezzoBase"]);
                        int sconto = Convert.ToInt32(reader["Sconto"]);

                        ImageButton1.ImageUrl = reader["immagine2"].ToString();

                        NomeProd.Text = reader["nomeProdotto"].ToString();
                        DescB.Text = reader["descrizioneBreve"].ToString();
                        DescLu.Text = reader["descrizioneLunga"].ToString();
                        if (reader["inEvidenza"].ToString() == "True")
                        {
                            prezzob = prezzob - (prezzob * sconto / 100);
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        else
                        {
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        ImageButton2.ImageUrl = reader["immagine1"].ToString();
                        ImageButton3.ImageUrl = reader["immagine2"].ToString();
                        ImageButton4.ImageUrl = reader["immagine3"].ToString();
                        ImageButton5.ImageUrl = reader["immagine4"].ToString();
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
            else
            {
                Response.Redirect("Prodotti.aspx");
            }
        }

        protected void ImageButton4_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            if (Request.QueryString["IdProdotto"] != null)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where idprodotto=@id", conn);
                    cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        double prezzob = Convert.ToDouble(reader["prezzoBase"]);
                        int sconto = Convert.ToInt32(reader["Sconto"]);

                        ImageButton1.ImageUrl = reader["immagine3"].ToString();
                        NomeProd.Text = reader["nomeProdotto"].ToString();
                        DescB.Text = reader["descrizioneBreve"].ToString();
                        DescLu.Text = reader["descrizioneLunga"].ToString();
                        if (reader["inEvidenza"].ToString() == "True")
                        {
                            prezzob = prezzob - (prezzob * sconto / 100);
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        else
                        {
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        ImageButton2.ImageUrl = reader["immagine1"].ToString();
                        ImageButton3.ImageUrl = reader["immagine2"].ToString();
                        ImageButton4.ImageUrl = reader["immagine3"].ToString();
                        ImageButton5.ImageUrl = reader["immagine4"].ToString();
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
            else
            {
                Response.Redirect("Prodotti.aspx");
            }
        }

        protected void ImageButton5_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            if (Request.QueryString["IdProdotto"] != null)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where idprodotto=@id", conn);
                    cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        double prezzob = Convert.ToDouble(reader["prezzoBase"]);
                        int sconto = Convert.ToInt32(reader["Sconto"]);

                        ImageButton1.ImageUrl = reader["immagine4"].ToString();
                        NomeProd.Text = reader["nomeProdotto"].ToString();
                        DescB.Text = reader["descrizioneBreve"].ToString();
                        DescLu.Text = reader["descrizioneLunga"].ToString();
                        if (reader["inEvidenza"].ToString() == "True")
                        {
                            prezzob = prezzob - (prezzob * sconto / 100);
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        else
                        {
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        ImageButton2.ImageUrl = reader["immagine1"].ToString();
                        ImageButton3.ImageUrl = reader["immagine2"].ToString();
                        ImageButton4.ImageUrl = reader["immagine3"].ToString();
                        ImageButton5.ImageUrl = reader["immagine4"].ToString();
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
            else
            {
                Response.Redirect("Prodotti.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            if (Request.QueryString["IdProdotto"] != null)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DB_ConnString"].ToString();
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM prodotti where idprodotto=@id", conn);
                    cmd.Parameters.AddWithValue("id", Request.QueryString["IdProdotto"]);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        double prezzob = Convert.ToDouble(reader["prezzoBase"]);
                        int sconto = Convert.ToInt32(reader["Sconto"]);

                        ImageButton1.ImageUrl = reader["copertina"].ToString();
                        NomeProd.Text = reader["nomeProdotto"].ToString();
                        DescB.Text = reader["descrizioneBreve"].ToString();
                        DescLu.Text = reader["descrizioneLunga"].ToString();
                        if (reader["inEvidenza"].ToString() == "True")
                        {
                            prezzob = prezzob - (prezzob * sconto / 100);
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        else
                        {
                            Prezzo.Text = prezzob.ToString("C2");
                        }
                        ImageButton2.ImageUrl = reader["immagine1"].ToString();
                        ImageButton3.ImageUrl = reader["immagine2"].ToString();
                        ImageButton4.ImageUrl = reader["immagine3"].ToString();
                        ImageButton5.ImageUrl = reader["immagine4"].ToString();
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
            else
            {
                Response.Redirect("Prodotti.aspx");
            }
        }
    }
}