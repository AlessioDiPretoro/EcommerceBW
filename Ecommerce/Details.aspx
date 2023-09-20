<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Ecommerce.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="card mb-3">
            <div class="row g-0">
                <div class="col-md-4">
                    <asp:Image ID="Image1" CssClass="w-100" runat="server" />
                    <div class="w-25 my-3">

                        <asp:Image ID="Image2" CssClass="w-100" runat="server" />
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="card-body d-flex justify-content-between h-100 flex-column">
                        <asp:Label ID="NomeProd" CssClass="fw-bold" runat="server" Text=""></asp:Label>
                        <asp:Label ID="DescB" runat="server" Text=""></asp:Label>
                        <asp:Label ID="DescLu" runat="server" Text=""></asp:Label>
                        <div class="d-flex justify-content-start align-items-baseline">
                        <p class="me-2 fs-6">Seleziona la quantità</p>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-select w-25" runat="server">
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>
                            </asp:DropDownList>
                            <em><asp:Label ID="Prezzo" CssClass="ms-4 fs-4 text-secondary text-opacity-50" runat="server" Text="" ></asp:Label></em>
                        </div>
                        <div>
                            <div>
                                <em><strong><i class="bi bi-truck text-success fs-5"></i></strong> <span class="text-success"><strong>Spedizione gratuita </strong>  per ordini superiori a 120€</span></em>
                            </div>
                        </div>
                        <div>
                          
                           <asp:Button ID="AddCart"  runat="server" Text="Aggiungi al carrello 🛒" CssClass="btn btn-danger text-white bg-danger"   OnClick="AddCart_Click" />
                           
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



</asp:Content>
