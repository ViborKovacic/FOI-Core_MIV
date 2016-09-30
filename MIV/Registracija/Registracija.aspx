<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="MIV.Registracija.Registracija" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="registracija.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="tablica">
    
        <table class="style1">
            <tr>
                <td class="style5">
                    <a>Osobni podaci</a></td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Ime:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxIme" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxIme" ErrorMessage="Unesite ime" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Prezime:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxPrezime" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxPrezime" ErrorMessage="Unesite prezime" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mobitel:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxMobitel" runat="server" TextMode="Number" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBoxMobitel" ErrorMessage="Unesite mobitel" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Telefon:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxTelefon" runat="server" TextMode="Number" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxTelefon" ErrorMessage="Unesite telefon" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Ime poduzeća:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxImePod" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="TextBoxImePod" ErrorMessage="Unesite ime poduzeća" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Ulica:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxUlica" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBoxUlica" ErrorMessage="Unesite ulicu" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Kućni broj:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxKuBr" runat="server" TextMode="Number" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBoxKuBr" ErrorMessage="Unesite kućni broj" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Poštanski broj:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxPosBr" runat="server" TextMode="Number" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBoxPosBr" ErrorMessage="Unesite poštanski broj" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mjesto:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxMjesto" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="TextBoxMjesto" ErrorMessage="Unesite mjesto" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Država:</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListDrzava" runat="server" 
                        onselectedindexchanged="DropDownListDrzava_SelectedIndexChanged" 
                        style="text-align: center" Width="200px" DataSourceID="SqlDataDrzave" 
                        DataTextField="Države" DataValueField="Države">
                        <asp:ListItem Selected="True">Odaberite državu</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataDrzave" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MIV %>" 
                        SelectCommand="SELECT * FROM [Drzave]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="DropDownListDrzava" ErrorMessage="Odaberite državu" 
                        ForeColor="#CC0000" InitialValue="Unesite državu"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <a>Korisnički podaci</a></td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Korisničko ime:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxKorisIme" runat="server" Width="200px" 
                        AutoPostBack="True" ontextchanged="TextBoxKorisIme_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBoxKorisIme" ErrorMessage="Unesite korisničko ime" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Lozinka:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxLozinka" runat="server" TextMode="Password" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBoxLozinka" ErrorMessage="Unesite lozinku" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Ponovi lozinku:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxPLozinka" runat="server" TextMode="Password" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBoxPLozinka" ErrorMessage="Ponovite lozinku" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBoxLozinka" ControlToValidate="TextBoxPLozinka" 
                        ErrorMessage="Lozinke nisu iste" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    E-mail:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBoxEmail" ErrorMessage="Unesite e-mail" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Registriraj se" />
                    <input id="Reset1" type="reset" value="Novi unos" onclick="return Reset1_onclick()" /></td>
                <td>
                    <asp:HyperLink ID="UrediKorisnike" runat="server" 
                        NavigateUrl="~/Zaposlenici/UrediKorisnike.aspx">Izmjena korisnika</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
