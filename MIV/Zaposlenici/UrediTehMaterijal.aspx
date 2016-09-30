<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="UrediTehMaterijal.aspx.cs" Inherits="MIV.Zaposlenici.UrediTehMaterijal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="style4">
    
        <asp:Label ID="Label13" runat="server" Text="Lim"></asp:Label>
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
                        <asp:Label ID="lblNovoIDLim" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDLim" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoCMLim" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCMLim" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCMLim" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKvalLim" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKvalLim" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKvalLim" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolLim" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolLim" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolLim" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjerLim" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjerLim" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjerLim" runat="server" 
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
                            CRNA METALURGIJA</td>
                        <td>
                            KVALITETA MATERIJALA</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CM1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Kval1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Koli1" runat="server" CssClass="style7"></asp:TextBox>
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
                Text="Šipke okrugle"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView2_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView2_RowCancelingEdit" 
            onrowcommand="GridView2_RowCommand" onrowediting="GridView2_RowEditing" 
            onrowupdating="GridView2_RowUpdating" ShowFooter="True" CssClass="style3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoIDSO" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDSO" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoCMSO" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCMSO" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCMSO" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKvalSO" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKvalSO" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKvalSO" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolSO" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolSO" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolSO" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjerSO" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjerSO" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjerSO" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
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
                            CRNA METALURGIJA</td>
                        <td>
                            KVALITETA MATERIJALA</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CMSO" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KvalSO" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KoliSO" runat="server" CssClass="style7"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="MjeraSO" runat="server" CssClass="style6"></asp:TextBox>
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
        <asp:Label ID="Label15" runat="server" Text="Cijevi L=3m"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView3_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView3_RowCancelingEdit" 
            onrowcommand="GridView3_RowCommand" onrowediting="GridView3_RowEditing" 
            onrowupdating="GridView3_RowUpdating" ShowFooter="True" CssClass="style3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoIDCL3" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDCL3" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoCMCL3" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCMCL3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCMCL3" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKvalCL3" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKvalCL3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKvalCL3" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolCL3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolSCL3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolCL3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjerCL3" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjerCL3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjerCL3" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
                    <EditItemTemplate>
                        <asp:Button ID="ButtonUpdate1" runat="server" CommandName="Update" 
                            Text="Ažuriraj" />
                        <asp:Button ID="ButtonPrekid1" runat="server" CommandName="Cancel" 
                            Text="Prekid" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="InsertFooter1" runat="server" CommandName="Insert1" Text="Unesi" 
                            Width="63px" />
                        <asp:Button ID="ButtonBrisiFooter1" runat="server" CommandName="Clear1" 
                            Text="Očisti" Width="69px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi1" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi3" runat="server" CommandName="Delete" Text="Briši" 
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
                            CRNA METALURGIJA</td>
                        <td>
                            KVALITETA MATERIJALA</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CMCL3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KvalCL3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KoliCL3" runat="server" CssClass="style7"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="MjeraCL3" runat="server" CssClass="style6"></asp:TextBox>
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
        <asp:Label ID="Label16" runat="server" Text="Šipke kvadratne 3m"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView4_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView4_RowCancelingEdit" 
            onrowcommand="GridView4_RowCommand" onrowediting="GridView4_RowEditing" 
            onrowupdating="GridView4_RowUpdating" ShowFooter="True" CssClass="style3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoIDSK3" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDSK3" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoCMSK3" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCMSK3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCMCSK3" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKvalSK3" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKvalSK3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKvalSK3" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolSK3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolSK3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolSK3" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjerSK3" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjerSK3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjerSK3" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
                    <EditItemTemplate>
                        <asp:Button ID="ButtonUpdate2" runat="server" CommandName="Update" 
                            Text="Ažuriraj" />
                        <asp:Button ID="ButtonPrekid2" runat="server" CommandName="Cancel" 
                            Text="Prekid" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="InsertFooter2" runat="server" CommandName="Insert1" Text="Unesi" 
                            Width="63px" />
                        <asp:Button ID="ButtonBrisiFooter2" runat="server" CommandName="Clear1" 
                            Text="Očisti" Width="69px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi2" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi4" runat="server" CommandName="Delete" Text="Briši" 
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
                            CRNA METALURGIJA</td>
                        <td>
                            KVALITETA MATERIJALA</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CMSK3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KvalSK3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KoliSK3" runat="server" CssClass="style7"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="MjeraSK3" runat="server" CssClass="style6"></asp:TextBox>
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
        <asp:Label ID="Label17" runat="server" Text="Šipke šesterokutne"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView5_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView5_RowCancelingEdit" 
            onrowcommand="GridView5_RowCommand" onrowediting="GridView5_RowEditing" 
            onrowupdating="GridView5_RowUpdating" ShowFooter="True" CssClass="style3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoIDŠŠ" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDŠŠ" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoCMSK4" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCMŠŠ" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCMCŠŠ" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKvalŠŠ" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKvalŠŠ" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKvalŠŠ" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolŠŠ" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolŠŠ" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolŠŠ" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjerŠŠ" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjerŠŠ" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjerŠŠ" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
                    <EditItemTemplate>
                        <asp:Button ID="ButtonUpdate3" runat="server" CommandName="Update" 
                            Text="Ažuriraj" />
                        <asp:Button ID="ButtonPrekid3" runat="server" CommandName="Cancel" 
                            Text="Prekid" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="InsertFooter3" runat="server" CommandName="Insert1" Text="Unesi" 
                            Width="63px" />
                        <asp:Button ID="ButtonBrisiFooter3" runat="server" CommandName="Clear1" 
                            Text="Očisti" Width="69px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi3" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi5" runat="server" CommandName="Delete" Text="Briši" 
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
                            CRNA METALURGIJA</td>
                        <td>
                            KVALITETA MATERIJALA</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CMŠŠ" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KvalŠŠ" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="KoliŠŠ" runat="server" CssClass="style7"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="MjeraŠŠ" runat="server" CssClass="style6"></asp:TextBox>
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
        <asp:Label ID="Label18" runat="server" Text="Spojke za hidrante"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView6_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView6_RowCancelingEdit" 
            onrowcommand="GridView6_RowCommand" onrowediting="GridView6_RowEditing" 
            onrowupdating="GridView6_RowUpdating" ShowFooter="True" CssClass="style3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoIDspojke" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDspojke" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoCMspojke" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCMspojke" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCMCspojke" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKvalspojke" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKvalspojke" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKvalspojke" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolspojke" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolspojke" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolspojke" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjerspojke" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjerspojke" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjerspojke" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
                    <EditItemTemplate>
                        <asp:Button ID="ButtonUpdate4" runat="server" CommandName="Update" 
                            Text="Ažuriraj" />
                        <asp:Button ID="ButtonPrekid4" runat="server" CommandName="Cancel" 
                            Text="Prekid" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="InsertFooter4" runat="server" CommandName="Insert1" Text="Unesi" 
                            Width="63px" />
                        <asp:Button ID="ButtonBrisiFooter4" runat="server" CommandName="Clear1" 
                            Text="Očisti" Width="69px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi4" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi6" runat="server" CommandName="Delete" Text="Briši" 
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
                            CRNA METALURGIJA</td>
                        <td>
                            KVALITETA MATERIJALA</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CMspojke" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Kvalspojke" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Kolispojke" runat="server" CssClass="style7"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Mjeraspojke" runat="server" CssClass="style6"></asp:TextBox>
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
        <asp:Label ID="Label19" runat="server" Text="Žica za varenje"></asp:Label>
        <br />
    
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
            onrowdeleting="GridView7_RowDeleting" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcancelingedit="GridView7_RowCancelingEdit" 
            onrowcommand="GridView7_RowCommand" onrowediting="GridView7_RowEditing" 
            onrowupdating="GridView7_RowUpdating" ShowFooter="True" CssClass="style3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <EditItemTemplate>
                        <asp:Label ID="lblNovoIDžica" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIDžica" runat="server" Text='<%# Bind("[ID]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoCMžica" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterCMžica" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCMCžica" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKvalžica" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKvalžica" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKvalžica" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GODIŠNJA KOLIČINA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoKolžica" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterKolžica" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblKolžica" runat="server" 
                            Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxNovoMjeržica" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterMjeržica" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMjeržica" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operacije">
                    <EditItemTemplate>
                        <asp:Button ID="ButtonUpdate5" runat="server" CommandName="Update" 
                            Text="Ažuriraj" />
                        <asp:Button ID="ButtonPrekid5" runat="server" CommandName="Cancel" 
                            Text="Prekid" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="InsertFooter5" runat="server" CommandName="Insert1" Text="Unesi" 
                            Width="63px" />
                        <asp:Button ID="ButtonBrisiFooter5" runat="server" CommandName="Clear1" 
                            Text="Očisti" Width="69px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Button ID="ButtonUredi5" runat="server" CommandName="Edit" Text="Uredi" 
                            Width="62px" />
                        <asp:Button ID="ButtonBrisi7" runat="server" CommandName="Delete" Text="Briši" 
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
                            CRNA METALURGIJA</td>
                        <td>
                            KVALITETA MATERIJALA</td>
                        <td>
                            GODIŠNJA KOLIČINA</td>
                        <td>
                            JEDINICA MJERE</td>
                        <td>
                            Operacija</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CMžica" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Kvalžica" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Koližica" runat="server" CssClass="style7"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="Mjeražica" runat="server" CssClass="style6"></asp:TextBox>
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
