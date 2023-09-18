<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Home page</h1>
    <div id="Carousel" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#Carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#Carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#Carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Assets/Img/Photo_03.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Assets/Img/Photo_04.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Assets/Img/Photo_02.jpg" class="d-block w-100" alt="...">
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

    <main>
        <section>
            <div class="homeCard d-flex justify-content-center">
                <div class="cardContent">
                    <p class="textGold">I PRODOTTI</p>
                    <h2 class="cardTitle">Freschi, cotti o stagionati: più che buoni, semplicemente unici</h2>
                    <p class="textGrey">
                    Selezioniamo e produciamo una gamma completa di carni fresche, preparati e prodotti stagionati: dai tradizionali salumi toscani alle iconiche bistecche di Vitellone, dai teneri arrosti alle gustose salsicce.
                    <br><br> Lo facciamo nel Chianti, con passione e cura, da ben 9 generazioni, rispettando ricette e saperi tradizionali.
                    </p>
                    <asp:Button ID="Button1" runat="server" Text="Scopri di più" CssClass="myBtn"/>
                </div>
                <div class="w-50">
                    <asp:Image ImageUrl="https://falorni.it/wp-content/uploads/2017/12/box_home_prodotti_antica_macelleria_falorni_greve_salumi.jpg" runat="server" CssClass="homeImage"/>
                </div>
            </div>

        </section>
    </main>
</asp:Content>

    <div id="mainNavigation">
        <nav role="navigation">
            <div class="py-3 text-center border-bottom">
                <img src="/static_files/images/logos/logo_3_white_2.png" alt="" class="invert">
            </div>
        </nav>
        <div class="navbar-expand-md">
            <div class="navbar-dark text-center my-2">
                <button class="navbar-toggler w-75" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span><span class="align-middle">Menu</span>
                </button>
            </div>
            <div class="text-center mt-3 collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav mx-auto ">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Book Hotel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Destinations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Policy</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Company
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="#">Blog</a></li>
                            <li><a class="dropdown-item" href="#">About Us</a></li>
                            <li><a class="dropdown-item" href="#">Contact us</a></li>
                        </ul>
                    </li>
                </ul>
    <div class="d-flex flex-column justify-content-center align-items-center mt-5">
        <h3 class="title">Una Macelleria Sotrica a tua disposizione</h3>
        <div class="card mb-3 w-75">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <asp:Image ID="Image1" CssClass="card-img" ImageUrl="~/Content/imgs/sede.png" runat="server" />
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
</asp:Content>
