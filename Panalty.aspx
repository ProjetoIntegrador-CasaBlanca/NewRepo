<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Panalty.aspx.cs" Inherits="Panalty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 747px;
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
        .style16
        {
            text-align: right;
            color: black;
            width: 153px;
        }
    .auto-style2 {
        text-align: right;
        color: black;
        width: 174px;
        height: 22px;
    }
    .auto-style3 {
        height: 22px;
    }
    .auto-style4 {
        text-align: right;
        color: black;
        width: 174px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Formulário de Advertência</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="lbl">
                            Selecione o usuário :</td>
                        <td>
                            <asp:DropDownList ID="drpstudent" runat="server" CssClass="txt" 
                                AutoPostBack="True" onselectedindexchanged="drpstudent_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td class="lbl">
                            Selecione o livro:
                        </td>
                        <td>
                            <asp:DropDownList ID="drpbook" runat="server" CssClass="txt">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="Button12" runat="server" CssClass="btn" 
                                onclick="Button12_Click" Text="Ver" Width="70px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View2" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                Detalhes do Livro</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="style4">
                                    <tr>
                                        <td class="style5" colspan="2">
                                            Livro :
                                            <asp:Label ID="lblbname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style6">
                                            <asp:Image ID="Image2" runat="server" Height="211px" Width="207px" 
                                                BorderColor="#009933" BorderStyle="Dotted" BorderWidth="1px" />
                                        </td>
                                        <td class="style8" valign="top">
                                            <table class="style7">
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Autor :</td>
                                                    <td>
                                                        <asp:Label ID="lblauthor" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Editora :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpub" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Nível/Área:
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblbran" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Valor:
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Nome do usuário : </td>
                                                    <td>
                                                        <asp:Label ID="lblstudent" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Dias :</td>
                                                    <td>
                                                        <asp:Label ID="lbldays" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Data Empréstimo :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblidate" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style2" style="font-size: medium">
                                                        Status de Restrição :
                                                    </td>
                                                    <td class="auto-style3">
                                                        <asp:Label ID="lblpanalty" runat="server"></asp:Label>
                                                    </td>
                                                    <td class="auto-style3">
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Valor da multa :</td>
                                                    <td>
                                                        <asp:TextBox ID="txtpanalty" runat="server" CssClass="txt" Width="80px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        Motivo :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="40px" 
                                                            TextMode="MultiLine" Width="200px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style4" style="font-size: medium">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Button ID="btnpaypanalty" runat="server" CssClass="btn" 
                                                            onclick="btnpaypanalty_Click" Text="Liberar" Width="90px" />
                                                        <asp:Label ID="lblpay" runat="server" Font-Size="10pt"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
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

