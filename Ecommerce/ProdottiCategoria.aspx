<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProdottiCategoria.aspx.cs" Inherits="Ecommerce.ProdottiCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-evenly align-items-center w-100">
        <a href="ProdottiCategoria.aspx?idCategoria=1" class="text-decoration-none my-3 btn  bg-transparent" id="cat1" runat="server">Hamburger</a>
        <a href="ProdottiCategoria.aspx?idCategoria=2" class="text-decoration-none my-3 btn  bg-transparent" id="cat2" runat="server">Bistecche</a>
        <a href="ProdottiCategoria.aspx?idCategoria=3" class="text-decoration-none my-3 btn  bg-transparent" id="cat3" runat="server">Gastronomia</a>
        <a href="ProdottiCategoria.aspx?idCategoria=4" class="text-decoration-none my-3 btn  bg-transparent" id="cat4" runat="server">Salumi</a>
        <a href="ProdottiCategoria.aspx?idCategoria=5" class="text-decoration-none my-3 btn  bg-transparent" id="cat5" runat="server">Altri tagli</a>

    </div>
    <div class="container">
        <div class="row row-cols-4">
            <asp:Repeater runat="server" ID="Repeater1" ItemType="Ecommerce.Product">
                <ItemTemplate>
                    <div class="col my-3">
                        <div class="card">
                            <img src="<%# Item.Copertina %>"
                                class="card-img-top" alt="...">
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
