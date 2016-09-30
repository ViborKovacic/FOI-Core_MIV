<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="IspisKorisnika.aspx.cs" Inherits="MIV.Zaposlenici.IspisZaposlenika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
            DataSourceID="SqlDataSourceZaposlenici">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime" />
                <asp:BoundField DataField="Prezime" HeaderText="Prezime" 
                    SortExpression="Prezime" />
                <asp:BoundField DataField="Korisničko ime" HeaderText="Korisničko ime" 
                    SortExpression="Korisničko ime" />
                <asp:BoundField DataField="Lozinka" HeaderText="Lozinka" 
                    SortExpression="Lozinka" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceZaposlenici" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ZaposleniciConnectionString %>" 
            SelectCommand="SELECT * FROM [ZaposleniciMIV]"></asp:SqlDataSource>
    
    </div>
</asp:Content>
