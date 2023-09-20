using System;
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
                            
                            Image1.ImageUrl = reader["copertina"].ToString();
                            NomeProd.Text = reader["nomeProdotto"].ToString();
                            DescB.Text = reader["descrizioneBreve"].ToString();
                            DescLu.Text = reader["descrizioneLunga"].ToString();
                            Prezzo.Text = Convert.ToDouble(reader["prezzoBase"]).ToString("C2");
                            Image2.ImageUrl = reader["immagine1"].ToString();
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
            int id = Convert.ToInt16(Request.QueryString["idDetails"]);
            //foreach (Product p in Product.productList)
            //{
            //    if (p.Id == id)
            //    {
            //        chosenP = p;
            //        break;
            //    }
            //}
            //int qty = int.Parse(DropDownList1.SelectedItem.Value);
            //List<CartItem> cartList = Session["sessionCart"] as List<CartItem>;
            //cartList.Add(new CartItem(qty, chosenP));

            //Session["sessionCart"] = cartList;
            //Response.Redirect("Default.aspx");
        }
    }
}