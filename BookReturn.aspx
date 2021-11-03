<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookReturn.aspx.cs" Inherits="BookReturn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style1
    {
        width: 746px;
    }
        .style4
        {
            width: 717px;
            height: 276px;
        }
        .style5
        {
            font-weight: 700;
        }
        .style6
        {
            width: 216px;
        }
        .style8
        {
            height: 183px;
        }
        .style7
        {
            width: 452px;
            height: 222px;
        }
        .style14
        {
            text-align: right;
            color: black;
            width: 136px;
        }
        .auto-style1 {
            text-align: right;
            color: black;
            width: 154px;
        }
        .auto-style2 {
        text-align: right;
        color: black;
        width: 154px;
        font-size: medium;
    }
        .auto-style3 {
            background: #ff6600;
            color: #fff;
            font-weight: bold;
            border: solid 2px black;
            cursor: pointer;
            transition: background-color 1s ease;
            background: #ff6600;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Devolução</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            <table class="style1">
                <tr>
                    <td class="lbl">
                        Usuário :
                            <asp:DropDownList ID="drppublication" runat="server" CssClass="txt" 
                            AutoPostBack="True" 
                            onselectedindexchanged="drppublication_SelectedIndexChanged">
                                
                            </asp:DropDownList>
                    </td>
                    <td class="lbl">
                        Livro:
                    </td>
                    <td>
                        <asp:DropDownList ID="drpbook" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button12" runat="server" CssClass="btn" 
                            onclick="Button12_Click" Text="Buscar" Width="55px" Height="30px" />
                    </td>
                </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View2" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                Detalhe do Livro</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="style4">
                                    <tr>
                                        <td class="style5" colspan="2">
                                            Nome do Livro :
                                            <asp:Label ID="lblbname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            <asp:Image ID="Image2" runat="server" Height="211px" Width="207px" 
                                                BorderColor="white" BorderStyle="Dotted" BorderWidth="1px" />
                                        </td>
                                        <td class="style8" valign="top">
                                            <table class="style7">
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Autor :</td>
                                                    <td>
                                                        <asp:Label ID="lblauthor" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        Editora :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpub" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        Nível/Área:</td>
                                                    <td>
                                                        <asp:Label ID="lblbran" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        Valor:</td>
                                                    <td>
                                                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        Usuário:</td>
                                                    <td>
                                                        <asp:Label ID="lblstudent" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        Dias</td>
                                                    <td>
                                                        <asp:Label ID="lbldays" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2">
                                                        Data Empréstimo:</td>
                                                    <td>
                                                        <asp:Label ID="lblidate" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style1" style="font-size: medium">
                                                        &nbsp;Status Restrição :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpanalty" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            &nbsp;</td>
                                        <td valign="top">
                                            <asp:Button ID="btnreturnbook" runat="server" CssClass="btn" 
                                                onclick="btnreturnbook_Click" Text="DEVOLVER" Width="120px" />
                                            &nbsp;<asp:Label ID="lblbook" runat="server" Font-Size="10pt"></asp:Label>
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
    </table>
</asp:Content>

