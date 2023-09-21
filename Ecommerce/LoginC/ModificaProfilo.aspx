<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ModificaProfilo.aspx.cs" Inherits="Ecommerce.LoginC.ModificaProfilo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-5">
        <h1 class="text-center mb-2">Modifica Profilo</h1>
        <div class="row row-cols-2 px-5">
            <div class="col">
                <%-- Nome --%>
                <asp:TextBox ID="Nome" CssClass="form-control my-2" runat="server" placeholder="Nome"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Cognome --%>
                <asp:TextBox ID="Cognome" CssClass="form-control my-2" runat="server" placeholder="Cognome"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Indirizzo --%>
                <asp:TextBox ID="Indirizzo" CssClass="form-control my-2" runat="server" placeholder="Indirizzo"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Città --%>
                <asp:TextBox ID="Citta" CssClass="form-control my-2" runat="server" placeholder="Città"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Cap --%>
                <asp:TextBox ID="Cap" CssClass="form-control my-2" runat="server" placeholder="CAP"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Username --%>
                <asp:TextBox ID="Username" CssClass="form-control my-2" runat="server" placeholder="Username"></asp:TextBox>
            </div>
            <div class="col ">
                <%-- Password --%>
                <asp:TextBox ID="Password" CssClass="form-control my-2" runat="server" placeholder="Password"></asp:TextBox>
            </div>

            <div class="d-flex w-100 justify-content-between">
                <asp:Button ID="EditProf" Text="Modifica Profilo" CssClass="btn btn-warning my-3 w-25" runat="server" OnClick="EditProf_Click" />

            </div>
        </div>
    </div>
</asp:Content>