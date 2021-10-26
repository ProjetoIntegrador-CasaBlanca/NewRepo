<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Studenteport.aspx.cs" Inherits="Studenteport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 739px;
    }
        .style2
        {
            width: 202px;
        }
        .style3
        {
            text-align: right;
            color: black;
            width: 157px;
        }
        .style4
        {
            width: 561px;
        }
    .style5
    {
        text-align: right;
        color: black;
        width: 249px;
    }
        .auto-style3 {
            border: solid 1px #9b9b9b;
            background: #E1E1E1;
            margin-left: 0px;
        }
        .auto-style4 {
            text-align: right;
            color: black;
            width: 159px;
        }
        .auto-style5 {
            width: 219px;
        }
        .auto-style6 {
            text-align: right;
            color: black;
            width: 238px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Relatório de Usuários</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="style1">
                <tr>
                    <td class="auto-style4">
                        Nível/Área :
                    </td>
                    <td class="auto-style5">
                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="auto-style3">
                            </asp:DropDownList>
                            <asp:Button ID="Button11" runat="server" CssClass="btn" Text="Buscar" 
                                onclick="Button11_Click" />
                    </td>
                    <td class="lbl" align="left">
                            Nome :
                            <asp:TextBox ID="txtsearch" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:Button ID="btnseach" runat="server" CssClass="btn" 
                                onclick="btnseach_Click" Text="Buscar" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
                                <asp:MultiView ID="MultiView1" runat="server">
                                    <asp:View ID="View1" runat="server">
                                        <table class="tbl">
                                            <tr>
                                                <td class="tblhead">
                                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        BackColor="#EAEAEA" BorderColor="#D9D9D9" BorderWidth="1px" 
                                                        CellPadding="2" ForeColor="Black" GridLines="None" 
                                                        onrowcommand="GridView1_RowCommand" style="text-align: center" Width="748px">
                                                        <AlternatingRowStyle BackColor="lightgrey" />
                                                        <Columns>
                                                            <asp:BoundField DataField="StudentName" HeaderText="Nome" />
                                                            <asp:BoundField DataField="BranchName" HeaderText="Nível/Área" />
                                                            <asp:BoundField DataField="Mobile" HeaderText="Telefone" />
                                                            <asp:TemplateField HeaderText="Ver">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("sid") %>' 
                                                                        CssClass="lnk" Text="View"></asp:LinkButton>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <FooterStyle BackColor="Tan" />
                                                        <HeaderStyle BackColor="#ACACAC" Font-Bold="True" />
                                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                            HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <table class="tbl">
                                            <tr>
                                                <td class="tblhead">
                                                    Detalhes do Usuário</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table align="left" class="style4">
                                                        <tr>
                                                            <td class="auto-style6">
                                                                ID do Usuário: </td>
                                                            <td>
                                                                <asp:Label ID="lblid" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Nome:</td>
                                                            <td>
                                                                <asp:Label ID="lblname" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Telefone:</td>
                                                            <td>
                                                                <asp:Label ID="lblmobile" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Endereço:</td>
                                                            <td>
                                                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Cidade:</td>
                                                            <td>
                                                                <asp:Label ID="lblcity" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                CEP:</td>
                                                            <td>
                                                                <asp:Label ID="lblpin" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Data Nasc.:</td>
                                                            <td>
                                                                <asp:Label ID="lbldob" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Nível/Área:</td>
                                                            <td>
                                                                <asp:Label ID="lblbranch" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Email:
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblemai" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                Senha:</td>
                                                            <td>
                                                                <asp:Label ID="lblpass" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style6">
                                                                &nbsp;</td>
                                                            <td>
                                                                <asp:Button ID="Button12" runat="server" CssClass="btn" 
                                                                    onclick="Button12_Click" Text="Voltar" Width="80px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </asp:MultiView>
        </td>
    </tr>
    <tr>
        <td>
                                &nbsp;</td>
    </tr>
</table>
</asp:Content>

