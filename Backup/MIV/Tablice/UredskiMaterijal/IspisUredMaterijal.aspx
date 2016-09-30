<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="IspisUredMaterijal.aspx.cs" Inherits="MIV.Tablice.UredskiMaterijal.IspisUredMaterijal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="uredmat.css" rel="stylesheet" type="text/css" media="all" />
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
            <asp:Label ID="LabelKuverte" CssClass="PNaslovi" runat="server" Text="Kuverte"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="Kuverte" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDKuverte" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KUVERTE" SortExpression="KUVERTE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("KUVERTE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKuverte" runat="server" Text='<%# Bind("KUVERTE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DIMENZIJE" SortExpression="DIMENZIJE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DIMENZIJE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="DimKuverte" runat="server" Text='<%# Bind("DIMENZIJE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolKuverte" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraKuverte" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Kuverte1" runat="server" />
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
            <asp:SqlDataSource ID="Kuverte" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [UrMatKuverte]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label5" CssClass="PNaslovi" runat="server" Text="Fascikli"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="Fascikli" ForeColor="#333333" 
               CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDFascikli" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FASCIKLI" SortExpression="FASCIKLI">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FASCIKLI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFascikli" runat="server" Text='<%# Bind("FASCIKLI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DIMENZIJE" SortExpression="DIMENZIJE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DIMENZIJE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="DimFascikli" runat="server" Text='<%# Bind("DIMENZIJE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolFascikli" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraFascikli" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Fascikli1" runat="server" />
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
            <asp:SqlDataSource ID="Fascikli" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [UrMatFascikli]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label6" CssClass="PNaslovi" runat="server" Text="Registratori"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="Registratori" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDReg" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="REGISTRATORI" SortExpression="REGISTRATORI">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("REGISTRATORI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblReg" runat="server" Text='<%# Bind("REGISTRATORI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DIMENZIJE" SortExpression="DIMENZIJE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DIMENZIJE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="DimReg" runat="server" Text='<%# Bind("DIMENZIJE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolReg" runat="server" Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraReg" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Reg1" runat="server" />
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
            <asp:SqlDataSource ID="Registratori" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [UrMatRegistratori]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label7" CssClass="PNaslovi" runat="server" Text="Papir"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="Papir" ForeColor="#333333" 
               CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDPapir" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PAPIR " SortExpression="PAPIR ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PAPIR") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblPapir" runat="server" Text='<%# Bind("PAPIR") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KARAKTERISTIKE" SortExpression="KARAKTERISTIKE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("KARAKTERISTIKE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KarPapir" runat="server" Text='<%# Bind("KARAKTERISTIKE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolPapir" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraPapir" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Papir1" runat="server" />
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
            <asp:SqlDataSource ID="Papir" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [UrMatPapir]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label8" CssClass="PNaslovi" runat="server" Text="Obrasci"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="Obrasci" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDObrasci" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OBRASCI" SortExpression="OBRASCI">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OBRASCI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblObrasci" runat="server" Text='<%# Bind("OBRASCI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KARAKTERISTIKE" SortExpression="KARAKTERISTIKE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("KARAKTERISTIKE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KarObrasci" runat="server" Text='<%# Bind("KARAKTERISTIKE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolObrasci" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraObrasci" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Obrasci1" runat="server" />
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
            <asp:SqlDataSource ID="Obrasci" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [UrMatObrasci]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label9" CssClass="PNaslovi" runat="server" Text="Pisaći Probor"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="PisaciPribor" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDPribor" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PISAĆI PRIBOR" SortExpression="PISAĆI PRIBOR">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("[PISAĆI PRIBOR]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblPribor" runat="server" Text='<%# Bind("[PISAĆI PRIBOR]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KARAKTERISTIKE" SortExpression="KARAKTERISTIKE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("KARAKTERISTIKE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KarPribor" runat="server" Text='<%# Bind("[PISAĆI PRIBOR]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolPribor" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraPribor" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Pribor1" runat="server" />
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
            <asp:SqlDataSource ID="PisaciPribor" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [UrMatPisaciPribor]">
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label10" CssClass="PNaslovi" runat="server" Text="Ostalo"></asp:Label>
            <br />
            <br />
        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="Ostalo" ForeColor="#333333" 
                CssClass="mGrid"  PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDOstalo" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OSTALO" SortExpression="OSTALO">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OSTALO") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblOstalo" runat="server" Text='<%# Bind("OSTALO") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KARAKTERISTIKE" SortExpression="KARAKTERISTIKE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("KARAKTERISTIKE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KarOstalo" runat="server" Text='<%# Bind("KARAKTERISTIKE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA" 
                    SortExpression="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="KolOstalo" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="MjeraOstalo" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Ostalo1" runat="server" />
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
            <asp:SqlDataSource ID="Ostalo" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                SelectCommand="SELECT * FROM [UrMatOstalo]">
            </asp:SqlDataSource>
            <br />
            <br />
        <asp:Button ID="Button1" runat="server" Text="Završi" onclick="Button1_Click" 
                CssClass="myButton" Height="34px" Width="225px" /><br />
            <asp:HyperLink ID="UredTehMaterijal" runat="server" CssClass="Prelazak"
                NavigateUrl="~/Zaposlenici/UrediSirovine.aspx">Uredi Tehnički Materijal</asp:HyperLink>
            <br />
        </div>       
     </div>
</asp:Content>
