<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Issuereport.aspx.cs" Inherits="Issuereport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
    {
        width: 739px;
    }
        .style3
        {
            text-align: right;
            color: black;
            width: 157px;
        }
        .style2
        {
            width: 202px;
        }
        .auto-style1 {
        border: solid 1px #9b9b9b;
        background: #E1E1E1;
        margin-left: 3px;
    }
    .auto-style2 {
        text-align: right;
        color: black;
        width: 213px;
    }
    .auto-style3 {
        width: 174px;
    }
        .auto-style4 {
            height: 22px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Relatório de Empréstimos</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            <table class="style1">
                <tr>
                    <td class="auto-style2">
                        <br />
                        Buscar por Nível/Área :
                    </td>
                    <td class="auto-style3">
                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="auto-style1" 
                                AutoPostBack="True" onselectedindexchanged="drpbranch_SelectedIndexChanged" Height="19px">
                            </asp:DropDownList>
                    </td>
                    <td class="lbl">
                            Buscar por Usuário :<asp:DropDownList ID="drpstudent" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            &nbsp;<asp:Button ID="btnseach" runat="server" CssClass="btn" 
                                onclick="btnseach_Click" Text="Ver" />
                    </td>
                </tr>
            </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
        </tr>
        <tr>
            <td style="text-align: center">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BackColor="#EAEAEA" BorderColor="#D9D9D9" BorderWidth="1px" 
                                        CellPadding="2" ForeColor="Black" GridLines="None" style="text-align: center" 
                                        Width="750px">
                                        <AlternatingRowStyle BackColor="lightgrey" />
                                        <Columns>
                                            <asp:BoundField DataField="bookname" HeaderText="Nome" />
                                            <asp:BoundField DataField="issuedate" HeaderText="Data de Empréstimo" />
                                            <asp:BoundField DataField="days" HeaderText="Dias" />
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <HeaderStyle BackColor="lightgrey" Font-Bold="True" />
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
</asp:Content>

