<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="IspisKorisnika.aspx.cs" Inherits="MIV.Registracija.IspisKorisnika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="registracija.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime" />
            <asp:BoundField DataField="Prezime" HeaderText="Prezime" 
                SortExpression="Prezime" />
            <asp:BoundField DataField="Mobitel" HeaderText="Mobitel" 
                SortExpression="Mobitel" />
            <asp:BoundField DataField="Telefon" HeaderText="Telefon" 
                SortExpression="Telefon" />
            <asp:BoundField DataField="Ime poduzeća" HeaderText="Ime poduzeća" 
                SortExpression="Ime poduzeća" />
            <asp:BoundField DataField="Ulica" HeaderText="Ulica" SortExpression="Ulica" />
            <asp:BoundField DataField="Kućni broj" HeaderText="Kućni broj" 
                SortExpression="Kućni broj" />
            <asp:BoundField DataField="Poštanski broj" HeaderText="Poštanski broj" 
                SortExpression="Poštanski broj" />
            <asp:BoundField DataField="Mjesto" HeaderText="Mjesto" 
                SortExpression="Mjesto" />
            <asp:BoundField DataField="Država" HeaderText="Država" 
                SortExpression="Država" />
            <asp:BoundField DataField="Korisničko ime" HeaderText="Korisničko ime" 
                SortExpression="Korisničko ime" />
            <asp:BoundField DataField="Lozinka" HeaderText="Lozinka" 
                SortExpression="Lozinka" />
            <asp:BoundField DataField="E-mail" HeaderText="E-mail" 
                SortExpression="E-mail" />
            <asp:BoundField DataField="Tip" HeaderText="Tip" SortExpression="Tip" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MIV %>" 
        SelectCommand="SELECT * FROM [RegistracijaKorisnika]"></asp:SqlDataSource>

</asp:Content>
