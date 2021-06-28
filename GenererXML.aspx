<%@ Page Title="" Language="C#" MasterPageFile="~/PagePrincipal.Master" AutoEventWireup="true" CodeBehind="GenererXML.aspx.cs" Inherits="ADO_ASP.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
                <td>
                    <label>Numero Stage : </label>
                </td>
                <td>
                    <asp:DropDownList CssClass="btn" ID="Stages" runat="server" DataSourceID="SqlDataSource1" DataTextField="NumStage" DataValueField="NumStage"/>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagiaire %>" SelectCommand="SELECT [NumStage] FROM [Stage]"></asp:SqlDataSource>
                </td>
            </tr>
           <tr>
                <td>
                    <asp:Button CssClass="btn" ID="GenereFichierXML" Text="Generer Fichier XML" runat="server" OnClick="GenereFichierXML_Click"/>
                </td>
                <td>
                    <asp:Label ID="Message" runat="server" />
                </td>
            </tr>
        </table>
</asp:Content>
