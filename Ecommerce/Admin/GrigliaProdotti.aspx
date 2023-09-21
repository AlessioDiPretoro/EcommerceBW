<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GrigliaProdotti.aspx.cs" Inherits="Ecommerce.Admin.GrigliaProdotti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Elenco Prodotti</h1>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-active table-striped-columns" AutoGenerateColumns="false" ItemType="Ecommerce.Product">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Id</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%# Item.IdProdotto %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Prodotto</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%# Item.NomeProdotto %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Prezzo</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%# Item.PrezzoBase.ToString("C2") %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Modifica</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a href="ModificaProdotto.aspx?idProdotto=<%#Item.IdProdotto %>  " class="btn btn-danger">Modifica</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>