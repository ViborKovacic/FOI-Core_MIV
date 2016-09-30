<%@ Page Title="" Language="C#" MasterPageFile="~/Glavna.Master" AutoEventWireup="true" CodeBehind="Zavrsetak.aspx.cs" Inherits="MIV.Tablice.TehnickiMaterijal.PDF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSourcePomocna" CssClass="style11" DataKeyNames="ID">
            <Columns>
                <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID" 
                    Visible="False">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CRNA METALURGIJA" 
                    SortExpression="CRNA METALURGIJA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" 
                            Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("[CRNA METALURGIJA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="KVALITETA MATERIJALA" 
                    SortExpression="KVALITETA MATERIJALA">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("[KVALITETA MATERIJALA]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" 
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
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("[GODIŠNJA KOLIČINA]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JEDINICA MJERE" SortExpression="JEDINICA MJERE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" 
                            Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("[JEDINICA MJERE]") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcePomocna" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MIV %>" 
            SelectCommand="SELECT * FROM [Pomocna3]"></asp:SqlDataSource>
    
        <table class="style3">
            <tr>
                <td class="style4">
                    <asp:Label ID="LabelCijena" runat="server" Text="Cijena:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="TextBoxCijena" runat="server" CssClass="style9" Width="99px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownListValuta" runat="server">
                        <asp:ListItem>Unesite valutu</asp:ListItem>
                        <asp:ListItem>kn</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxCijena" ErrorMessage="Unesite cijenu" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownListValuta" ErrorMessage="Odaberite valutu" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="LabelIsporuka" runat="server" Text="Rok isporuke:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="TextBoxRokIsporuke" runat="server" Width="200px" 
                        TextMode="Date"></asp:TextBox>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="LabelPlacanje" runat="server" Text="Rok i način plaćanja:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="TextBoxPlacanje" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Način plaćanja</asp:ListItem>
                        <asp:ListItem>Gotovina</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>American</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxPlacanje" ErrorMessage="Unesite rok plaćanja" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Odaberite način plaćanja" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="LabelNapomena" runat="server" Text="Napomena:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="TextBoxNapomena" runat="server" CssClass="style10" 
                        Height="195px" Width="310px"></asp:TextBox>
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style6">
    
        <asp:Button ID="ButtonPosalji" runat="server" CssClass="style2" 
            onclick="ButtonPosalji_Click" Text="Pošalji" />
    
                </td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
   
   
</asp:Content>
