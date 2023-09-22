<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Prodotti.aspx.cs" Inherits="Ecommerce.Prodotti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1 class="text-center my-3">I nostri Prodotti</h1>



    <%-- Filtra prodotti --%>
    <div class="container">
        <div id="Carousel" class="carousel slide mb-5" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#Carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#Carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#Carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="5000">
                    <img src="Content/Img/SLIDE_1.jpg" class="d-block w-100" style="background-size: contain" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="5000">
                    <img src="Content/Img/SLIDE_2.jpg" class="d-block w-100 " alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="5000">
                    <img src="Content/Img/SLIDE_3.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#Carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#Carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
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
    </div>
    <div class="container">

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4">
            <asp:Repeater runat="server" ID="Repeater1" ItemType="Ecommerce.Product">
                <ItemTemplate>
                    <div class="col my-3">
                        <div class="card h-100 d-flex flex-column justify-content-between align-content-between">
                            <div class="img-container">
                                <img src="Content/Img/Promo_Sticker.png" class="<%#(Item.ScontoPercentuale)>0 ? "promoSticker" : "noPromo" %>" />
                                <a href="Details.aspx?idprodotto=<%# Item.IdProdotto %>">
                                    <img src="<%# Item.Copertina %>"
                                        class="card-img-top" alt="...">
                                </a>
                            </div>

                            <div class="card-body">
                                <h5 class="card-title" style="height: 3em">
                                    <%-- Nome prodotto --%>
                                    <strong><%# Item.NomeProdotto %></strong>
                                </h5>
                                <hr />
                                <p class="card-text">
                                    <%-- peso --%>
                                    <div class="d-flex align-items-center">
                                        <img style="width: 1em" class="me-2" src="https://lagranda.it/wp-content/themes/stockholm-child/assets/icon_bilancia_20.png" data-src="https://lagranda.it/wp-content/themes/stockholm-child/assets/icon_bilancia_20.png">
                                        <span class="fw-bold text-black-50"><%# Item.Peso%> g</span>
                                    </div>
                                </p>
                                <hr />
                                <p class="card-tex " style="height: 5em">
                                    <%-- descrizione breve --%>
                                    <%# Item.DescrizioneBreve %>
                                </p>
                                <hr />
                                <p class="card-text ">
                                    <%-- prezzo --%>
                                    <strong class="<%#(Item.ScontoPercentuale)>0 ? "text-decoration-line-through text-danger" : "text-decoration-none" %>"><%#  Item.PrezzoBase.ToString("C2")%></strong> <span><strong class="<%#(Item.ScontoPercentuale)>0 ? "" : "d-none" %>"><%#(Item.PrezzoBase-(Item.PrezzoBase*Item.ScontoPercentuale/100)).ToString("C2")%></strong></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="row">
            <div id="content2" class="col d-flex flex-column justify-content-center align-items-center mt-5">
                <img src="Content/Img/Photo_03_rig.png" class="d-block w-100" alt="...">
            </div>
        </div>
    </div>
</asp:Content>
