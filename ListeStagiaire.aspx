<%@ Page Title="" Language="C#" MasterPageFile="~/PagePrincipal.Master" AutoEventWireup="true" CodeBehind="ListeStagiaire.aspx.cs" Inherits="ADO_ASP.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <label>Numero Stage</label>
    <asp:DropDownList ID="Stages" runat="server" DataSourceID="SqlDataSource1" DataTextField="NumStage" DataValueField="NumStage" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagiaire %>" SelectCommand="SELECT [NumStage] FROM [Stage]"></asp:SqlDataSource>
    <asp:GridView ID="StagiaireGridView" runat="server" ShowHeaderWhenEmpty="true">
    </asp:GridView>
    <asp:Label ID="ErrorMessage" runat="server"/>
</asp:Content>
