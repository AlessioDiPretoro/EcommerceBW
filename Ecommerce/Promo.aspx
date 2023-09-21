<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Promo.aspx.cs" Inherits="Ecommerce.Promo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="text-center my-3">Prodotti in Promozione</h1>

       <div class="container">
     
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
                            <h5 class="card-title" style="height:2em">
                                <%-- Nome prodotto --%>
                                <strong> <%# Item.NomeProdotto %></strong>
                            </h5>
                            <hr />
                            <p class="card-text">
                                <%-- peso --%>
                                <div class="d-flex align-items-center">
                               <img style="width:1em" class="me-2" src="https://lagranda.it/wp-content/themes/stockholm-child/assets/icon_bilancia_20.png" data-src="https://lagranda.it/wp-content/themes/stockholm-child/assets/icon_bilancia_20.png"> 
                                    <span class="fw-bold text-black-50"><%# Item.Peso%> g</span>
                                    </div>
                            </p>
                            <hr />
                            <p class="card-text" style="height:3em">
                                <%-- descrizione breve --%>
                                <%# Item.DescrizioneBreve %>
                            </p>
                            <hr />
                            <p class="card-text">
                                <%-- prezzo --%>
                                <strong> <%#(Item.PrezzoBase-(Item.PrezzoBase*Item.ScontoPercentuale/100)).ToString("C2")%></strong>
                            </p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
</asp:Content>