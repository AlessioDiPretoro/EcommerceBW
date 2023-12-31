﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="Ecommerce.Carrello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center m-4">Carrello</h1>
    <div id="checkout" runat="server" class="d-flex justify-content-center align-items-center flex-column my-4">


        <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered container text-center w-100 " runat="server" AutoGenerateColumns="false" ItemType="Ecommerce.Cart">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Foto</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <img src="<%# Item.Product.Copertina %>" style="max-width: 50px; max-height: 50px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Nome</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Item.Product.NomeProdotto%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Quantità</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Item.quantity%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Prezzo cad.</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#Item.Product.PrezzoBase.ToString("C2")%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Prezzo Totale</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%#(Item.Product.PrezzoBase*Item.quantity).ToString("C2")%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <strong>Elimina</strong>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Button ID="DeleteThis" runat="server" Text="X" CssClass="btn btn-danger" OnClick="DeleteThis_Click" />
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        <div class="d-flex justify-content-center mt-2">
            <b runat="server" id="totalPrice"></b>
        </div>
        <div class="d-flex justify-content-center mt-2">
            <p runat="server" id="isEmpty"></p>
            <p runat="server" id="Check"></p>

            <asp:Button CssClass="btn btn-danger me-5" ID="Button1" runat="server" Text="Procedi al checkout" OnClick="Button1_Click" />

            <asp:Button CssClass="btn btn-danger ms-5" ID="DeleteAll" runat="server" Text="Svuota carrello" OnClick="DeleteAll_Click" />

        </div>
    </div>
</asp:Content>
