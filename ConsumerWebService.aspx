<%@ Page Title="" Language="C#" MasterPageFile="~/PagePrincipal.Master" AutoEventWireup="true" CodeBehind="ConsumerWebService.aspx.cs" Inherits="ADO_ASP.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table>
            <tr>
                <td>
                    <label>Date 1</label>
                </td>
                <td>
                    <asp:TextBox CssClass="text" ID="Date1" TextMode="Date" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Date 2</label>
                </td>
                <td>
                    <asp:TextBox CssClass="text" ID="Date2" TextMode="Date" runat="server"></asp:TextBox>
                </td>
            </tr>
          <tr>
            <td>
                 <asp:Button CssClass="btn"  ID="Consumer" runat="server" Text="Consumer" OnClick="Consumer_Click"/>
            </td>
            <td>
                 <asp:Label ID="Message" runat="server" ForeColor="Red" />
            </td>
        </tr>
        </table>
        <asp:GridView ID="nomStagGridView" runat="server" ShowHeaderWhenEmpty="true">
        </asp:GridView>
    <asp:TextBox ID="ErrorMessage" runat="server" ForeColor="Red" />
</asp:Content>
