<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ModificaProdotto.aspx.cs" Inherits="Ecommerce.Admin.ModificaProdotto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-5">
        <h1 class="text-center mb-2">Modifica Prodotti</h1>
            <h2 runat="server" class="alert alert-info" id="OkModificato">Prodotto modificato</h2>
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
                <asp:TextBox ID="Prezzo" CssClass="form-control my-2" runat="server" placeholder="Prezzo Base"></asp:TextBox>
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
            <div class="d-flex w-100 justify-content-between">
                <asp:Button ID="Button1" Text="Modifica Prodotto" CssClass="btn btn-warning my-3 w-25" runat="server" OnClick="Button1_Click" />
                

                <%-- Modale bottone elimina prodotto --%>
                <button type="button" class="btn btn-danger my-3 w-25" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Elimina Prodotto
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Sicuro di voler eliminare questo prodotto?</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>L'eliminazione del prodotto sarà permanente e non potrà essere annullata</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Annulla</button>
                                <asp:Button ID="Button2" Text="Elimina" CssClass="btn btn-danger" runat="server" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>