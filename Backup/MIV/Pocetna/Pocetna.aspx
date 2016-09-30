<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="MIV.Pocetna.Pocetna" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="pocetna.css" rel="stylesheet" type="text/css" media="all" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <div id="banner">
 </div>
 <div id="page" class="container">
        <div class="boxA">
            <h2>
                SIROVINE</h2>
            <div class="box">
                <a href="../Tablice/Sirovine/IspisSirovine.aspx" class="image image-full">
                <img src="images/pic01.jpg" alt="" /></a> <span>željezo, karburit, nodulator</span>
            </div>            
        </div>

        <div class="boxB">
            <h2>
                TEHNIČKI MATERIJAL</h2>
            <div class="box">
                <a href="../Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx" class="image image-full">
                <img src="images/pic02.jpg" alt="" /></a> <span>olovke, fascikli, registratori</span>
            </div>            
        </div>

        <div class="boxC">
            <h2>
                REZERVNI DIJELOVI</h2>
            <div class="box">
                <a href="../Tablice/RezervniDijelovi/IspisRezDijelovi.aspx" class="image image-full">
                <img src="images/pic03.jpg" alt="" /></a> <span>crna metalurgija, obojeni metal</span>
            </div>            
        </div>

        <br />
        <div class="boxD">
            <h2>
                UREDSKI MATERIJAL</h2>
            <div class="box">
                <a href="../Tablice/UredskiMaterijal/IspisUredMaterijal.aspx" class="image image-full">
                <img src="images/pic01.jpg" alt="" /></a> <span>željezo, karburit, nodulator</span>
            </div>            
        </div>

        <div class="boxE">
            <h2>
                VANJSKE USLUGE NA IZRDI PROIZVODA</h2>
            <div class="box">
                <a href="../Tablice/VanjskeUsluge/IspisVanUsluge.aspx" class="image image-full">
                <img src="images/pic01.jpg" alt="" /></a> <span>željezo, karburit, nodulator</span>
            </div>            
        </div>

        <div class="boxF">
            <h2>
                POZIVI NATJEČAJA ZA INVESTICIJSKE PROJEKTE</h2>
            <div class="box">
                <a href="#" class="image image-full">
                <img src="images/pic01.jpg" alt="" /></a> <span>željezo, karburit, nodulator</span>
            </div>            
        </div>
    </div>

   
</asp:Content>
