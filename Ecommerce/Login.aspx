<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ecommerce.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login page</h1>
    <div>
        <asp:TextBox runat="server" placeholder="Username" CssClass="form-control" ID="userNameLogin"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="userNameLogin" runat="server" ErrorMessage="Inserire utente"></asp:RequiredFieldValidator>
        <asp:TextBox runat="server" placeholder="Password" CssClass="form-control" ID="passwordLogin"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="passwordLogin" runat="server" ErrorMessage="Inserire password"></asp:RequiredFieldValidator>
        <asp:Button ID="LoginButton" CssClass="btn btn-success" runat="server" Text="Login" OnClick="LoginButton_Click" />
    </div>
    <div runat="server" id="ErrorLogin">Dati utente errati</div>
    <h2>Non hai un account? Iscriviti</h2>
    <asp:TextBox runat="server" placeholder="Nome" CssClass="form-control" ID="nome"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="nome" runat="server" ErrorMessage="Inserire nome"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" placeholder="Cognome" CssClass="form-control" ID="cognome"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="cognome" runat="server" ErrorMessage="Inserire cognome"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" placeholder="Indirizzo" CssClass="form-control" ID="indirizzo"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="indirizzo" runat="server" ErrorMessage="Inserire indirizzo"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" placeholder="Città" CssClass="form-control" ID="citta"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="citta" runat="server" ErrorMessage="Inserire città"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" placeholder="Cap" CssClass="form-control" ID="cap"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="cap" runat="server" ErrorMessage="Inserire cap"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" placeholder="Password" CssClass="form-control" ID="password" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="password" runat="server" ErrorMessage="Inserire Password"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" placeholder="Conferma Password" CssClass="form-control" ID="passwordConf" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="passwordConf" runat="server" ErrorMessage="Inserire Password"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="password" ControlToCompare="passwordConf" runat="server" ErrorMessage="Password differenti"></asp:CompareValidator>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Metodo di pagamento" />
    <asp:Button ID="Signup" runat="server" Text="Registrati" OnClick="Signup_Click" />
</asp:Content>
