<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="Ecommerce.Carrello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Il tuo carrello</h1>

        <table class="cartTable">
            <tr>
                <th></th>
                <th></th>
                <th>Prodotto</th>
                <th>Prezzo</th>
                <th>Quantità</th>
                <th>Totale</th>
            </tr>
            <tr>
                <td><i class="bi bi-x-lg"></i></td>
                <td>
                    <asp:Image ImageUrl="https://lagranda.it/wp-content/uploads/2022/09/Bistecca-con-osso_1.jpg" runat="server" class="cartImg" /></td>
                <td>Nome</td>
                <td>7,60$</td>
                <td>1</td>
                <td>7,60$</td>
            </tr>
        </table>


    <%--    <asp:Repeater ID="Repeater1" runat="server" ItemType="">
        <HeaderTemplate>
            <table border="1">
                <tr>
                    <th>Prodotto</th>
                    <th>Prezzo</th>
                    <th>Quantità</th>
                    <th>Totale</th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>Item.Prodotto</td>
                <td>Item.Prezzo</td>
                <td>Item.Quantità</td>
                <td>Item.Totale</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>--%>
</asp:Content>
