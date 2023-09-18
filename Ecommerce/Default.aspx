<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



   
    <div class="d-flex flex-column justify-content-center align-items-center mt-5">
        <h3 class="title">Una Macelleria Sotrica a tua disposizione</h3>
        <div class="card mb-3 w-75">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <asp:Image ID="Image1" CssClass="card-img" ImageUrl="~/Content/imgs/sede.png" runat="server" />
                </div>
                <div class="col-md-8">
                    <div class="card-body p-0">
                        <p class="card-text">
                            Epicode Carni nasce nel 1980 a Montesarchio in provincia di Benevento, 
                            è cresciuta negli anni grazie alla laboriosità di Guido Rossi che oggi, 
                            con passione, porta avanti la tradizione di famiglia seguendo le orme del padre Michele 
                            e del nonno Tommaso.
                            <br />
                            <br />
                            L’azienda ora è dotata di un macello proprio riconosciuto CE, 
                            un laboratorio che produce carni di alta qualità e un innovativo e moderno punto vendita.
                            <br />
                            <br />
                            Impegno e costanza sono tutt’oggi le nostre parole d’ordine.
                        </p>

                        <asp:Button ID="Button1" runat="server" Text="Scopri Chi Siamo" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
