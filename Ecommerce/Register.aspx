<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ecommerce.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="formContainer mt-2">
            <h2>Iscrizione</h2>
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
            <asp:TextBox runat="server" placeholder="Username" CssClass="form-control" ID="username"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="username" runat="server" ErrorMessage="Inserire Username"></asp:RequiredFieldValidator>
            <asp:TextBox runat="server" placeholder="Password" CssClass="form-control" ID="password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="password" runat="server" ErrorMessage="Inserire Password"></asp:RequiredFieldValidator>
            <asp:TextBox runat="server" placeholder="Conferma Password" CssClass="form-control" ID="passwordConf" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="passwordConf" runat="server" ErrorMessage="Inserire Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="password" ControlToCompare="passwordConf" runat="server" ErrorMessage="Password differenti"></asp:CompareValidator>

            <asp:CheckBox ID="CheckBox1" runat="server" Text="Metodo di pagamento" CssClass="btn btn-outline-primary" />

            <asp:Button ID="Signup" CssClass="btn btn-success" runat="server" Text="Registrati" OnClick="Signup_Click" />
        </div>
    </form>
</body>
</html>