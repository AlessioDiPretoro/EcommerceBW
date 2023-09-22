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
    <form id="form1" runat="server" defaultbutton="LoginButton">
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img src="Content/Img/copertina.jpg"
                                        alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem; height: 100%" />
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <div class="d-flex align-items-center mb-3 pb-1">
                                             <asp:ImageButton ID="ImageButton1" ImageUrl="Content/Img/newlogo.png" Style="width: 100px; border: none" PostBackUrl="~/Default.aspx" CausesValidation="false" runat="server" />
                                            <div class="d-flex flex-column">

                                                <span class="h1 fw-bold mb-0 mx-2">Epicode Carni</span>
                                                <span class="h3 text-danger fw-bold mb-0 mx-2">Login</span>
                                            </div>
                                        </div>

                                        <h5 class="fw-normal mb-3" style="letter-spacing: 1px;">Entra con il tuo account</h5>

                                        <div id="inputlogin" class="form-outline mb-4">
                                            <div class="mb-3">
                                            <asp:TextBox runat="server" placeholder="Username" CssClass="form-control form-control-lg" ID="userNameLogin"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="userNameLogin" ForeColor="red" runat="server" ErrorMessage="Inserire utente"></asp:RequiredFieldValidator>
                                            </div>
                                            <asp:TextBox runat="server" placeholder="Password" TextMode="Password" CssClass="form-control form-control-lg" ID="passwordLogin"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="passwordLogin" ForeColor="red" runat="server" ErrorMessage="Inserire password"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="pt-1 mb-4 d-flex align-items-center">
                                            <asp:Button ID="LoginButton" CssClass="btn btn-dark btn-lg btn-block" runat="server" Text="Login"  OnClick="LoginButton_Click" />
                                        <div runat="server" class="mx-3" style="color: red;" id="ErrorLogin">Dati utente errati</div>
                                        </div>

                                        <a class="small text-muted" href="#!">Password dimenticata?</a>
                                        <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                            Non hai un account? <a href="Register.aspx"
                                                style="color: #393f81;">Registrati qui</a>
                                        </p>
                                        <a href="https://www.linkedin.com/in/marco-puccio/" class="small text-muted">Termini di utilizzo</a>
                                        <br />

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
