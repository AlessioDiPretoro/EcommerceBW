<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ecommerce.Login" %>

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
         <nav id="navbar" class="navbar-expand-lg">
     <div class="container-fluid d-flex justify-content-evenly align-items-center">
        
         <div class="centered-logo">
             <asp:ImageButton ID="ImageButton1" ImageUrl="~/Content/img/logo.png" PostBackUrl="~/Default.aspx" CausesValidation="false" runat="server" />
         </div>
        

     </div>
 </nav>
        <div class="text-center">
            <div class="formContainer mt-2">
                <h2>Login page</h2>
                <asp:TextBox runat="server" placeholder="Username" CssClass="form-control" ID="userNameLogin"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="userNameLogin" runat="server" ErrorMessage="Inserire utente"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" placeholder="Password" CssClass="form-control" ID="passwordLogin"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="passwordLogin" runat="server" ErrorMessage="Inserire password"></asp:RequiredFieldValidator>
                <asp:Button ID="LoginButton" CssClass="btn btn-success" runat="server" Text="Login" OnClick="LoginButton_Click" />
            </div>
            <div runat="server" id="ErrorLogin">Dati utente errati</div>
            <div class="formContainer mt-5">
                <h2>Non hai un account? <a href="Register.aspx">Iscriviti</a></h2>
            </div>
        </div>
    </form>
</body>
</html>
