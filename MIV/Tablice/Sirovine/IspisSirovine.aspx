<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="IspisSirovine.aspx.cs" Inherits="MIV.Tablice.Sirovine.Sirovine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="sirovine.css" rel="stylesheet" type="text/css" media="all" />
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

<div>
       
        <br />    
        <asp:Label ID="Label9" CssClass="PNaslovi" runat="server" Text="Sirovine za talionicu"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataSourceID="SqlDataSource1" 
             DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDTAL" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SIROVINE ZA TALIONICU" 
                    SortExpression="SIROVINE ZA TALIONICU">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA TALIONICU]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA TALIONICU]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ATEST STL-lista KEMIJSKI SASTAV" 
                    SortExpression="ATEST_STL-lista_KEMIJSKI SASTAV:">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MIV %>" 
            SelectCommand="SELECT * FROM [SirovineZaTalionicu]"></asp:SqlDataSource>

        <br />
        <br />
        <asp:Label ID="Label10" runat="server" CssClass="PNaslovi" Text="Sirovine za kaluparsku i jezgrenu mješavinu"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataSourceID="SqlDataSource2" 
            ForeColor="#333333" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDKIJ" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU" 
                    SortExpression="SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ATEST STL-lista KEMIJSKI SASTAV" 
                    SortExpression="ATEST_STL-lista_KEMIJSKI SASTAV:">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MIV %>" 
            SelectCommand="SELECT * FROM [SirovineKalupJezgra]"></asp:SqlDataSource>
    
        <asp:Button ID="button" runat="server" onclick="Button1_Click" Text="Završi" 
            CssClass="myButton" />
    
        <br />
        <asp:HyperLink ID="IzmjSirovine" runat="server" 
            NavigateUrl="~/Zaposlenici/UrediSirovine.aspx">Izmjeni sirovine</asp:HyperLink>
    
    </div>
</asp:Content>
