<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="UrediSirovine.aspx.cs" Inherits="MIV.Zaposlenici.UrediSirovine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="style4">
    
        <asp:Label ID="Label13" runat="server" Text="Sirovine za talionicu"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowcommand="GridView1_RowCommand" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" ShowFooter="True" CssClass="style3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDtal" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SIROVINE ZA TALIONICU">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoTal" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA TALIONICU]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterTal" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblTal" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA TALIONICU]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ATEST STL-lista KEMIJSKI SASTAV">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoAtTal" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterAtTal" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAtTal" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolTal" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolTal" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolTal" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjerTal" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjerTal" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjerTal" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
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
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi" runat="server" CommandName="Delete" Text="Briši" 
                            Width="70px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                Baza je prazna!!!<br />
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            SIROVINE ZA TALIONICU</td>
                        <td>
                            ATEST STL-lista KEMIJSKI SASTAV</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="Tal1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Atest1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Kol1" runat="server" CssClass="style7"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Mjera1" runat="server" CssClass="style6"></asp:TextBox>
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
    
        <br />
        <asp:Label ID="Label14" runat="server" 
                Text="Sirovine za kaluparsku i jezgrenu mješavinu"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView2_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView2_RowCancelingEdit" 
            onrowcommand="GridView2_RowCommand" onrowediting="GridView2_RowEditing" 
            onrowupdating="GridView2_RowUpdating" ShowFooter="True" CssClass="style5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoKiJ" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDkij" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKiJ" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKiJ" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKiJ" runat="server" 
                            Text='<%# Bind("[SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ATEST STL-lista KEMIJSKI SASTAV">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoAtKij" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterAtKij" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAtKij" runat="server" 
                            Text='<%# Bind("[ATEST_STL-lista_KEMIJSKI SASTAV:]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolKiJ" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolKiJ" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolKiJ" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjeKiJ" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjeKiJ" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjeKiJ" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
                    <EditItemTemplate>
                        <asp:Button ID="ButtonUpdate0" runat="server" CommandName="Update" 
                            Text="Ažuriraj" />
                        <asp:Button ID="ButtonPrekid0" runat="server" CommandName="Cancel" 
                            Text="Prekid" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="InsertFooter0" runat="server" CommandName="Insert1" Text="Unesi" 
                            Width="63px" />
                        <asp:Button ID="ButtonBrisiFooter0" runat="server" CommandName="Clear1" 
                            Text="Očisti" Width="69px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi0" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi2" runat="server" CommandName="Delete" Text="Briši" 
                            Width="70px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                Baza je prazna!!!<br />
                <br />
                <table class="style1">
                    <tr>
                        <td>
                            SIROVINE ZA KALUPARSKU I JEZGRENU MJEŠAVINU</td>
                        <td>
                            ATEST STL-lista KEMIJSKI SASTAV</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="KiJ1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="AteKiJ" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KolKij" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="MjerKiJ" runat="server"></asp:TextBox>
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
