<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Prodotti.aspx.cs" Inherits="Ecommerce.Prodotti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center my-3">Pagina prodotti</h1>
    <div class="d-flex justify-content-center align-items-center w-100">
        <a href="ProdottiCategoria.aspx?idCategoria=1" id="cat1" runat="server" clss="btn btn-primary">Hamburger</a>
        <a href="ProdottiCategoria.aspx?idCategoria=2" id="cat2" runat="server" clss="btn btn-primary">Bistecche</a>
        <a href="ProdottiCategoria.aspx?idCategoria=3" id="cat3" runat="server" clss="btn btn-primary">Gastronomia</a>
        <a href="ProdottiCategoria.aspx?idCategoria=4" id="cat4" runat="server" clss="btn btn-primary">Salumi</a>
        <a href="ProdottiCategoria.aspx?idCategoria=5" id="cat5" runat="server" clss="btn btn-primary">Altri tagli</a>
    </div>
    <div class="container">
        <div class="row row-cols-4">
            <asp:Repeater runat="server" ID="Repeater1" ItemType="Ecommerce.Product">
                <ItemTemplate>
                    <div class="col my-3">
                        <div class="card">
                            <img src="<%# Item.Copertina %>"
                                class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">
                                    <%-- Nome prodotto --%>
                                    <%# Item.NomeProdotto %>
                                </h5>
                                <hr />
                                <p class="card-text">
                                    <%-- peso --%>
                                    <%# Item.Peso %>
                                </p>
                                <hr />
                                <p class="card-text">
                                    <%-- descrizione breve --%>
                                    <%# Item.DescrizioneBreve %>
                                </p>
                                <hr />
                                <p class="card-text">
                                    <%-- prezzo --%>
                                    <%# Item.PrezzoBase %>
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
