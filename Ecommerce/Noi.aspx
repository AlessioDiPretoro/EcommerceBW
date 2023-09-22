<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Noi.aspx.cs" Inherits="Ecommerce.Noi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="d-flex flex-column justify-content-center align-items-center mt-5">
        <h2 class="title mb-5">Una Macelleria storica a tua disposizione</h2>
        <div class="card mb-3 w-75">
            <div class="row no-gutters mb-5">
                <div class="col-md-4">
                    <asp:Image ID="Image1" CssClass="card-img" ImageUrl="~/Content/img/sede.png" runat="server" />
                </div>
                <div class="col-md-8">
                    <div class="card-body p-0">
                        <h3 class="m-0">Chi siamo</h3>
                        <p class="card-text">
                            Epicode Carni, fondata nel 1980 a Montesarchio, è una realtà appassionata e dedicata alla produzione di carne di alta qualità. La nostra storia è una storia di impegno e tradizione familiare, che oggi continua con Guido Rossi, seguendo le orme del padre Michele e del nonno Tommaso.
                            <br />
                            La nostra filosofia è chiara: mettiamo tutto il nostro cuore in ciò che facciamo. Da generazioni, ci dedichiamo alla produzione di carni eccellenti, ereditando e perfezionando le tecniche tramandate di padre in figlio. La passione per la carne è il motore che ci guida, evidenziando la nostra dedizione al lavoro.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row no-gutters mb-5">
                <div class="col-md-8">
                    <div class="card-body p-0">
                        <h3 class="m-0">La Nostra Azienda</h3>
                        <p class="card-text">
                            Oggi, Epicode Carni è una realtà moderna e innovativa. Siamo orgogliosi di possedere un macello proprio, riconosciuto a livello europeo con il marchio CE, che ci consente di garantire la massima qualità e freschezza delle nostre carni. Nel nostro laboratorio, utilizziamo le tecniche più avanzate per preparare i nostri prodotti, mantenendo sempre il rispetto per la tradizione artigianale che ci ha resi ciò che siamo oggi.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <asp:Image ID="Image2" CssClass="card-img" ImageUrl="~/Content/img/sede.png" runat="server" />
                </div>
            </div>

            <div class="row no-gutters mb-5">
                <div class="col-md-4">
                    <asp:Image ID="Image3" CssClass="card-img" ImageUrl="~/Content/img/sede.png" runat="server" />
                </div>
                <div class="col-md-8">
                    <div class="card-body p-0">
                        <h3 class="m-0">Impegno e Costanza</h3>
                        <p class="card-text">
                            Le nostre parole d'ordine sono "impegno" e "costanza". Siamo impegnati a fornire ai nostri clienti solo il meglio, lavorando incessantemente per migliorare la qualità dei nostri prodotti e servizi. La costanza è ciò che ci ha permesso di crescere nel corso degli anni, mantenendo salda la nostra promessa di offrire carni di prima qualità.
                            Unisciti a noi in questa avventura culinaria, dove la passione per la carne si fonde con la tradizione e l'innovazione. Siamo pronti a soddisfare le tue esigenze di carne di alta qualità e ad offrirti un'esperienza gastronomica indimenticabile.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row no-gutters mb-5">
                <div class="col-md-8">
                    <div class="card-body p-0">
                        <h3 class="m-0">Dove Siamo</h3>
                        <p class="card-text">
                            Epicode Carni è un luogo dove la passione per la carne di alta qualità si fonde con la tradizione e l'innovazione. Situati nel cuore di Montesarchio, in provincia di Benevento, Italia, ci troviamo in una posizione ideale per accedere alle migliori materie prime e mantenere vivi i legami con la ricca cultura gastronomica della regione.
                            La nostra sede principale è più di un punto di riferimento per gli amanti della carne; è un luogo dove la storia e l'arte della lavorazione della carne si mescolano, dove il profumo delle prelibatezze culinarie riempie l'aria. Qui, potrete trovare una selezione eccezionale di prodotti che incarna l'impegno e la dedizione che mettiamo in ciò che facciamo.
                        </p>
                    </div>
                </div>

                <div class="col-md-4">
                    <iframe class="rounded-3 w-100 h-100" src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d25987945.517701853!2d-23.77468188175783!3d37.334064792838525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sluna!5e0!3m2!1sit!2sit!4v1695376033038!5m2!1sit!2sit" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
            <p class="mt-5 fs-5"><strong>pronti ad accogliervi con calore e a condividere la nostra passione per la carne. Venite a scoprire la bellezza del nostro territorio e ad assaporare la bontà dei nostri prodotti. Epicode Carni è più di un luogo dove acquistare carne; è un'esperienza culinaria indimenticabile. Vi aspettiamo!</strong></p>
        </div>
    </div>
</asp:Content>
