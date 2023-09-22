<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Carousel" class="carousel slide" data-bs-ride="carousel">
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

    <div id="content" class="d-flex flex-column justify-content-center align-items-center mt-5">
        <asp:Image ID="Image2" CssClass="card-img img-title" ImageUrl="~/Content/img/vitello.png" runat="server" />
        <h2 class="title">Una Macelleria storica a tua disposizione</h2>
        <div class="card mb-3 w-75">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <asp:Image ID="Image1" CssClass="card-img" ImageUrl="~/Content/img/sede.png" runat="server" />
                </div>
                <div class="col-md-8">
                    <div class="card-body p-0">
                        <p class="card-text">
                            Epicode Carni nasce nel 1980 a Montesarchio in provincia di Benevento,
                               è cresciuta negli anni grazie alla laboriosità di Guido Rossi che oggi,
                               con passione, porta avanti la tradizione di famiglia seguendo le orme del padre Michele
                               e del nonno Tommaso.
                               <br />
                            <br />
                            L’azienda ora è dotata di un macello proprio riconosciuto CE,
                               un laboratorio che produce carni di alta qualità e un innovativo e moderno punto vendita.
                               <br />
                            <br />
                            Impegno e costanza sono tutt’oggi le nostre parole d’ordine.
                        </p>
                        <asp:Button ID="Button1" runat="server" Text="Scopri Chi Siamo" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="content2" class="d-flex flex-column justify-content-center align-items-center mt-5">
        <img src="Content/Img/Photo_03_rig.png" class="d-block w-100" alt="...">
    </div>

    <div id="content3" class="d-flex flex-column justify-content-center align-items-center mt-5">
        <h2>Il nostro prodotto</h2>
        <asp:Button ID="Button4" runat="server" class="butt" PostBackUrl="~/Prodotti.aspx" Text="Scopri I Nostri Prodotti" />
        <asp:Image ID="Image3" CssClass="card-img img-title" ImageUrl="~/Content/img/vitello_intero.jpg" runat="server" />
        <div class="text-title">
            <h2 class="title">SPEDIZIONE IN TUTTA ITALIA!</h2>
        </div>
    </div>


    <h2 class="text-center">Prodotti scelti per te</h2>
    <div class="container m-auto row row-cols-1 row-cols-md-2 row-cols-lg-3 justify-content-center">
        <div class="col my-3">
            <div class="card h-100 d-flex flex-column justify-content-between align-content-between border border-1 border-dark">
                <div class="img-container">
                    <asp:Image ID="Image4" CssClass="card-img img-title card-img-top" ImageUrl="https://www.lacasadicarne.it/cdn/shop/products/IMG_5966.jpg?v=1616164698" runat="server" />
                </div>
                     <div class="card-body">
                    <h3>Costata black angus</h3>
                </div>
            </div>

            <div class="col card" style="width: 18rem;">
                 <div class="img-container">
                <asp:Image ID="Image5" CssClass="card-img img-title" ImageUrl="https://shop.ilmannarino.it/wp-content/uploads/2023/06/bavarese-costata_marmo_interna.jpg" runat="server" />
                </div>
                     <div class="card-body">
                    <h3>Costata bavarese</h3>
                </div>
            </div>

            <div class="col card" style="width: 18rem;">
                 <div class="img-container">
                <asp:Image ID="Image6" CssClass="card-img img-title" ImageUrl="https://lagranda.it/wp-content/uploads/2022/09/Bistecca-frollata_1fronte.jpg" runat="server" />
                </div>
                     <div class="card-body">
                    <h3>Bistecca Frollata di Bovino</h3>
                </div>
            </div>
        </div>
    </div>


    <div id="content5" class="d-flex flex-column justify-content-center align-items-center">
        <h2>I Prodotti</h2>
        <div class="card mb-3 w-75">
            <div class="row no-gutters">
                <div class="card-body col-md-8 d-flex flex-column justify-content-between">
                    <h3>Freschi, cotti o stagionati:<br />
                        più che buoni, semplicemente unici</h3>
                    <div class="card-text">
                        Selezioniamo e produciamo una gamma completa di carni fresche, preparati e prodotti stagionati: dai tradizionali salumi toscani alle iconiche bistecche di Vitellone, dai teneri arrosti alle gustose salsicce.
                        <br>
                        <br>
                        Lo facciamo nel Chianti, con passione e cura, da ben 9 generazioni, rispettando ricette e saperi tradizionali.
                    </div>
                    <asp:Button ID="Button2" runat="server" style="max-width:200px" Text="Scopri di più" />
                </div>
                <div class="col-md-4">
                    <asp:Image ID="Image8" CssClass="card-img" ImageUrl="https://lagranda.it/wp-content/uploads/2022/09/SalsicciaStagionata_1.jpg" runat="server" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>