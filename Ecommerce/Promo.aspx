<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Promo.aspx.cs" Inherits="Ecommerce.Promo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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