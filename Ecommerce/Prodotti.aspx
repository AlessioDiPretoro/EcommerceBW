<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Prodotti.aspx.cs" Inherits="Ecommerce.Prodotti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center my-3">Pagina prodotti</h1>

    <%-- Filtra prodotti --%>
    <div class="d-flex justify-content-end gap-3 align-items-center">
        <button class="btn btn-outline-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
            Filtra
        </button>

        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasExampleLabel">Filtri</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="my-2">
                    Filtra per categoria:
                </div>
                <div class="d-flex justify-content-between align-items-start flex-column h-50">
                    <a href="ProdottiCategoria.aspx?idCategoria=1" id="cat1" runat="server" class="btn btn-outline-dark">Hamburger</a>
                    <a href="ProdottiCategoria.aspx?idCategoria=2" id="cat2" runat="server" class="btn btn-outline-dark">Bistecche</a>
                    <a href="ProdottiCategoria.aspx?idCategoria=3" id="cat3" runat="server" class="btn btn-outline-dark">Gastronomia</a>
                    <a href="ProdottiCategoria.aspx?idCategoria=4" id="cat4" runat="server" class="btn btn-outline-dark">Salumi</a>
                    <a href="ProdottiCategoria.aspx?idCategoria=5" id="cat5" runat="server" class="btn btn-outline-dark">Altri tagli</a>
                </div>
            </div>
        </div>

        <%-- Ordina Prodotti --%>

        <button class="btn btn-outline-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample1" aria-controls="offcanvasExample1">
            Ordina
        </button>

        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasExample1" aria-labelledby="offcanvasExampleLabel1">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasExampleLabel1">Ordina Prodotti</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div>
                    Ordina Per:
                </div>
                <div class="d-flex justify-content-between align-items-start flex-column h-25">
                    <asp:Button ID="Button1" CssClass="btn btn-outline-dark" Text="Nome" runat="server" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" CssClass="btn btn-outline-dark" Text="Prezzo (Dal più basso)" runat="server" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" CssClass="btn btn-outline-dark" Text="Prezzo (Dal più alto)" runat="server" OnClick="Button3_Click" />
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-4">
            <asp:Repeater runat="server" ID="Repeater1" ItemType="Ecommerce.Product">
                <ItemTemplate>
                    <div class="col my-3">
                        <div class="card">
                            <div class="img-container">
                                <img src="<%# Item.Copertina %>"
                                    class="card-img-top" alt="...">
                            </div>

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
