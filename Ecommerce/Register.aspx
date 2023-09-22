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
    <form id="form1" runat="server" defaultbutton="Signup">
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
                                                <span class="h3 text-danger fw-bold mb-0 mx-2">Register</span>
                                            </div>
                                        </div>

                                        <div id="inputregister" class="form-outline mb-4">
                                            <div class="row row-cols-2">
                                                <div class="col mb-3">
                                                    <asp:TextBox runat="server" placeholder="Nome" CssClass="form-control form-control-lg col" ID="nome"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="nome" ForeColor="red" runat="server" ErrorMessage="Inserire nome"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="col">
                                                    <asp:TextBox runat="server" placeholder="Cognome" CssClass="form-control form-control-lg col" ID="cognome"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="cognome" ForeColor="red" runat="server" ErrorMessage="Inserire cognome"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="col mb-3">
                                                    <asp:TextBox runat="server" placeholder="Indirizzo" CssClass="form-control form-control-lg" ID="indirizzo"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="indirizzo" ForeColor="red" runat="server" ErrorMessage="Inserire indirizzo"></asp:RequiredFieldValidator>
                                                </div>


                                                <div class="col">
                                                    <asp:TextBox runat="server" placeholder="Città" CssClass="form-control form-control-lg" ID="citta"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="citta" ForeColor="red" runat="server" ErrorMessage="Inserire città"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="col mb-3">
                                                    <asp:TextBox runat="server" placeholder="Cap" CssClass="form-control form-control-lg" ID="cap"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="cap" ForeColor="red" runat="server" ErrorMessage="Inserire cap"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="col">
                                                    <asp:TextBox runat="server" placeholder="Username" CssClass="form-control form-control-lg" ID="username"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="username" ForeColor="red" runat="server" ErrorMessage="Inserire Username"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="col mb-3">
                                                    <asp:TextBox runat="server" placeholder="Password" CssClass="form-control form-control-lg" ID="password" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="password" ForeColor="red" runat="server" ErrorMessage="Inserire Password"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="col">
                                                    <asp:TextBox runat="server" placeholder="Conferma Password" CssClass="form-control form-control-lg" ID="passwordConf" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ControlToValidate="passwordConf" ForeColor="red" runat="server" ErrorMessage="Inserire Password"></asp:RequiredFieldValidator>
                                                </div>

                                                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="password" ControlToCompare="passwordConf" runat="server" ErrorMessage="Password differenti"></asp:CompareValidator>
                                            </div>
                                        </div>

                                        <div class="d-flex">
                                        <asp:Button ID="Signup" CssClass="btn btn-success mx-3" runat="server" Text="Registrati" OnClick="Signup_Click"/>
                                        <asp:Button ID="Button1" CssClass="btn bg-danger text-white" runat="server" CausesValidation="false" Text="Login" PostBackUrl="~/Login.aspx" />
                                        </div>
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
