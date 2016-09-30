<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="UrediVanjskeUsluge.aspx.cs" Inherits="MIV.Zaposlenici.UrediVanjskeUsluge" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowcommand="GridView1_RowCommand" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" ShowFooter="True" CssClass="style4">
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
                <asp:TemplateField HeaderText="USLUGA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoUsluga" runat="server" 
                            Text='<%# Bind("USLUGA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterUsluga" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblUsluga" runat="server" 
                            Text='<%# Bind("USLUGA") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OPIS">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoOpis" runat="server" 
                            Text='<%# Bind("OPIS") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterOpis" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblOpis" runat="server" 
                            Text='<%# Bind("OPIS") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjera" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjera" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjera" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
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
                        <td class="style3">
                            USLUGA</td>
                        <td class="style3">
                            OPIS</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="Usluga" runat="server"></asp:TextBox>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="Opis" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Mjera" runat="server"></asp:TextBox>
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
