<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div id="carousel" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#Carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#Carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#Carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Content/Img/Photo_03.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Content/Img/Photo_04.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
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
        <h3 class="title">Una Macelleria Sotrica a tua disposizione</h3>
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
        <h3 class="title">Il nostro prodotto</h3>
        <asp:Button ID="Button4" runat="server" Text="Scopri I Prodotti" />
        <asp:Image ID="Image3" CssClass="card-img img-title" ImageUrl="~/Content/img/vitello_intero.jpg" runat="server" />
        <div class="text-title">
            <h2 class="title">SPEDIZIONE IN TUTTA ITALIA!</h2>
        </div>
    </div>

    <div id="content4" class="d-flex flex-column justify-content-center align-items-center mt-5">
       
        <h3 class="title">Prodotti scelti per te</h3>
        <div class="card" style="width: 18rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>

    <section>
        <div class="homeCard d-flex justify-content-center">
            <div class="cardContent">
                <p class="textGold">I PRODOTTI</p>
                <h2 class="cardTitle">Freschi, cotti o stagionati: più che buoni, semplicemente unici</h2>
                <p class="textGrey">
                    Selezioniamo e produciamo una gamma completa di carni fresche, preparati e prodotti stagionati: dai tradizionali salumi toscani alle iconiche bistecche di Vitellone, dai teneri arrosti alle gustose salsicce.
                 <br>
                    <br>
                    Lo facciamo nel Chianti, con passione e cura, da ben 9 generazioni, rispettando ricette e saperi tradizionali.
                </p>
                <asp:Button ID="Button2" runat="server" Text="Scopri di più" CssClass="myBtn" />
            </div>
            <div class="w-50">
                <asp:Image ImageUrl="https://falorni.it/wp-content/uploads/2017/12/box_home_prodotti_antica_macelleria_falorni_greve_salumi.jpg" runat="server" CssClass="homeImage" />
            </div>
        </div>



        <div class="homeCard d-flex justify-content-center">

            <div class="w-50">
                <asp:Image ImageUrl="https://falorni.it/wp-content/uploads/2015/05/macelleria-preview.jpg" runat="server" CssClass="homeImage" />
            </div>
            <div class="cardContent">
                <p class="textGold">I PRODOTTI</p>
                <h2 class="cardTitle">Freschi, cotti o stagionati: più che buoni, semplicemente unici</h2>
                <p class="textGrey">
                    Selezioniamo e produciamo una gamma completa di carni fresche, preparati e prodotti stagionati: dai tradizionali salumi toscani alle iconiche bistecche di Vitellone, dai teneri arrosti alle gustose salsicce.
                    <br>
                    <br>
                    Lo facciamo nel Chianti, con passione e cura, da ben 9 generazioni, rispettando ricette e saperi tradizionali.
                </p>
                <asp:Button ID="Button3" runat="server" Text="Scopri di più" CssClass="myBtn" />
            </div>
        </div>
    </section>

</asp:Content>
