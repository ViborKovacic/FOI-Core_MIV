<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="UrediKorisnike.aspx.cs" Inherits="MIV.Zaposlenici.UrediKorisnike" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="style2">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowcommand="GridView1_RowCommand" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ime">
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoIme" runat="server" Text='<%# Bind("Ime") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterIme" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIme" runat="server" Text='<%# Bind("Ime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prezime">
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoPrezime" runat="server" 
                            Text='<%# Bind("Prezime") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterPrezime" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblPrezime" runat="server" Text='<%# Bind("Prezime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobitel">
                    <ItemTemplate>
                        <asp:Label ID="lblMobitel" runat="server" Text='<%# Bind("Mobitel") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoMobitel" runat="server" Text='<%# Bind("Mobitel") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMobitel" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Telefon">
                    <ItemTemplate>
                        <asp:Label ID="lblTelefon" runat="server" Text='<%# Bind("Telefon") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoTelefon" runat="server" Text='<%# Bind("Telefon") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterTelefon" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ime poduzeća">
                    <ItemTemplate>
                        <asp:Label ID="lblImePoduz" runat="server" Text='<%# Bind("[Ime poduzeća]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoImePoduz" runat="server" 
                            Text='<%# Bind("[Ime poduzeća]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterImePoduz" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ulica">
                    <ItemTemplate>
                        <asp:Label ID="lblUlica" runat="server" Text='<%# Bind("Ulica") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoUlica" runat="server" Text='<%# Bind("Ulica") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterUlica" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kućni broj">
                    <ItemTemplate>
                        <asp:Label ID="lblKucniBr" runat="server" Text='<%# Bind("[Kućni broj]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoKucniBr" runat="server" Text='<%# Bind("[Kućni broj]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKucniBr" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Poštanski broj">
                    <ItemTemplate>
                        <asp:Label ID="lblPostBr" runat="server" Text='<%# Bind("[Poštanski broj]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoPostBr" runat="server" 
                            Text='<%# Bind("[Poštanski broj]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterPostBr" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mjesto">
                    <ItemTemplate>
                        <asp:Label ID="lblMjesto" runat="server" Text='<%# Bind("Mjesto") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoMjesto" runat="server" Text='<%# Bind("Mjesto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjesto" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Država">
                    <FooterTemplate>
                        <asp:DropDownList ID="FooterDrzava" runat="server" DataSourceID="Drzava1" 
                            DataTextField="Države" DataValueField="Države" 
                            SelectedValue='<%# Bind("[Odaberite državu]") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Drzava1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MIV %>" 
                            SelectCommand="SELECT * FROM [Drzave]"></asp:SqlDataSource>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDrzava" runat="server" Text='<%# Bind("Država") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="NovoDrzava" runat="server" DataSourceID="Drzava" 
                            DataTextField="Države" DataValueField="Države" 
                            SelectedValue='<%# Bind("Država") %>' CssClass="style1" Height="17px" 
                            Width="80px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Drzava" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MIV %>" 
                            SelectCommand="SELECT * FROM [Drzave]"></asp:SqlDataSource>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Korisničko ime">
                    <ItemTemplate>
                        <asp:Label ID="lblKorIme" runat="server" Text='<%# Bind("[Korisničko ime]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoKorIme" runat="server" 
                            Text='<%# Bind("[Korisničko ime]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKorIme" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lozinka">
                    <ItemTemplate>
                        <asp:Label ID="lblLozinka" runat="server" Text='<%# Bind("Lozinka") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoLozinka" runat="server" Text='<%# Bind("Lozinka") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterLozinka" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="email">
                    <ItemTemplate>
                        <asp:Label ID="lblemail" runat="server" Text='<%# Bind ("[E-mail]") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="Novoemail" runat="server" Text='<%# Bind ("[E-mail]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="Footeremail" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tip">
                    <EditItemTemplate>
                        <asp:TextBox ID="NovoTip" runat="server" Text='<%# Bind("Tip") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterTip" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblTip" runat="server" Text='<%# Bind("Tip") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi" runat="server" CommandName="Delete" Text="Briši" 
                            Width="70px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="ButtonUpdate" runat="server" CommandName="Update" 
                            Text="Ažuriraj" />
                        <asp:Button ID="ButtonPrekid" runat="server" CommandName="Cancel" 
                            Text="Prekid" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="InsertFooter" runat="server" CommandName="Insert1" Text="Unesi" 
                            Width="63px" />
                        <asp:Button ID="ButtonBrisiFooter" runat="server" CommandName="Clear1" 
                            Text="Očisti" Width="69px" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                Baza je prazna!!!<br />
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            Ime</td>
                        <td>
                            Prezime</td>
                        <td>
                            Mobitel</td>
                        <td>
                            Telefon</td>
                        <td>
                            Ime poduzeća</td>
                        <td>
                            Ulica</td>
                        <td>
                            Kućni broj</td>
                        <td>
                            Poštanski broj</td>
                        <td>
                            Mjesto</td>
                        <td>
                            Država</td>
                        <td>
                            Korisničko ime</td>
                        <td>
                            Lozinka</td>
                        <td>
                            email</td>
                        <td>
                            Tip</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="Ime1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Prezime1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Mobitel1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Telefon1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="ImePod1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Ulica1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KucniBr1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="PostBr1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Mjesto1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="Države" 
                                DataValueField="Države">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MIV %>" 
                                SelectCommand="SELECT * FROM [Drzave]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:TextBox ID="KorIme1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Lozinka1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="email1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Tip1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="ButtonUnesi" runat="server" CommandName="Insert" Text="Unesi" />
                            <asp:Button ID="ButtonBrisi1" runat="server" CommandName="Clear" Text="Očisti" 
                                Width="60px" />
                        </td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </div>
</asp:Content>
