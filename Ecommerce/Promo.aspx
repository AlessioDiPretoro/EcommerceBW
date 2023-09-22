<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Promo.aspx.cs" Inherits="Ecommerce.Promo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center my-3">Prodotti in Promozione</h1>
    <div class="container">
        <div id="Carousel" class="carousel slide mb-5" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#Carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#Carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#Carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="3000">
                    <img src="Content/Img/Photo_03.jpg" class="d-block w-100" style="background-size: contain" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="3000">
                    <img src="Content/Img/Photo_04.jpg" class="d-block w-100 " alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="3000">
                    <img src="Content/Img/Photo_02.jpg" class="d-block w-100" alt="...">
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
        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4">
            <asp:Repeater runat="server" ID="Repeater1" ItemType="Ecommerce.Product">
                <ItemTemplate>
                    <div class="col my-3">
                        <div class="card">
                            <div class="img-container">
                                <a href="Details.aspx?idprodotto=<%# Item.IdProdotto %>">
                                    <img src="<%# Item.Copertina %>"
                                        class="card-img-top" alt="...">
                                </a>
                            </div>

                            <div class="card-body">
                                <h5 class="card-title" style="height: 2em">
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
                                <p class="card-text" style="height: 3em">
                                    <%-- descrizione breve --%>
                                    <%# Item.DescrizioneBreve %>
                                </p>
                                <hr />
                                <p class="card-text">
                                    <%-- prezzo --%>
                                    <strong><%#(Item.PrezzoBase-(Item.PrezzoBase*Item.ScontoPercentuale/100)).ToString("C2")%></strong>
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
