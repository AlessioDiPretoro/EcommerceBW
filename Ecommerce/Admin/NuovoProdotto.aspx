<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuovoProdotto.aspx.cs" Inherits="Ecommerce.Admin.NuovoProdotto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-5">
    <h1 class="text-center mb-2">Aggiungi Prodotti</h1>
        <div class="row row-cols-2 px-5">
            <div class="col">
                <%-- Nome Prodotto --%>
                <asp:TextBox ID="TextBox1" CssClass="form-control my-2" runat="server" placeholder="Nome Prodotto"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Descrizione --%>
                <asp:TextBox ID="TextBox2" CssClass="form-control my-2" runat="server" placeholder="Descrizione"></asp:TextBox>
            </div>
            <div class="col col-12">
                <%-- Categoria --%>
                <asp:DropDownList ID="DropDownList1"   CssClass="form-select my-2" runat="server">
                    <asp:ListItem Text="Categoria" />

                    <asp:ListItem Text="Cat1" Value="1" />
                    <asp:ListItem Text="Cat2" Value="2" />
                    <asp:ListItem Text="Cat3" Value="3" />
                    <%-- Aggiungere categorie --%>
                </asp:DropDownList>
            </div>

            <div class="col ">
                <%-- Paese origine --%>
                <asp:TextBox ID="TextBox4" CssClass="form-control my-2" runat="server" placeholder="Paese Origine"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Disponibilità --%>
                <asp:TextBox ID="TextBox5" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Disponibilità"></asp:TextBox>
            </div>
            <div class="col col-12 ">
                <%-- Data Inserimento --%>
                <asp:Label ID="Calendar" Text="Data Inserimento" CssClass="form-label" runat="server" />
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" CssClass="form-control my-2" placeholder="Data" />
            </div>
            <div class="col ">
                <%-- Peso --%>
                <asp:TextBox ID="TextBox7" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Peso"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Prezzo base --%>
                <asp:TextBox ID="TextBox8" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Prezzo Base"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Sconto --%>
                <asp:TextBox ID="TextBox9" CssClass="form-control my-2" TextMode="Number" runat="server" placeholder="Sconto"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- In evidenza --%>
                <asp:Label Text="In evidenza" runat="server" CssClass="form-check-label" />
                <asp:CheckBox ID="CheckBox1" CssClass="form-check-inline my-2"  runat="server" />
            </div>
            <div class="col col-12 ">
                <%-- Copertina --%>
                <asp:Label ID="Copertina" runat="server" CssClass="form-control my-2" Text="Copertina"></asp:Label>
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" placeholder="Copertina" />
            </div>
            <div class="col ">
                <%-- Immagine1  --%>
                <asp:Label ID="Img1" runat="server" CssClass="form-control my-2" Text="Immagine 1"></asp:Label>
                <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" placeholder="" />
            </div>

            <div class="col ">
                <%-- Immagine2  --%>
                <asp:Label ID="Img2" runat="server" CssClass="form-control my-2" Text="Immagine 2"></asp:Label>
                <asp:FileUpload ID="FileUpload3" CssClass="form-control" runat="server" placeholder="" />
            </div>

            <div class="col ">
                <%-- Immagine3  --%>
                <asp:Label ID="Img3" runat="server" CssClass="form-control my-2" Text="Immagine 3"></asp:Label>
                <asp:FileUpload ID="FileUpload4" CssClass="form-control" runat="server" placeholder="" />
            </div>

            <div class="col ">
                <%-- Immagine4  --%>
                <asp:Label ID="Img4" runat="server" CssClass="form-control my-2" Text="Immagine 4"></asp:Label>
                <asp:FileUpload ID="FileUpload5" CssClass="form-control" runat="server" placeholder="" />
            </div>
            <div class="d-flex w-100 justify-content-end">
                <asp:Button ID="Button1" Text="Salva Prodotto" CssClass="btn btn-primary my-3 w-100" runat="server" OnClick="Button1_Click" />
            </div>
        </div>
    </div>

</asp:Content>
