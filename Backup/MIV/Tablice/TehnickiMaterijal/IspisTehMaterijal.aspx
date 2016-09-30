<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="IspisTehMaterijal.aspx.cs" Inherits="MIV.Tablice.TehnickiMaterijal.IspisTehMaterijal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="tehmaterijal.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
   
<script type='text/javascript'>
    $(function () {
        var nav = $('#cssmenu');
        var navHomeY = nav.offset().top;
        var isFixed = false;
        var $w = $(window);
        $w.scroll(function () {
            var scrollTop = $w.scrollTop();
            var shouldBeFixed = scrollTop > navHomeY;
            if (shouldBeFixed && !isFixed) {
                nav.css({
                    position: 'fixed',
                    top: 0,
                    left: nav.offset().left,
                    width: nav.width()
                });
                isFixed = true;
            }
            else if (!shouldBeFixed && isFixed) {
                nav.css({
                    position: 'static'
                });
                isFixed = false;
            }
        });
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id='cssmenu'>
<ul>
   <li><a href='#'><span>Sirovine</span></a>
            <ul>
               <li><a href='http://localhost:61142/Tablice/Sirovine/IspisSirovine.aspx'><span>Sirovine za talionicu</span></a></li>
               <li class='last'><a href='http://localhost:61142/Tablice/Sirovine/IspisSirovine.aspx'><span>Sirovine za kaluparsku i jezgrenu mješavinu</span></a></li>
            </ul>
    </li>
   <li><a href='#'><span>Tehnički matrijal</span></a>
      <ul>
         
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Lim</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Šipke okrugle</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Cijevi L=3m</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Šipke kvadratne L=3m</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Šipke šesterokutne</span></a></li>
               <li><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Spojke za hidrante</span></a></li>
               <li class='last'><a href='http://localhost:61142/Tablice/TehnickiMaterijal/IspisTehMaterijal.aspx'><span>Žica za varanje</span></a></li>
      </ul>
    </li>
         
   <li><a href='http://localhost:61142/Tablice/RezervniDijelovi/IspisRezDijelovi.aspx"'><span>Rezervni dijelovi</span></a></li>

   <li><a href='#'><span>Uredski matrijal</span></a>
       <ul>
         
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Kuverte</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Fascikli</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Registratori</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Papir</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Obrasci</span></a></li>
               <li><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Pisači pribor</span></a></li>
               <li class='last'><a href='http://localhost:61142/Tablice/UredskiMaterijal/IspisUredMaterijal.aspx'><span>Ostalo</span></a></li>
      </ul>
   </li>
   <li class='last'><a href='http://localhost:61142/Tablice/VanjskeUsluge/IspisVanUsluge.aspx'><span>Vanjske usluge</span></a></li>
</ul>
</div>

<div class="style2">
        <div id="tablica">
            <br />
            <asp:Label ID="LabelLim" CssClass="PNaslovi" runat="server" Text="LIM"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSourceLim" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="CrnMetLim" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KvalitetaLim" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolLim" runat="server" Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraLim" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Lim" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceLim" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [TehMaterijalLim]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label5" CssClass="PNaslovi" runat="server" Text="Šipke Okrugle"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="ŠipkeOkrugle" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDŠok" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="CrnaMetŠipOk" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KvalitetaŠipkOk" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolicinaŠipkOk" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraŠipkOk" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="ŠipkOk" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <asp:SqlDataSource ID="ŠipkeOkrugle" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [TehMaterijalŠipkeOkrugle]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label6" CssClass="PNaslovi" runat="server" Text="CIJEVI L=3m"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="CijeviL3m" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDCije" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OBOJENI MATERIJAL" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="ObojMetCijev3m" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KvalCijev3m" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolCijev3m" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraCijev3m" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Cijev3m" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <asp:SqlDataSource ID="CijeviL3m" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [TehMaterijalCijevi L=3m]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label7" CssClass="PNaslovi" runat="server" Text="ŠIPKE KVADRATNE L=3m"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="ŠipkeKvadL3m" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDKvad" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OBOJENI MATERIJAL" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="OMetalŠKvad3m" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KvalŠKvad3m" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolŠKvad3m" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraŠKvad3m" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="ŠKvad3m" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <asp:SqlDataSource ID="ŠipkeKvadL3m" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [TehMaterijalŠipKvad L=3m]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label8" CssClass="PNaslovi" runat="server" Text="ŠIPKE ŠESTEROKUTNE"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="ŠipkeŠester" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDŠest" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OBOJENI MATERIJAL" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="OMetalŠipŠest" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KvalŠipŠest" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolŠipŠest" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraŠipŠest" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="ŠipŠest" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <asp:SqlDataSource ID="ŠipkeŠester" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [TehMaterijalŠipŠesterokutne]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label9" CssClass="PNaslovi" runat="server" Text="SPOJKE ZA HIDRANTE"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SpojkaZaHid" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDSH" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SPOJKE ZA HIDRANTE" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="SpojZaHid" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KvalSpojZaHid" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolSpojZaHid" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraSpojZaHid" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="SpojZaHidCh" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <asp:SqlDataSource ID="SpojkaZaHid" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [TehMaterijalSpojZaHidrante]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label10" CssClass="PNaslovi" runat="server" Text="ŽICA ZA VARENJE"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="ŽicZaVarenje" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDž" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ŽICA ZA VARENJE" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="ŽicZaVar" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KvalŽicZaVar" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolŽicZaVar" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraŽicZaVar" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="ŽicZaVarCh" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            <asp:SqlDataSource ID="ŽicZaVarenje" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [TehMaterijalŽicZaVarenje]">
            </asp:SqlDataSource>
            <br />
            <br />
        <asp:Button ID="myButton" runat="server" Text="Završi" onclick="Button1_Click" 
                 CssClass="myButton" /><br />
            <asp:HyperLink ID="UredTehMaterijal" CssClass="Prelazak" runat="server" 
                NavigateUrl="~/Zaposlenici/UrediSirovine.aspx">Uredi Tehnički Materijal</asp:HyperLink>
            <br />
           </div>       
     </div>
</asp:Content>
