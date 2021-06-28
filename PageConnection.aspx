<%@ Page Title="" Language="C#" MasterPageFile="~/PagePrincipal.Master" AutoEventWireup="true" CodeBehind="PageConnection.aspx.cs" Inherits="ADO_ASP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <label>Pseudo</label>
            </td>
            <td>
                <asp:TextBox CssClass="text" ID="Pseudo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 <label>Password</label>
            </td>
            <td>
                <asp:TextBox CssClass="text" TextMode="Password" ID="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button CssClass="btn"  ID="Connection" runat="server" Text="Connection" OnClick="Connection_Click"/>
            </td>
            <td>
                 <asp:Label ID="Message" runat="server" ForeColor="Red" />
            </td>
        </tr>
    </table>
</asp:Content>
