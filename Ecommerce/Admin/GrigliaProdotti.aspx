<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GrigliaProdotti.aspx.cs" Inherits="Ecommerce.Admin.GrigliaProdotti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1>Elenco Prodotti</h1>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-active table-striped-columns" AutoGenerateColumns="false" ItemType="">
        <Columns>
            <asp:TemplateField>

            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>