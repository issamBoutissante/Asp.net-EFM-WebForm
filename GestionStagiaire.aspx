<%@ Page Title="" Language="C#" MasterPageFile="~/PagePrincipal.Master" AutoEventWireup="true" CodeBehind="GestionStagiaire.aspx.cs" Inherits="ADO_ASP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
        <tr>
            <td>
                <label>Code Satagiaire</label>
            </td>
            <td>
                <asp:TextBox CssClass="text" ID="CodeStag" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 <label>Nom Stagiaire</label>
            </td>
            <td>
                <asp:TextBox CssClass="text" ID="NomStag" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                 <label>Date Inscription</label>
            </td>
            <td>
                <asp:TextBox CssClass="text" TextMode="Date" ID="DateInscr" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
          <td>
                <label>Email Stagiaire</label>
            </td>
            <td>
                <asp:TextBox CssClass="text" ID="EmailStag" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="EmailStag" ErrorMessage="Email not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
          <tr>
            <td>
                 <label>Numero Stage</label>
            </td>
            <td>
                <asp:DropDownList CssClass="text"  ID="Stages" runat="server" DataSourceID="SqlDataSource1" DataTextField="NumStage" DataValueField="NumStage"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagiaire %>" SelectCommand="SELECT [NumStage] FROM [Stage]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button CssClass="btn"  ID="Ajout" runat="server" Text="Ajouter" OnClick="Ajout_Click"/>
            </td>
            <td>
                 <asp:Label ID="Message" runat="server" ForeColor="Red" />
            </td>
        </tr>
    </table>
    <h1>Supprission</h1>
      <table>
          <tr>
            <td>
                 <label>Numero Stage</label>
            </td>
            <td>
                <asp:DropDownList CssClass="text"  ID="Stagiaraire" runat="server" DataSourceID="SqlDataSource2" DataTextField="CodeStg" DataValueField="CodeStg"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagiaire %>" SelectCommand="SELECT [CodeStg] FROM [Stagiaire]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button CssClass="btn"  ID="Supprimer" runat="server" Text="Supprimer" OnClick="Supprimer_Click"/>
            </td>
            <td>
                 <asp:Label ID="MessageSupp" runat="server" ForeColor="Red" />
            </td>
        </tr>
    </table>
</asp:Content>
