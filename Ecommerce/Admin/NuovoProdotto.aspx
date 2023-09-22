<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuovoProdotto.aspx.cs" Inherits="Ecommerce.Admin.NuovoProdotto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-5">
        <h1 class="text-center mb-2">Aggiungi Prodotti</h1>
        <h2 runat="server" class="alert alert-info" id="OkModificato">Prodotto aggiunto</h2>
        <div class="row row-cols-2 px-5">
            <div class="col">
                <%-- Nome Prodotto --%>
                <asp:TextBox ID="NomeProdotto" CssClass="form-control my-2" runat="server" placeholder="Nome Prodotto"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Descrizione Breve --%>
                <asp:TextBox ID="DescrizioneBreve" CssClass="form-control my-2" runat="server" placeholder="Descrizione breve"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Descrizione Lunga --%>
                <asp:TextBox ID="DescrizioneLunga" CssClass="form-control my-2" runat="server" placeholder="Descrizione lunga"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- TipologiaAnimale --%>
                <asp:TextBox ID="TipologiaAnimale" CssClass="form-control my-2" runat="server" placeholder="Tipologia Animale"></asp:TextBox>
            </div>
            <div class="col col-12">
                <%-- Categoria --%>
                <asp:DropDownList ID="DropDownCategorie" CssClass="form-select my-2" runat="server">
                    <asp:ListItem Text="Categoria" />
                </asp:DropDownList>
            </div>

            <div class="col ">
                <%-- Paese origine --%>
                <asp:TextBox ID="PaeseOrigine" CssClass="form-control my-2" runat="server" placeholder="Paese Origine"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Disponibilità --%>
                <asp:TextBox ID="Disponiblita" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Disponibilità"></asp:TextBox>
            </div>
            <div class="col col-12 ">
                <%-- Data Inserimento --%>
                <asp:Label ID="Calendar" Text="Data Inserimento" CssClass="form-label" runat="server" />
                <asp:TextBox ID="Calendario" runat="server" TextMode="Date" CssClass="form-control my-2" placeholder="Data" />
            </div>
            <div class="col ">
                <%-- Peso --%>
                <asp:TextBox ID="Peso" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Peso"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Prezzo base --%>
                <asp:TextBox ID="Prezzo" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Prezzo Base"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Sconto --%>
                <asp:TextBox ID="Sconto" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Sconto"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- In evidenza --%>
                <asp:Label Text="In evidenza" runat="server" CssClass="form-check-label" />
                <asp:CheckBox ID="Evidenza" CssClass="form-check-inline my-2" runat="server" />
            </div>
            <div class="col col-12 ">
                <%-- Copertina --%>
                <asp:TextBox ID="ImgCopertina" CssClass="form-control my-2" runat="server" placeholder="Link Copertina"></asp:TextBox>

            </div>
            <div class="col ">
                <%-- Immagine1  --%>
                <asp:TextBox ID="Img1" CssClass="form-control my-2" runat="server" placeholder="Link Immagine1"></asp:TextBox>

            </div>

            <div class="col ">
                <%-- Immagine2  --%>
                <asp:TextBox ID="Img2" CssClass="form-control my-2" runat="server" placeholder="Link Immagine2"></asp:TextBox>

            </div>

            <div class="col ">
                <%-- Immagine3  --%>
                <asp:TextBox ID="Img3" CssClass="form-control my-2" runat="server" placeholder="Link Immagine3"></asp:TextBox>
            </div>

            <div class="col ">
                <%-- Immagine4  --%>
                <asp:TextBox ID="Img4" CssClass="form-control my-2" runat="server" placeholder="Link Immagine4"></asp:TextBox>

            </div>
            <div class="d-flex w-100 justify-content-end">
                <asp:Button ID="Button1" Text="Salva Prodotto" CssClass="btn btn-primary my-3 w-100" runat="server" OnClick="Button1_Click" />
            </div>
        </div>
    </div>

</asp:Content>