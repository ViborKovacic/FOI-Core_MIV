  <%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MIV.Prijava.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="prijava.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        .style4
        {
            text-align: right;
        }
        .style7
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div id="naslov_prijava">
        <h1>
            PRIJAVA
        </h1>
    </div>

    <div id="tablica">        
                    <table class="style3">
                        <tr>
                            <td class="style4">
                                Korisničko ime:</td>
                            <td class="style6">
                                <asp:TextBox ID="TextBoxImeKoris" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxImeKoris" ErrorMessage="Unesite korisničko ime" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Lozinka:</td>
                            <td class="style6">
                                <asp:TextBox ID="TextBoxLozPrijava" runat="server" TextMode="Password" 
                        Width="200px"></asp:TextBox>
                            </td>
                            <td class="style8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxLozPrijava" ErrorMessage="Unesite lozinku" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style7">
                                <asp:Button ID="ButtonPrijava" runat="server" onclick="ButtonPrijava_Click" 
                        style="margin-left: 0px" Text="Prijava" Width="113px" 
                        ToolTip="Click to login" />
                            </td>
                            <td>
                                <div id="artikli">
                                    <asp:HyperLink ID="HyperLinkRegistracija" runat="server" 
                        NavigateUrl="../Registracija/Registracija.aspx" 
                            ToolTip="Click to registration">Registracija</asp:HyperLink>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="LabelPoruka" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                
</div>
</asp:Content>
